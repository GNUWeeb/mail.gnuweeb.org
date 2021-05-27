Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id MEbfLDMfsGAwIgIAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Thu, 27 May 2021 22:37:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 714FFC2A6D;
	Thu, 27 May 2021 22:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622155059;
	bh=EI+1ErSxgMn0Tvv9MS9KNlAy54zk2Oi/R4JOTzz0aRw=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=fiVzqGF4ILs8NeN9MkuZHv37eLB4BOvylJcLW8iOyC0/b23zksku1QXPvi8DrTmyW
	 yWYMzwzaoZsf8FV4UunEW8yWdpB4S7v1wdWyedDXIgOAp3ri886DT3u+lE8Ki0s/ac
	 UsICSNu/dGJnw/oCDkZMQ8NsFMAZCa40xp5AtlWv4tO/zM/jywP0mGbu6ZA3s4UMti
	 CK3V7dn5qH8Vq5oeSDQX1VKlyYfnjwuO+FWdZNJ3gKnWuDlhGAKvHWUwUVQHvJBUTX
	 d1xueEo2F5I0IRJqU0U5lrd/AtSFfwv0AlMoA0z3HNJoEtC33NsEjXkhMlGJ4FNw8v
	 jCf2tZMQCQKxg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id C8E01C29AE
 for <gwml@gnuweeb.org>; Thu, 27 May 2021 22:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622155058;
 bh=135iBZ9bChwZ81vFk1XG7QasgtzqAsfHp3Iov9GFhYI=;
 h=To:From:Subject:Date:From;
 b=oMsK8y4rZWqFFVSPiZLc2KOTVd6ThDSBeEZnN2gtIrnrY/E+7kkQPQeknYKpQe3XN
 Wpei93KTyuYGiNaldMLMBcjwxt4f7QP3WXBX96ZSQ37TMHbzBBvDBAqKbAHRXMZtvX
 VDevrsZ6KynIMct5MbftO74w7Is+ktakxyPKxu9GMzOlC0L/eU6yfPhErik4XMjtBW
 ejAqi4bSmyKCiJdeZ05iRi7oPw5mpJV7wajJ358/9imKasxGOvLwU6op0wQXjsfx+Q
 H1BqsLW6+t9LjRRqzgV1V32QRc2R/v1sSzIzOhp7WWFLji8Qx4cHDOZjXhk/oXUfdi
 TVI/1soa7b8VQ==
To: gwml@gnuweeb.org
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <7b670f5b-ddb0-ce52-3910-0e6e672e3884@gnuweeb.org>
Date: Fri, 28 May 2021 05:37:36 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [gwml] [Quiz] Reversing Simple Password 2
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

SGkgZXZlcnlvbmUsCgpXZSBoYXZlIGFub3RoZXIgcmV2ZXJzaW5nIGNoYWxsZW5nZSB0byBwbGF5
LgoKI3F1aXogI2VuZGlhbmVzcyAjeG9yCkZpbmQgdGhlIHBhc3N3b3JkCmh0dHBzOi8vd3d3Lmdu
dXdlZWIub3JnL3F1aXovMDAyCgowMDI6IEVMRiA2NC1iaXQgTFNCIGV4ZWN1dGFibGUsIHg4Ni02
NCwgdmVyc2lvbiAxIChTWVNWKSwgc3RhdGljYWxseSAKbGlua2VkLCBCdWlsZElEW3NoYTFdPWNi
MWRjZmU2MTlkZWQwZDYwNTFjNzEyNzM5MjA0ZGZiZDAyZGEzNDcsIG5vdCBzdHJpcHBlZAoKIMKg
IEFtbWFyIEZhaXppCgotLSAKR1dNTCBtYWlsaW5nIGxpc3QKR1dNTEBnbnV3ZWViLm9yZwpodHRw
czovL2d3bWwuZ251d2VlYi5vcmcvbGlzdGluZm8vZ3dtbAo=
