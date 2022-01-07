Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id UMNrA0PS2GEQSQQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 23:52:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id BCB91C1800;
	Fri,  7 Jan 2022 23:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641599550;
	bh=1BgATTjZ5YjQ3t9goep7ju/Opx83TvTLBLV6LimfhDI=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=QcKLgrB0/kLuQC2dv5DzBBsUp9Eeqcn9heZ585VU1xKawUjBfGfPKpfW94nk/dAWd
	 b07azsVXjPeYxkH/iFHkACx7t9wXimI0u0mPvOqj0PE1M/uoLSKYJn38HR9LO2nKEr
	 1NUEHK3fMD+n6u+lcnscIl/oV8O2pvjpzrd5mDEpmyLgyGQKj1JsLeGTjx5ZhYvuTL
	 3Du4gbjGKOjUYO6cDDXHUDz84oM8ekh76vjD5R124JHFZwmNlF0lnWC9A5WQXy9Ppy
	 mxd3IPrpaY4iFUWerGGelLvz6ZLmrSWtHv3dtzN7LzHaODEvl4o965YcDGlKNZg/ct
	 PeuosThLMkYNA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 20915C2045;
 Fri,  7 Jan 2022 23:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641599545;
 bh=pq7GMGN2XVhws1W/M5TNvweCWJ0nrQE9bX7JQKOZrl4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EcGAmBM+8bc53/WamLCtUjHcN/GJK08c3THc2n/wJ4ve8E1ym8syIcfF3+1ORRLPN
 K2sOyHtvaATkrWujw7uGbcoCOMv7z5Li5LJQw1xBXJD9691TOInj0jM72Br1V9nB2T
 /wwktY/fTVmxI347x5QLOQzjiuXCOONk5FSUnvWPb7ZaqGDgkMLbeCSi3AjQEWd6Z5
 dCNO3fcfxQ04QXAdfpiDlGgS1nq4pyY/BZbSBUrdgQ9TQm0+JlcaFW3le93Sawo36C
 Ul1q6bYdbb6FAgv7cseTd1SRHNIUZlhGSoInZTkCixWzFXUx3Bz9Hl435Emkg1oYHi
 0oD7UU3ipe/qQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
Subject: [PATCH v1 3/3] Documentation: x86-64: Document registers on entry and
 exit
Date: Sat,  8 Jan 2022 06:52:10 +0700
Message-Id: <20220107235210.1339168-4-ammarfaizi2@gnuweeb.org>
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
 lkml <linux-kernel@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Willy Tarreau <w@1wt.eu>
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

On Wed, 13 Oct 2021 at 16:24:28 +0000, Michael Matz <matz@suse.de> wrote:
> It might also be interesting to know that while the wording of the psABI
> was indeed intended to imply that all argument registers are potentially
> clobbered (like with normal calls) glibc's inline assembler to call
> syscalls relies on most registers to actually be preserved:
>
> # define REGISTERS_CLOBBERED_BY_SYSCALL "cc", "r11", "cx"
> ...
> #define internal_syscall6(number, arg1, arg2, arg3, arg4, arg5, arg6) \
> ({                                                                      \
>     unsigned long int resultvar;                                        \
>     TYPEFY (arg6, __arg6) = ARGIFY (arg6);                              \
>     TYPEFY (arg5, __arg5) = ARGIFY (arg5);                              \
>     TYPEFY (arg4, __arg4) = ARGIFY (arg4);                              \
>     TYPEFY (arg3, __arg3) = ARGIFY (arg3);                              \
>     TYPEFY (arg2, __arg2) = ARGIFY (arg2);                              \
>     TYPEFY (arg1, __arg1) = ARGIFY (arg1);                              \
>     register TYPEFY (arg6, _a6) asm ("r9") = __arg6;                    \
>     register TYPEFY (arg5, _a5) asm ("r8") = __arg5;                    \
>     register TYPEFY (arg4, _a4) asm ("r10") = __arg4;                   \
>     register TYPEFY (arg3, _a3) asm ("rdx") = __arg3;                   \
>     register TYPEFY (arg2, _a2) asm ("rsi") = __arg2;                   \
>     register TYPEFY (arg1, _a1) asm ("rdi") = __arg1;                   \
>     asm volatile (                                                      \
>     "syscall\n\t"                                                       \
>     : "=a" (resultvar)                                                  \
>     : "0" (number), "r" (_a1), "r" (_a2), "r" (_a3), "r" (_a4),         \
>       "r" (_a5), "r" (_a6)                                              \
>     : "memory", REGISTERS_CLOBBERED_BY_SYSCALL);                        \
>     (long int) resultvar;                                               \
> })
>
>
> Note in particular the missing clobbers or outputs of any of the argument
> regs.
>
> So, even though the psABI (might have) meant something else, as glibc is
> doing the above we in fact have a de-facto standard that the kernel can't
> clobber any of the argument regs.  The wording and the linux x86-64
> syscall implementation (and use in glibc) all come from the same time in
> 2001, so there never was a time when the kernel was not saving/restoring
> the arg registers, so it can't stop now.
>
> In effect this means the psABI should be clarified to explicitely say the
> the arg registers aren't clobbered, i.e. that the mentioned list of
> clobbered regs isn't inclusive but exclusive.  I will do that.
>
> When I was discussing this with Boris earlier I hadn't yet looked at glibc
> use but only gave my interpretation from memory and reading.  Obviously
> reality trumps anything like that :-)

Link: https://lore.kernel.org/lkml/alpine.LSU.2.20.2110131601000.26294@wotan.suse.de/
Link: https://gitlab.com/x86-psABIs/x86-64-ABI/-/merge_requests/25

This documents "registers on entry" and "registers on exit".

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Michael Matz <matz@suse.de>
Cc: "H.J. Lu" <hjl.tools@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Willy Tarreau <w@1wt.eu>
Cc: x86-ml <x86@kernel.org>
Cc: lkml <linux-kernel@vger.kernel.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 Documentation/x86/entry_64.rst | 47 ++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/x86/entry_64.rst b/Documentation/x86/entry_64.rst
index e433e08f7018..3f2007e2a938 100644
--- a/Documentation/x86/entry_64.rst
+++ b/Documentation/x86/entry_64.rst
@@ -108,3 +108,50 @@ We try to only use IST entries and the paranoid entry code for vectors
 that absolutely need the more expensive check for the GS base - and we
 generate all 'normal' entry points with the regular (faster) paranoid=0
 variant.
+
+
+Registers on entry:
+-------------------
+
+  - rax  system call number
+  - rcx  return address
+  - r11  saved rflags (note: r11 is callee-clobbered register in C ABI)
+  - rdi  arg0
+  - rsi  arg1
+  - rdx  arg2
+  - r10  arg3 (needs to be moved to rcx to conform to C ABI)
+  - r8   arg4
+  - r9   arg5
+
+
+Registers on exit:
+------------------
+
+This explanation is adapted from a controversial discussion about the
+wording in the System V ABI document regarding what registers the
+kernel is allowed to clobber when the userspace executes syscall.
+
+The resolution of the discussion was reviewing the clobber list in the
+glibc source. For a historical reason in the glibc source, the kernel
+must restore all registers before returning to the userspace (except
+for rax, rcx and r11).
+
+For the detailed story, see the email from Michael Matz:
+
+https://lore.kernel.org/lkml/alpine.LSU.2.20.2110131601000.26294@wotan.suse.de/
+
+The kernel saves/restores all registers, so the userspace using it can
+assume the value of all registers are still intact, except for the rax,
+rcx, and r11.
+
+When the kernel returns to the userspace, only 3 registers are
+clobbered:
+
+  - rax  syscall return value
+  - rcx  return address
+  - r11  rflags
+
+The kernel syscall entry actually also saves/restores rcx and r11, but
+at that point, they have already been overwritten by the syscall
+instruction itself with the userspace rip and rflags value, they will
+be used by the sysret instruction when returning to the userspace.
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
