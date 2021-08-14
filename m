Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id +D9MEmRqF2E2RQ8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 14 Aug 2021 07:01:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 44AE3C2B7E;
	Sat, 14 Aug 2021 07:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628924515;
	bh=PyGevNpAqQTKZ/sCWZ64JWIgSUcmBK8oOGB5y4A8CQ4=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=JjLsEHLWMZzyXSTlxgBGV9tPe5XhmgRJon493DO18srIpD1Weiq9uIEkWc/lKsvVk
	 PgURROA9NZrUv9JlpLDuVJG9gGuWB89/xlHwN1P8k/m8vns3H3+JbNGyKRDx9ZI8z9
	 4fFNhuS2Nv9/xnd5k+/fujrCCOb2O4eb/np0lHvxrfKXaQJvDOT5bAlM4VRAuhh52K
	 03hqfIvxFvgCIF96WCw2+CLP/gPNIp7zN+8wlgpWEsB7k/A6xiJT1uXcHw4Wc+T55c
	 Ba2LXhPMI74xZrJ9PKb18pIhaqAgzI/vkzBnEqLImMWVf0EXPyNojNb7+zGCQyBfoa
	 vLDIUy6GTmXzA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.43.248] (unknown [182.2.68.212])
 by gnuweeb.org (Postfix) with ESMTPSA id 8758FC2BF4;
 Sat, 14 Aug 2021 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628924513;
 bh=PAkNeVFO5XxmsN1kCds0nMTVFfyen350VsFynrTFRpk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ThYM1ELwiVZbxKuucu2S/iogGSH4GFL3ybvE42bSuMvKnpiqRPTwL3TL0mvs/FpLB
 MykgO2LfyIqyFB3CRTewQ2BVfVC9+L5MOzzzNxVDeaJd/oKXVpeHTNZZu56MfkJ/5I
 ky4dcDCMfBGVRviLpE8azUX+w82NhkhCEBU2YFiwOfygb/rKhppMZPGlO1MbNozWQg
 W8qkPkX4ibK4DvTrK7JXIZkUSdcXzOjosVZ0VrKo4sh0pmkZRhLqrgOmMBZIN4Ugu2
 qK1cxxQfwNfAkW0+6YI2YyFPLnkMMQqc5FpszYbmQCE7u16keRwPSGyrhBfMxvLZz+
 HiirriYzObbsA==
Subject: Re: [PATCH] Scraper: don't make runScrapers() be class method
To: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
References: <1900a7bd-59fa-6ecd-8eca-b8aabff6a846@gnuweeb.org>
 <20210814064042.6145-1-alviro@gnuweeb.org>
 <20210814064042.6145-2-alviro@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <753d5260-22de-9b28-0486-e09a69808f60@gnuweeb.org>
Date: Sat, 14 Aug 2021 14:01:51 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210814064042.6145-2-alviro@gnuweeb.org>
Content-Language: en-US
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Applied, thanks.

* patch_from_alviro:
  Scraper: don't make runScrapers() be class method
  generic scraper: add chat scraper

-- 
Ammar
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
