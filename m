Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id kM1dOrsntGDDBQUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 31 May 2021 00:03:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 7F8A7C2B10;
	Mon, 31 May 2021 00:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622419387;
	bh=+Vuk6/wDEzI/ypZfLHMsZ8nr6lJ4Fhvf1LyLT5qPHdA=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=KHCbq1Vj6S0QAoWUVsFBFt92HWB6ixfDQ0qdUbaS0SdIvXbm4yWKYjqgyVV02dnHw
	 /IxKwO/VtuwA92p/mzezw2RyHYN8G0N91ay+1/2mfTENOVPwOYF0WnLzWuBJtTUN/r
	 PsFI+XfNmygwCItbTuHZ7CKNlamsY6cYuHYiv9X0De+ISV6B9fDcRbqAG4axFrQN5i
	 21sbopfF0JEoROm/p0n5ZQAHXJdw3b/HA9IdUkdzUEzvQrQH3bHM3tu7fWkETbxjYp
	 IZU6y406WF/w/4+cv6sA6zQnnm+xB5XbPwy/nwEjImIVbb8zWl3mGzZLs4qXE8cHJg
	 4Xql+iwd7AFQA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 1E71CC1604
 for <gwml@gnuweeb.org>; Mon, 31 May 2021 00:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622419386;
 bh=QsuKgwLPcE8N23PF2e/QiL+1OVQ7JF79f5X4GVaullk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=XXEXAaBrzNZIEd4OMfShsm+D/vJeoU61s9Ydd9BCO4cjnd2xU79OoR1O5nciL5iok
 l37m/Q+QJO+/KIvq5KDnM7/iLPIcXorBLvLVxEmeKAf+x68zFDbYm3f7rhm3UZ0qTp
 GGCtCF+dHP+5MsAAD5qJ3OVXKtr1ipRFjrzDNpXBipUzIm/UCWrjC6uhj82Jrcrsue
 PfiIWwA2ZEYD9uMbX7S7X6F69nQQFpzNEFsAVwhyzEO2hVb67CeAO3Ecutju8DE/WO
 o91SRJLKFUsgQb4JsUvFTeELPS3YNpnVHpbInoLs+okgumasNDQruvTjBQOGVqZfPU
 BQmP+dnlhnHFg==
Subject: Re: Auto backup is experiencing slow upload
To: gwml@gnuweeb.org
References: <65757393-183c-3e17-669e-321965855d67@gnuweeb.org>
 <f7890495-a111-8061-07f9-6da7c70f770f@gnuweeb.org>
 <CABQ4W=MVfo9i3x7THF4UFLxQjv6BnJPnQiaOV33N09rW16cD5w@mail.gmail.com>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <e30a1939-e2ed-62e9-eedb-89a66e515f7e@gnuweeb.org>
Date: Mon, 31 May 2021 07:03:03 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CABQ4W=MVfo9i3x7THF4UFLxQjv6BnJPnQiaOV33N09rW16cD5w@mail.gmail.com>
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

SXQgaXMganVzdCBmaW5lIHRvZGF5LiBTbyB0aGlzIGNhc2UgaXMgY2xvc2VkLgoKIMKgIFtUaW1l
IHRha2VuIGZvciBlYWNoIGpvYl0KIMKgIGdudXdlZWJfMjAyMV8wNV8zMV9fMDBfMDBfMDEuc3Fs
Lmd6OiAxLjcwMjczNDk0NzIwNDYgcwogwqAgcG9zdGZpeGFkbWluXzIwMjFfMDVfMzFfXzAwXzAw
XzAxLnNxbC5nejogMS42MDUyNzQ5MTU2OTUyIHMKIMKgIHZtYWlsX2dudXdlZWJfb3JnXzIwMjFf
MDVfMzFfXzAwXzAwXzAxLnRhci5nejogMTYuMzU4NzcxODAwOTk1IHMKIMKgIHZhcmxpYl9tYWls
bWFuXzIwMjFfMDVfMzFfXzAwXzAwXzAxLnRhci5nejogMTEuNzE4OTg1Nzk1OTc1IHMKCiDCoCBU
b3RhbCB0aW1lOiAzMS4zODU3Njc0NTk4NjkgcwogwqAgV2FsbCB0aW1lOiAzMS4zOTc3ODExMzM2
NTIgcwoKIMKgIFtGaWxlIHNpemUgZm9yIGVhY2ggam9iXQogwqAgZ251d2VlYl8yMDIxXzA1XzMx
X18wMF8wMF8wMS5zcWwuZ3o6IDEwMzA1IGJ5dGVzCiDCoCBwb3N0Zml4YWRtaW5fMjAyMV8wNV8z
MV9fMDBfMDBfMDEuc3FsLmd6OiA1NTM1IGJ5dGVzCiDCoCB2bWFpbF9nbnV3ZWViX29yZ18yMDIx
XzA1XzMxX18wMF8wMF8wMS50YXIuZ3o6IDMwNjM3NzUyIGJ5dGVzCiDCoCB2YXJsaWJfbWFpbG1h
bl8yMDIxXzA1XzMxX18wMF8wMF8wMS50YXIuZ3o6IDk0NjQ4MDAgYnl0ZXMKCiDCoCBUb3RhbCBz
aXplOiA0MDExODM5MiBieXRlcwoKQ29uY2x1c2lvbjogVGhlcmUgd2FzIGEgdGVtcG9yYXJ5IG5l
dHdvcmsgaXNzdWUuCgogwqAgQW1tYXIKCi0tIApHV01MIG1haWxpbmcgbGlzdApHV01MQGdudXdl
ZWIub3JnCmh0dHBzOi8vZ3dtbC5nbnV3ZWViLm9yZy9saXN0aW5mby9nd21sCg==
