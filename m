Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id gOYGJD7S2GGQSQQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 23:52:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 9CC7DC2048;
	Fri,  7 Jan 2022 23:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641599546;
	bh=ugpm5OYlAbho8LQdBV4H7MFLQViYDCJShoUNRnOgkbc=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=letyS4CFTZAS34vBAhgf83jBMo5541FUyHw3nFHCUcUUBzzvPQ0M9OCc2YyExKbVt
	 AuVu8vho+TWP+q2ydgyYKDRqZADIKTsMbFYj212CB8fUN1Go6ShDSVk0H/+GvyC0wF
	 nLCcRT4x4hTAn4gyku/MvADMKihanNcHPa55IFPn4ZNh8MOMH5f9CrdYbKRf+kbvhn
	 vGXBBr7FOFdXI4ppDeoYODMjIc/WcG1SLtZPdaVv9Kc+KkzWrDf/mvfgMVxdpQH6hp
	 Jr2JHmsty7aKz0Zah+zppAAUyg2pKDir721zsh13c5ysH3u8NOvwnR71oEdGS0li0/
	 NDYdNbak84d0Q==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 8A478C17CA;
 Fri,  7 Jan 2022 23:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641599544;
 bh=NWy+Wlzi8SPi1Do3lakRbwYr/LHTBJck7Fu+hasZIqo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fPNB6A1ZFG3sr0EuPpXiS2lu/8yTJlFZKz9MjVYjhI5+PyvS58j3ICsQMFuE70DY+
 xPoWLk4EhhU6Xw3q66AHozIcFWPKlMD6SKhsnnj/gHvEK3TuTeE9q2xzpQk7yt+8Xm
 Bwzo7QUvY8Wy8+4TeVZEZM/A5eYG36D6WH3+ynPJtwCieYVdtKASpslABkCO+V604p
 XMRSDaRNOueVz+qcpgRDVWEG4TICwJ5hktVnNlME0YfuGwwBwj1hWn5uhSJOpIZbIo
 2SimraBJQ0i7PuCGsjaLUtOEKC8gY0MzZw+juqy6oaF+Yk9ba4dskp95uLN4hMXYxo
 tNCmho3cyKxkQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
Subject: [PATCH v1 1/3] x86/entry/64: Clean up spaces after the instruction
Date: Sat,  8 Jan 2022 06:52:08 +0700
Message-Id: <20220107235210.1339168-2-ammarfaizi2@gnuweeb.org>
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
Cc: x86-ml <x86@kernel.org>, GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 lkml <linux-kernel@vger.kernel.org>, Ammar Faizi <ammarfaizi2@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Most of lines here use a tab as a separator between the instruction
and its operand(s). But there are several parts that use spaces.

Replace these spaces with a tab for consistency.

Cc: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: x86-ml <x86@kernel.org>
Cc: lkml <linux-kernel@vger.kernel.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 arch/x86/entry/entry_64.S | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/x86/entry/entry_64.S b/arch/x86/entry/entry_64.S
index 97b1f84bb53f..e432dd075291 100644
--- a/arch/x86/entry/entry_64.S
+++ b/arch/x86/entry/entry_64.S
@@ -305,13 +305,13 @@ SYM_CODE_END(ret_from_fork)
 
 .macro DEBUG_ENTRY_ASSERT_IRQS_OFF
 #ifdef CONFIG_DEBUG_ENTRY
-	pushq %rax
+	pushq	%rax
 	SAVE_FLAGS
-	testl $X86_EFLAGS_IF, %eax
-	jz .Lokay_\@
+	testl	$X86_EFLAGS_IF, %eax
+	jz	.Lokay_\@
 	ud2
 .Lokay_\@:
-	popq %rax
+	popq	%rax
 #endif
 .endm
 
@@ -749,8 +749,8 @@ SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
 	swapgs					/* switch back to user gs */
 .macro ZAP_GS
 	/* This can't be a string because the preprocessor needs to see it. */
-	movl $__USER_DS, %eax
-	movl %eax, %gs
+	movl	$__USER_DS, %eax
+	movl	%eax, %gs
 .endm
 	ALTERNATIVE "", "ZAP_GS", X86_BUG_NULL_SEG
 	xorl	%eax, %eax
@@ -1135,7 +1135,7 @@ SYM_CODE_START(asm_exc_nmi)
 	pushq	2*8(%rdx)	/* pt_regs->cs */
 	pushq	1*8(%rdx)	/* pt_regs->rip */
 	UNWIND_HINT_IRET_REGS
-	pushq   $-1		/* pt_regs->orig_ax */
+	pushq	$-1		/* pt_regs->orig_ax */
 	PUSH_AND_CLEAR_REGS rdx=(%rdx)
 	ENCODE_FRAME_POINTER
 
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
