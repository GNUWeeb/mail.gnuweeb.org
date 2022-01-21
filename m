Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id O9T3MAK26mFOiwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 21 Jan 2022 13:32:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id E4B91C2BB1;
	Fri, 21 Jan 2022 13:32:43 +0000 (UTC)
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gnuweeb.org (Postfix) with ESMTPS id 88FE8C1600;
 Fri, 21 Jan 2022 13:32:36 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-221-104.088.067.pools.vodafone-ip.de
 [88.67.221.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 2C6A81EC0606;
 Fri, 21 Jan 2022 14:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1642771950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=hdl5yhDBY86sBHAUwJnc4cfV4sB1Lwi1p/NJUmPImH4=;
 b=E/FzQC27PSURtfhOgSF/FIpNGZ2ViItTtlMWUTY+kdYBoUR90W2IFEItPW+P4344ZZxPs6
 ECSI4He2wC31QnTf3LH2qKSbPFauAgPchKL+AfEtOwvEDKoBwkatLUxrNhI3NJNvejIV6+
 2QbNIh2fiKa1ilNdE06iFyVoviBu3tY=
Date: Fri, 21 Jan 2022 14:32:24 +0100
From: Borislav Petkov <bp@alien8.de>
To: Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v1 3/3] Documentation: x86-64: Document registers on
 entry and exit
Message-ID: <Yeq16JjCBXmxgWaj@zn.tnic>
References: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
 <20220107235210.1339168-4-ammarfaizi2@gnuweeb.org>
 <37ce01e8-43eb-7eff-9667-745e17cdd65f@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37ce01e8-43eb-7eff-9667-745e17cdd65f@kernel.org>
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
Cc: Jonathan Corbet <corbet@lwn.net>, "H.J. Lu" <hjl.tools@gmail.com>,
 x86-ml <x86@kernel.org>, GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, lkml <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Willy Tarreau <w@1wt.eu>,
 Michael Matz <matz@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On Fri, Jan 07, 2022 at 04:02:27PM -0800, Andy Lutomirski wrote:
> This is SYSCALL64 registers on entry, not general registers on entry. Also,
> this has little to do with the entry logic, so it probably doesn't belong in
> this file.

Right, except that syscall is also a kernel entry point so it kinda
belongs in a documentation file called "entry". :)

Srsly, I'd really like to keep the note about which registers glibc
considers clobbered and which not, documented somewhere as that is
practically an ABI which is not (yet) in the psABI doc.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
