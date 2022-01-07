Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id CH6RM0HS2GH3SAQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 23:52:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 44BD8C17D0;
	Fri,  7 Jan 2022 23:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641599550;
	bh=DGuZ2SWOjC5dCaPtcOW3vUSwuh/P+4b5fGRE37r/se0=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=FcBIFMbuSsS2LCz+GEDVTUfkkqNJNGJ2tVRCD71WIyiTnoc2SMtAIwiTyONzbarE2
	 TcWGFnfh0S5xBkb+MElEPAfyb9mJqa2RxWXlCbFI64EpCVFb81qf1+FTKAutSBGfZf
	 7qLPVhKd4ZlV5TY16wvVAkNtEKjmi/kqqEVopWS3wjvlOLw6nLzi5U1r+CgrlhlXyb
	 lKEPqERBpuWecwMo/2sYZ0UbDGt2AxueBY2rsDeHoIb3Psk94lZT8TAK4BZMjJiLQ0
	 Fncq70NmIxack58733im9kyCyRDWjqmQvwbuahAHVhPwkNKO/7ofZcSJOOm6DA2s6d
	 gv/DeEJD+w5Hw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id C4678C17FE;
 Fri,  7 Jan 2022 23:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641599545;
 bh=6dINe/Ru1XGBNLiae0G4gHa1KVo6kEhIgSgFZOG67DU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mVeosqw9AlcME48l3UnC9ewWKsNVgoXmQ+a8gccDZQslIB0qe/453l36SmO92cv9C
 3GWZ0f6aZ+bkwgr3Bfw1bSWs6FKkcjvIti3ulgU/Qwb3p+lNvtqAyq693Cm6yNP/Yo
 HtFal1Be9uSMK3dMr92vlFJlUJPjCXK11WmUQd45Nu54RHqoa5Tj4961oSUdsE+9K7
 sPbRdACjVe434WwB9aWscINkM3ILYsfPM1p6BEjGmxtwJ0Hz9iWlof8eii8vnUQ1X+
 ozTKRCjU0XOi6tqgjeApHk2H5PSTPV/ZZUcooBzDnlrWQxbkPRbq/ivaCHWe/Q4KRb
 CeEhN+GiZazUA==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
Subject: [PATCH v1 2/3] x86/entry/64: Add info about registers on exit
Date: Sat,  8 Jan 2022 06:52:09 +0700
Message-Id: <20220107235210.1339168-3-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
References: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
MIME-Version: 1.0
X-BeenThere: gwml@gnuweeb.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: GNU/Weeb Mailing List <gwml.gnuweeb.org>
List-Unsubscribe: <https://gwml.gnuweeb.org/options/gwml>,
 <mailto:gwml-request@gnuweeb.org?subject=unsubscribe>
List-Archive: <http://gwml.gnuweeb.org/pipermail/gwml/>
List-Post: <mailto:gwml@gnuweeb.org>
List-Help: <mailto:gwml-request@gnuweeb.org?subject=help>
List-Subscribe: <https://gwml.gnuweeb.org/listinfo/gwml>,
 <mailto:gwml-request@gnuweeb.org?subject=subscribe>
Reply-To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, Michael Matz <matz@suse.de>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>, x86-ml <x86@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

There was a controversial discussion about the wording in the System
V ABI document regarding what registers the kernel is allowed to
clobber when the userspace executes syscall.

The resolution of the discussion was reviewing the clobber list in
the glibc source. For a historical reason in the glibc source, the
kernel must restore all registers before returning to the userspace
(except for rax, rcx and r11).

Link: https://lore.kernel.org/lkml/alpine.LSU.2.20.2110131601000.26294@wotan.suse.de/
Link: https://gitlab.com/x86-psABIs/x86-64-ABI/-/merge_requests/25

This adds info about registers on exit.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Michael Matz <matz@suse.de>
Cc: "H.J. Lu" <hjl.tools@gmail.com>
Cc: Willy Tarreau <w@1wt.eu>
Cc: x86-ml <x86@kernel.org>
Cc: lkml <linux-kernel@vger.kernel.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---

Quoted the full comment in that file after patched, so it's easier to
review:
/*
 * 64-bit SYSCALL instruction entry. Up to 6 arguments in registers.
 *
 * This is the only entry point used for 64-bit system calls.  The
 * hardware interface is reasonably well designed and the register to
 * argument mapping Linux uses fits well with the registers that are
 * available when SYSCALL is used.
 *
 * SYSCALL instructions can be found inlined in libc implementations as
 * well as some other programs and libraries.  There are also a handful
 * of SYSCALL instructions in the vDSO used, for example, as a
 * clock_gettimeofday fallback.
 *
 * 64-bit SYSCALL saves rip to rcx, clears rflags.RF, then saves rflags to r11,
 * then loads new ss, cs, and rip from previously programmed MSRs.
 * rflags gets masked by a value from another MSR (so CLD and CLAC
 * are not needed). SYSCALL does not save anything on the stack
 * and does not change rsp.
 *
 * Registers on entry:
 * rax  system call number
 * rcx  return address
 * r11  saved rflags (note: r11 is callee-clobbered register in C ABI)
 * rdi  arg0
 * rsi  arg1
 * rdx  arg2
 * r10  arg3 (needs to be moved to rcx to conform to C ABI)
 * r8   arg4
 * r9   arg5
 * (note: r12-r15, rbp, rbx are callee-preserved in C ABI)
 *
 * Only called from user space.
 *
 * Registers on exit:
 * rax  syscall return value
 * rcx  return address
 * r11  rflags
 *
 * For a historical reason in the glibc source, the kernel must restore all
 * registers except the rax (syscall return value) before returning to the
 * userspace.
 *
 * In other words, with respect to the userspace, when the kernel returns
 * to the userspace, only 3 registers are clobbered, they are rax, rcx,
 * and r11.
 *
 * When user can change pt_regs->foo always force IRET. That is because
 * it deals with uncanonical addresses better. SYSRET has trouble
 * with them due to bugs in both AMD and Intel CPUs.
 */

---

 arch/x86/entry/entry_64.S | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/x86/entry/entry_64.S b/arch/x86/entry/entry_64.S
index e432dd075291..1111fff2e05f 100644
--- a/arch/x86/entry/entry_64.S
+++ b/arch/x86/entry/entry_64.S
@@ -79,6 +79,19 @@
  *
  * Only called from user space.
  *
+ * Registers on exit:
+ * rax  syscall return value
+ * rcx  return address
+ * r11  rflags
+ *
+ * For a historical reason in the glibc source, the kernel must restore all
+ * registers except the rax (syscall return value) before returning to the
+ * userspace.
+ *
+ * In other words, with respect to the userspace, when the kernel returns
+ * to the userspace, only 3 registers are clobbered, they are rax, rcx,
+ * and r11.
+ *
  * When user can change pt_regs->foo always force IRET. That is because
  * it deals with uncanonical addresses better. SYSRET has trouble
  * with them due to bugs in both AMD and Intel CPUs.
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
