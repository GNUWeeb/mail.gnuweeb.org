Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id QFQzOIWZrmD7zgEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 18:55:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id A8E16C29A0;
	Wed, 26 May 2021 18:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622055301;
	bh=cojb0K4DJFWJQ4Y70NaSMkQYbkIoecMepogm4WTdQCs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=gNPY+UsyLWxIrUdVMqgrRWUkwRmVDGLc3OpZromeiQHbeXyvGZBJWx0FIi/4AByye
	 N9kUPwZVbsInxFms2v1dIOfHUf/plULUoPi3KmQzJ+8XpUkr37yzTISEJmt5UU3pH5
	 HyBosz5xVtNNL1JA+tKXL/sDo7pAZupJzaEumaTtzMdd311nLoFalvibQiejVnvmh+
	 Q/DdUyOXUyDoAl3QAS7jDXfqXK57QZRXaZXX53zg8A15vJ/cJ6aRJjrNZsUeTUR5Yb
	 7ED8IU7HWm1k1M9cQ6N7RA9dQgEOG3vxkknCtRL32ceXLJYjdGbuWtzB/0+df0MzkO
	 vd8Mmlg9ICDIQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.58.47.108] (unknown [182.2.74.80])
 by gnuweeb.org (Postfix) with ESMTPSA id 43977C29A0;
 Wed, 26 May 2021 18:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622055300;
 bh=0Fifrc6xoYNLqjUaZ+ODZ2WGGAUHJYYxSHC0lYG/oOk=;
 h=Date:Subject:From:To:Cc:From;
 b=QfhLAIJ72NssTADDJXLGfc5ZpDKrvOB7rjpgKNiCDxZsv3qVNQtpvSrieAzmdkWlT
 IsD0LcnY1ety4dvlqlyvEiisHsolyp0ld2qxrY17as3gTKXK35aElgv884bcebDr4N
 e8xmICHJNHAq+YiV0SHZOurqEvwq9lkTw+2AiUswUU5oFEpdGjTBaw+amoeaoyemsQ
 WFmzqwTNnoSeNNrl88g1BHZtO9Fwz2waOLChSSaLdLgxuvDI5JB+QUiMmcuzwgk3Tl
 Uos4Dwhd/kr9Q68LHLWj+HasW+L6LE4iw30SXr5zhbX1JzdTlKz9qMHcev+1oWA6GN
 oPPlCYio9pNmQ==
Date: Thu, 27 May 2021 01:54:56 +0700
Message-ID: <336cf4d8-848b-49bc-adbd-44aecf1acbb8@email.android.com>
X-Android-Message-ID: <336cf4d8-848b-49bc-adbd-44aecf1acbb8@email.android.com>
From: ammarfaizi2@gnuweeb.org
To: gwml@gnuweeb.org
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
Subject: [gwml] [Quiz] Reversing Quiz
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
Cc: akiekano@gnuweeb.org
Content-Type: multipart/mixed; boundary="===============5203166174790600939=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

--===============5203166174790600939==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9J2F1dG8nPjxwIGRpcj0ibHRyIj5IaSBndXlzLCB3YW50IHRvIHBsYXkgcmV2ZXJz
ZSBlbmdpbmVlcmluZyBhIGJpdD8gSSBoYXZlIGEgY2hhbGxlbmdlIGZvciB5b3UuPC9wPjxwIGRp
cj0ibHRyIj5QbGVhc2UgYWxzbyBwb3N0IHlvdXIgd3JpdGUgdXAgb24gVGVsZWdyYW0gZ3JvdXAg
aWYgeW91IHNvbHZlIGl0IDspPC9wPjxwIGRpcj0ibHRyIj48YSBocmVmPSIjcXVpeiI+I3F1aXo8
L2E+PC9wPgo8cCBkaXI9Imx0ciI+RmluZCB0aGUgcGFzc3dvcmQ8YnI+CjxhIGhyZWY9Imh0dHBz
Oi8vd3d3LmdudXdlZWIub3JnL3F1aXovMDAxIj5odHRwczovL3d3dy5nbnV3ZWViLm9yZy9xdWl6
LzAwMTwvYT48YnI+PC9wPgo8cCBkaXI9Imx0ciI+MDAxOiBFTEYgNjQtYml0IExTQiBleGVjdXRh
YmxlLCB4ODYtNjQsIHZlcnNpb24gMSAoU1lTViksIHN0YXRpY2FsbHkgbGlua2VkLCBCdWlsZElE
W3NoYTFdPThlZDRmYTgwZDdjOGE8YSBocmVmPSJ0ZWw6MjQ4MTgiPjI0ODE4PC9hPmUyOWQ8YSBo
cmVmPSJ0ZWw6OTI1OTkiPjkyNTk5PC9hPmQ1MGZhNmEzYTg0MjYsIG5vdCBzdHJpcHBlZDwvcD48
YnI+PGRpdiBkYXRhLXNtYXJ0bWFpbD0iZ21haWxfc2lnbmF0dXJlIj4mbmJzcDsgQW1tYXIgRmFp
emk8L2Rpdj48L2Rpdj4=


--===============5203166174790600939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============5203166174790600939==--
