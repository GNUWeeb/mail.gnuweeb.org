Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id CZckAKLU2GGYSwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 08 Jan 2022 00:02:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 2DE13C17F2;
	Sat,  8 Jan 2022 00:02:39 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=hnvG9ccP;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gnuweeb.org (Postfix) with ESMTPS id 53388C17D0;
 Sat,  8 Jan 2022 00:02:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id ABB33B827B7;
 Sat,  8 Jan 2022 00:02:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 956B2C36AE5;
 Sat,  8 Jan 2022 00:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641600153;
 bh=xYWsaBpg8GJluGfp56NCYqYBUSwqnZhGsPKLc7bt8ZE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=hnvG9ccPNutq8WQ8cn98dUlt59RPBl7cgL+d2S27cHbmXB8OH3veyMDPXUNTgJd/V
 XTroRC5a74pCiDDdlma4Ly3Zlg8KVOL5q2eomeNZzhCp4Sm14aSNvtFTo9BE/8lhkK
 WxRNhWppCEQv73u61k3YMPrEgWrBBsuhQhvCeOrFWpt5s7o1+MqULZnAwaZWe8j16B
 GyJWPLr8dNf+Scmp4HAftWXHdQnP3UIS7TmzFcJ1OddI75Oc9EG2KlVpi/3Y/DNhp7
 LodQN8DLp+uSO3ES2H7VH1r58eUrm0jPW7+2stzyLWTRPoIxjFJN/weUUSeSZFj8oQ
 CMsZHVqEalLYQ==
Message-ID: <37ce01e8-43eb-7eff-9667-745e17cdd65f@kernel.org>
Date: Fri, 7 Jan 2022 16:02:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v1 3/3] Documentation: x86-64: Document registers on entry
 and exit
Content-Language: en-US
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>
References: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
 <20220107235210.1339168-4-ammarfaizi2@gnuweeb.org>
From: Andy Lutomirski <luto@kernel.org>
In-Reply-To: <20220107235210.1339168-4-ammarfaizi2@gnuweeb.org>
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
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, Jonathan Corbet <corbet@lwn.net>,
 x86-ml <x86@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Willy Tarreau <w@1wt.eu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On 1/7/22 15:52, Ammar Faizi wrote:
> There was a controversial discussion about the wording in the System
> V ABI document regarding what registers the kernel is allowed to
> clobber when the userspace executes syscall.
> 
> The resolution of the discussion was reviewing the clobber list in
> the glibc source. For a historical reason in the glibc source, the
> kernel must restore all registers before returning to the userspace
> (except for rax, rcx and r11).
> 
> On Wed, 13 Oct 2021 at 16:24:28 +0000, Michael Matz <matz@suse.de> wrote:
>> It might also be interesting to know that while the wording of the psABI
>> was indeed intended to imply that all argument registers are potentially
>> clobbered (like with normal calls) glibc's inline assembler to call
>> syscalls relies on most registers to actually be preserved:
>>
>> # define REGISTERS_CLOBBERED_BY_SYSCALL "cc", "r11", "cx"
>> ...
>> #define internal_syscall6(number, arg1, arg2, arg3, arg4, arg5, arg6) \
>> ({                                                                      \
>>      unsigned long int resultvar;                                        \
>>      TYPEFY (arg6, __arg6) = ARGIFY (arg6);                              \
>>      TYPEFY (arg5, __arg5) = ARGIFY (arg5);                              \
>>      TYPEFY (arg4, __arg4) = ARGIFY (arg4);                              \
>>      TYPEFY (arg3, __arg3) = ARGIFY (arg3);                              \
>>      TYPEFY (arg2, __arg2) = ARGIFY (arg2);                              \
>>      TYPEFY (arg1, __arg1) = ARGIFY (arg1);                              \
>>      register TYPEFY (arg6, _a6) asm ("r9") = __arg6;                    \
>>      register TYPEFY (arg5, _a5) asm ("r8") = __arg5;                    \
>>      register TYPEFY (arg4, _a4) asm ("r10") = __arg4;                   \
>>      register TYPEFY (arg3, _a3) asm ("rdx") = __arg3;                   \
>>      register TYPEFY (arg2, _a2) asm ("rsi") = __arg2;                   \
>>      register TYPEFY (arg1, _a1) asm ("rdi") = __arg1;                   \
>>      asm volatile (                                                      \
>>      "syscall\n\t"                                                       \
>>      : "=a" (resultvar)                                                  \
>>      : "0" (number), "r" (_a1), "r" (_a2), "r" (_a3), "r" (_a4),         \
>>        "r" (_a5), "r" (_a6)                                              \
>>      : "memory", REGISTERS_CLOBBERED_BY_SYSCALL);                        \
>>      (long int) resultvar;                                               \
>> })
>>
>>
>> Note in particular the missing clobbers or outputs of any of the argument
>> regs.
>>
>> So, even though the psABI (might have) meant something else, as glibc is
>> doing the above we in fact have a de-facto standard that the kernel can't
>> clobber any of the argument regs.  The wording and the linux x86-64
>> syscall implementation (and use in glibc) all come from the same time in
>> 2001, so there never was a time when the kernel was not saving/restoring
>> the arg registers, so it can't stop now.
>>
>> In effect this means the psABI should be clarified to explicitely say the
>> the arg registers aren't clobbered, i.e. that the mentioned list of
>> clobbered regs isn't inclusive but exclusive.  I will do that.
>>
>> When I was discussing this with Boris earlier I hadn't yet looked at glibc
>> use but only gave my interpretation from memory and reading.  Obviously
>> reality trumps anything like that :-)
> 
> Link: https://lore.kernel.org/lkml/alpine.LSU.2.20.2110131601000.26294@wotan.suse.de/
> Link: https://gitlab.com/x86-psABIs/x86-64-ABI/-/merge_requests/25
> 
> This documents "registers on entry" and "registers on exit".
> 
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Michael Matz <matz@suse.de>
> Cc: "H.J. Lu" <hjl.tools@gmail.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Willy Tarreau <w@1wt.eu>
> Cc: x86-ml <x86@kernel.org>
> Cc: lkml <linux-kernel@vger.kernel.org>
> Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
> Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
> ---
>   Documentation/x86/entry_64.rst | 47 ++++++++++++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/Documentation/x86/entry_64.rst b/Documentation/x86/entry_64.rst
> index e433e08f7018..3f2007e2a938 100644
> --- a/Documentation/x86/entry_64.rst
> +++ b/Documentation/x86/entry_64.rst
> @@ -108,3 +108,50 @@ We try to only use IST entries and the paranoid entry code for vectors
>   that absolutely need the more expensive check for the GS base - and we
>   generate all 'normal' entry points with the regular (faster) paranoid=0
>   variant.
> +
> +
> +Registers on entry:
> +-------------------

This is SYSCALL64 registers on entry, not general registers on entry. 
Also, this has little to do with the entry logic, so it probably doesn't 
belong in this file.
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
