Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 1ZDrA46j3GFdvgQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 10 Jan 2022 21:22:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D13A0C2A86;
	Mon, 10 Jan 2022 21:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641849739;
	bh=UlFWOFOAo3zz9VCmUwUlLO/grstg72zWgRSiUHFTOG0=;
	h=From:To:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=BzRw/PGRIn53JAI3MURdz1G5nrNhZl25MdlXHbjmX2YPgRwgOwWVXTNDADWmdjJBR
	 ftBrfA8tPuecQRV34UP32VujESAUJlHWddTCNmg2ac6s9DuglSxTlSva9ddCz7rAu9
	 MEnRl07/wgQJ2iS0FSZ0ug7jHavOyP70SKFhhXs9qrDr9Idh5kRTTKiKdOHw2nLdxl
	 TxJjZpPyUpZRxPzajWkoogSFeku17b2qpBhlkwLm0+nfU0IuNsvAP5EJYzhrxuKuFx
	 4b5onZIiVYSUu2V/+pSDQ1sGpH2vHRVdfJC0v260pRSWpEV3XRqYvvYvptCk7pQFfA
	 cUcACvMTdQbaQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [180.242.102.163])
 by gnuweeb.org (Postfix) with ESMTPSA id BF346C165A;
 Mon, 10 Jan 2022 21:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641849738;
 bh=VioQWJKP0JFibgNf6r3ecMTUwAMykd+0w2zRW0DEPbc=;
 h=From:To:Cc:Subject:Date:From;
 b=ATm98TvbFeLr1a5Zj1upVadR3qwhFUobqKdQ75Wm8GGNOdDAN57Jb7WzVSReNac/Q
 y4y5Cf/Pj8kJUS27lEVl7I3CbxbjdAAahCvo/LKQeMnS3QkS0yFUjSogZc488yiHkY
 HIKKRvBAkSCa00eXhTcQKKNcxAVmuKFcQUZ3yvRdS4GediKDWg+aW+1KW2wRENGW9H
 sfGh8964Ctl2JgoEv8JNUuz5Qi6kiY+vfdcLCtvBTU4aXGeFWqQFfOCIRMC6M/qtxP
 LqYxY3WrWucUee38HKjm0/m8uKPqAW/bkXGc/5MZpdhKDL2xClXiptm4uw6lQfNrKb
 tlhwF9jIwvcAQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v1] x86/delay: Fix the wrong asm constraint in `delay_loop()`
Date: Tue, 11 Jan 2022 04:21:59 +0700
Message-Id: <20220110212159.1567280-1-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
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
Cc: x86ml <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, lkml <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Kirill A. Shutemov" <kirill@shutemov.name>, Ingo Molnar <mingo@elte.hu>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

The asm constraint does not reflect that the asm statement can modify
the value of @loops. But the asm statement in delay_loop() does change
the @loops.

If by any chance the compiler inlines this function, it may clobber
random stuff (e.g. local variable, important temporary value in reg,
etc.).

Fortunately, delay_loop() is only called indirectly (so it can't
inline), and then the register it clobbers is %rax (which is by the
nature of the calling convention, it's a caller saved register), so it
didn't yield any bug.

^ That shouldn't be an excuse for using the wrong constraint anyway.

This changes "a" (as an input) to "+a" (as an input and output).

Fixes: e01b70ef3eb3080fecc35e15f68cd274c0a48163 ("x86: fix bug in arch/i386/lib/delay.c file, delay_loop function")
Cc: Ingo Molnar <mingo@elte.hu>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: "Kirill A. Shutemov" <kirill@shutemov.name>
Cc: Joerg Roedel <jroedel@suse.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: lkml <linux-kernel@vger.kernel.org>
Cc: x86ml <x86@kernel.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 arch/x86/lib/delay.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/lib/delay.c b/arch/x86/lib/delay.c
index 65d15df6212d..0e65d00e2339 100644
--- a/arch/x86/lib/delay.c
+++ b/arch/x86/lib/delay.c
@@ -54,8 +54,8 @@ static void delay_loop(u64 __loops)
 		"	jnz 2b		\n"
 		"3:	dec %0		\n"
 
-		: /* we don't need output */
-		:"a" (loops)
+		: "+a" (loops)
+		:
 	);
 }
 

base-commit: bf4eebf8cfa2cd50e20b7321dfb3effdcdc6e909
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
