Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 6HL4EYVlF2EtRA8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 14 Aug 2021 06:41:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 1FBF9C2C1B;
	Sat, 14 Aug 2021 06:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628923268;
	bh=HQ6DG/xJQYrRRyysga+MlqYzrnx57/Y44R3JsAFngRU=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=cCSmX3R1NbDpMN6qDpXaFDNveEpPI9HgaGU96Xt0ExsSmz4QmzSC9a3aR1XEXAOMe
	 gPgEY8E7f7n7L+T2zeSneHbRJevCiNb2/AMslFzzjFlKtgvSqNRZxjyJfBPyhJ6jJd
	 NVECiU/Cyb6GqPzhTSGt190ptuYIWakwsphJJcawQmf2LL9VgPCo7InEMggykmnFob
	 +0GoSAMioizSGq7MefU1pHqvddGerWrl3ZWRG/evzYHzwANzyzE0PFartgl2l1bA7S
	 NZFROPMioRMiU/lqk8sqxeHLaSTsoSFHUZeZA71lCrANPrWfbY4CsxhfXuOn6qnsdc
	 tLPjdn73DsqFg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral.. (unknown [182.2.68.212])
 by gnuweeb.org (Postfix) with ESMTPSA id E3B77C2A7F;
 Sat, 14 Aug 2021 06:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628923266;
 bh=HYoqccBu7T5jU2cUgq5x7zLggX+6xYrZ3+E7NrVw7HA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JXIG2dsbPQDe6/HdEwmonosvNjh61QuhowRN1plgmGvGwcm5kUTkOD5tB8BYyvu7z
 FJ/z/u2s9jZy9if5xlOqGG/5IKsTxaoP25ak37mV18WWO2sR06LiZN4gdvcogN+ipZ
 zumeWdH4SBSWULMjd2wDBTGwlkDLRkjuaizcYD8wdtCaCmYE9T7C2ln2MTRig+PoCa
 /h44+Tk2uj6OMUCbyAjU/fp3Dv30yqQgw4LirfNCffFS9+QTOYK2BmG5iIRvvv7BlA
 ySsFSroXRLXJIgF37BBs6h7CRVmBa+no0KcsUJCjwQ4ZYctlUN1ylk9Vwhb3Uzffat
 wi2XaLVRlZh0Q==
From: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [PATCH] Scraper: don't make runScrapers() be class method
Date: Sat, 14 Aug 2021 13:40:41 +0700
Message-Id: <20210814064042.6145-1-alviro@gnuweeb.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <1900a7bd-59fa-6ecd-8eca-b8aabff6a846@gnuweeb.org>
References: <1900a7bd-59fa-6ecd-8eca-b8aabff6a846@gnuweeb.org>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi sir @ammarfaizi2, this is my patch revision for the runScrapers()
function, please review again.

--
Alviro Iskandar Setiawan


-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
