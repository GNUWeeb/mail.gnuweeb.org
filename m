Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id FmRkGiKxtGBDGAUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 31 May 2021 09:49:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 04784C2B2D;
	Mon, 31 May 2021 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622454562;
	bh=aOZ4HLIsUhqlx7nD8UzyZqDTDwL+xcwsV9PeLpKfaOs=;
	h=To:From:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=DQ7gPnzLrAs8/G7qoc51ByQ7fk14wreYT3Z4uFkNe+xemD1OW3sa7Pm3SENnMsPbo
	 Hx47SUlvo8w7pXTcdaq0lDdsl0DlyNgkZWnE9VpKDhnRo4OwawYB+WwKm6PsQogP5s
	 ug1nJh1xRdEk2r3BIt55sEumwmFbveUZRxc9aWfWRzy1/oDd+jJA8gBdfDIsTdAWva
	 Jv6LNuod9QELWut1uqIng2kuLWXK/GA8FVGk4GDx5Od99hL1tC7mpQp9abS6LTzX+8
	 Z2uZweIIn5thL8A9wHEvW9aQSvAnOezBTtL2hhQ+jQn1XdiNxRlPobjIpoUfOXDwb2
	 Ie1f+44sBWNnQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id A8D0DC2B24
 for <gwml@gnuweeb.org>; Mon, 31 May 2021 09:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622454560;
 bh=uS/5UOFMkPSt9c/fjn/GjeDTE7DqWz3n3+LawEXOPyM=;
 h=To:From:Subject:Date:From;
 b=SkQNDl/HcLPuuQAXI7KIKN89adMfpp7DMVSybYbTor09yrt/fTdPDC+DpwoDMviP2
 VN3DDf5FmEYcmpdnF8UgcT6+UNiivaigMwP/I60cgwPl8m2bggmuN260WydgbE/SJi
 lNK1mK87aZ+vKc83JgbOQhs6FdSPld+bXIwSDvNYzRqyBer93lq9+jalaDrvcvPmIt
 1yxRU1mYWnyc911WAAUnByyAOyQ2Tw0XLZHkjYuzoC69hPQl+KVyaajStd531j9D81
 wvWuV+aGTDTgRmfUtXuhpowBxC6RZ/VWCSeUbPAyb6mWwgZAfaCRdLGfsYAd3RYz0a
 hIuGrr81FrgCQ==
To: gwml@gnuweeb.org
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [Quiz] Exploit Buffer Overflow Vulnerability
Message-ID: <50e30bfc-8410-de1c-d720-964f5c7a4a20@gnuweeb.org>
Date: Mon, 31 May 2021 16:49:13 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

I3F1aXogI2J1ZmZlcl9vdmVyZmxvdyAjeDY0CgpIaSBldmVyeW9uZSwKClRoaXMgaXMgdGhlIDMt
cmQgcXVpeiBJIHBvc3RlZCBvbiBHVyBtYWlsaW5nIGxpc3QuCgpQcmludCB0aGUgY29uZ3JhdHVs
YXRpb24gbWVzc2FnZSB2aWEgYnVmZmVyIG92ZXJmbG93IHZ1bG5lcmFiaWxpdHk6Cmh0dHBzOi8v
d3d3LmdudXdlZWIub3JnL3F1aXovMDAzCgowMDM6IEVMRiA2NC1iaXQgTFNCIGV4ZWN1dGFibGUs
IHg4Ni02NCwgdmVyc2lvbiAxIChTWVNWKSwgc3RhdGljYWxseSAKbGlua2VkLCBCdWlsZElEW3No
YTFdPTIyMDE5NTBiMDViMjlkYTYwNmViYzNiODc4MzUxM2U5YWJjMzUxZGUsIG5vdCBzdHJpcHBl
ZAoKU291cmNlIGNvZGU6Cmh0dHBzOi8vZ2lzdC5naXRodWIuY29tL2FtbWFyZmFpemkyL2U2MDI4
MGU2NGFjMzkxYWY1MzRlZGVjNDlkZTBlMjdiCgpTaGFyZSB5b3VyIHNvbHV0aW9uIG9uIFRlbGVn
cmFtIHRvby4KCkhhcHB5IGhhY2tpbmchCgogwqAgQW1tYXIKCi0tIApHV01MIG1haWxpbmcgbGlz
dApHV01MQGdudXdlZWIub3JnCmh0dHBzOi8vZ3dtbC5nbnV3ZWViLm9yZy9saXN0aW5mby9nd21s
Cg==
