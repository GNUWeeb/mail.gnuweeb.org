Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id J46zB1RXs2BQxQQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 30 May 2021 09:13:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id B878EC15DB;
	Sun, 30 May 2021 09:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622366035;
	bh=7GnVDA5KlkvtBv5wNYvnosOhkFwHAqnKXMC0uCpqDMc=;
	h=From:Subject:To:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=NI9cdOsnUifcgzHjdt8DqEU/w1hhbitB2TVmNxlU8Q9Lx5l67j1ouVnM/gSouZZSd
	 wyLuZvCys2jmsS0fAqKvTbPSbKYsDty99bp3tRZWKDc+FvpUqPKQ0efe/JFcdWSkh5
	 +DIuymR6/ykZs5NHGQFvn6w0RfH+RvSjDMU1+2qIW4aKBtF+1qW1gCMJaHJ5cMryfx
	 F8E0pky2TdMGHX3lVowaOOqDSsL2v5b0LGNzX9HS8IqwTAo6kMAR0MFRK8u/I48U4L
	 WhWFSc/B69AYmWcHqPpGm7EC0NYnPCQvpejkUGJ1GzsS9AhmO4ncoF2Jb6GvO4ulFH
	 FBsFu6wzJrrCg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id F38F4C2AFD
 for <gwml@gnuweeb.org>; Sun, 30 May 2021 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622366034;
 bh=O+u00g4PKPgVQa2K19q9saYDEOjp5re2oJrZoObXB3E=;
 h=From:Subject:To:Date:From;
 b=BN7dZZfLqUCoqsI7vVW5oo0qlwC0Ey+2xCgeZP6Qik8H5o7oCKqwOmLIlgVJyu3yT
 RydozJ/sfg4EILujHEtZEh9OhxxkGyxQg5Al2yzM0e+1Wzc18zf6ezpdcWEnigpk8P
 i3Q2ZJUQkbHuR/eARmEAsE6OP5ypqa8+DYKldGNul0QQlaEUTyR6+FGftWP558NScA
 nLUJr8BRo06rrsJWOiRBg7lyop/bBwiuHUyv54zi81F4MadYBTBOrPjeJJmJ//Bhbj
 bDXTToOQrnSKdwEzAIMFhWTMMy5vBK9yXbWUM6EvdIsXtDrS+IyBrImSYtVWjDpJ6p
 uKlV/HA0L4/uA==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: Auto backup is experiencing slow upload
To: gwml@gnuweeb.org
Message-ID: <65757393-183c-3e17-669e-321965855d67@gnuweeb.org>
Date: Sun, 30 May 2021 16:13:52 +0700
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

R29vZCBkYXkhCgpUb2RheSBJIGhhdmUgYmVlbiBub3RpY2VkIHRoYXQgb3VyIGF1dG8gYmFja3Vw
IGluZnJhc3RydWN0dXJlIGlzCmV4cGVyaWVuY2luZyBzbG93IHVwbG9hZC4KCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KClRoaXMgdGltZSB0YWtlbiAoaXQgd2FzIG5vcm1hbCk6Cgog
wqAgW1RpbWUgdGFrZW4gZm9yIGVhY2ggam9iXQogwqAgZ251d2VlYl8yMDIxXzA1XzI5X18xMl8w
MF8wMS5zcWwuZ3o6IDYuOTE3NTc4MjIwMzY3NCBzCiDCoCBwb3N0Zml4YWRtaW5fMjAyMV8wNV8y
OV9fMTJfMDBfMDEuc3FsLmd6OiAxLjY2MzY0OTA4MjE4MzggcwogwqAgdm1haWxfZ251d2VlYl9v
cmdfMjAyMV8wNV8yOV9fMTJfMDBfMDEudGFyLmd6OiAxNS41MDg4NzEwNzg0OTEgcwogwqAgdmFy
bGliX21haWxtYW5fMjAyMV8wNV8yOV9fMTJfMDBfMDEudGFyLmd6OiAxNi42MTE5NzMwNDcyNTYg
cwoKIMKgIFRvdGFsIHRpbWU6IDQwLjcwMjA3MTQyODI5OSBzCiDCoCBXYWxsIHRpbWU6IDQwLjcw
ODc1ODExNTc2OCBzCgoKIMKgIFtGaWxlIHNpemUgZm9yIGVhY2ggam9iXQogwqAgZ251d2VlYl8y
MDIxXzA1XzI5X18xMl8wMF8wMS5zcWwuZ3o6IDg1MjcgYnl0ZXMKIMKgIHBvc3RmaXhhZG1pbl8y
MDIxXzA1XzI5X18xMl8wMF8wMS5zcWwuZ3o6IDUwNzkgYnl0ZXMKIMKgIHZtYWlsX2dudXdlZWJf
b3JnXzIwMjFfMDVfMjlfXzEyXzAwXzAxLnRhci5nejogMzAxNjIwODMgYnl0ZXMKIMKgIHZhcmxp
Yl9tYWlsbWFuXzIwMjFfMDVfMjlfXzEyXzAwXzAxLnRhci5nejogOTQxOTgwMiBieXRlcwoKIMKg
IFRvdGFsIHNpemU6IDM5NTk1NDkxIGJ5dGVzCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgpUaGlzIHRpbWUgdGFrZW4gdG9kYXkgKDE4NDcgc2Vjb25kcywgdGhhdCBpcyBpbnNhbmUh
KToKCiDCoCBbVGltZSB0YWtlbiBmb3IgZWFjaCBqb2JdCiDCoCBnbnV3ZWViXzIwMjFfMDVfMzBf
XzAwXzAwXzAzLnNxbC5nejogOC44MTY4MTI5OTIwOTU5IHMKIMKgIHBvc3RmaXhhZG1pbl8yMDIx
XzA1XzMwX18wMF8wMF8wMy5zcWwuZ3o6IDIuNTg4MjE3MDIwMDM0OCBzCiDCoCB2bWFpbF9nbnV3
ZWViX29yZ18yMDIxXzA1XzMwX18wMF8wMF8wMy50YXIuZ3o6IDE0MzEuMjM4MTA3OTE5NyBzCiDC
oCB2YXJsaWJfbWFpbG1hbl8yMDIxXzA1XzMwX18wMF8wMF8wMy50YXIuZ3o6IDQwNS4yOTcxNTgw
MDI4NSBzCgogwqAgVG90YWwgdGltZTogMTg0Ny45NDAyOTU5MzQ3IHMKIMKgIFdhbGwgdGltZTog
MTg0Ny45NDUwMDUxNzg1IHMKCgogwqAgW0ZpbGUgc2l6ZSBmb3IgZWFjaCBqb2JdCiDCoCBnbnV3
ZWViXzIwMjFfMDVfMzBfXzAwXzAwXzAzLnNxbC5nejogODUyOSBieXRlcwogwqAgcG9zdGZpeGFk
bWluXzIwMjFfMDVfMzBfXzAwXzAwXzAzLnNxbC5nejogNTA3OCBieXRlcwogwqAgdm1haWxfZ251
d2VlYl9vcmdfMjAyMV8wNV8zMF9fMDBfMDBfMDMudGFyLmd6OiAzMDE2MjEwNiBieXRlcwogwqAg
dmFybGliX21haWxtYW5fMjAyMV8wNV8zMF9fMDBfMDBfMDMudGFyLmd6OiA5NDIxOTI0IGJ5dGVz
CgogwqAgVG90YWwgc2l6ZTogMzk1OTc2MzcgYnl0ZXMKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KClJlbGF0ZWQgZmlsZToKaHR0cHM6Ly9naXRodWIuY29tL0dOVVdlZWIvbWFpbC5n
bnV3ZWViLm9yZy9ibG9iL2VlMTRmNWY4ZDVkOGRkNGQ0ZjVjZWI0YTlmNDNhNzY2M2Q2NmZjNTcv
YmFja3VwLnBocAoKSSBkb24ndCB5ZXQga25vdyB3aGF0IGlzIHdyb25nIHdpdGggaXQuIEkgc3Vz
cGVjdCBpdCBpcyBuZXR3b3JrIGlzc3VlLApub3QgYmFkIHByb2dyYW1taW5nIGlzc3VlLiBCdXQg
c3RpbGwsIEkgYW0gc3RpbGwgaW52ZXN0aWdhdGluZyBpdC4gV2lsbApzZW5kIGZ1cnRoZXIgdXBk
YXRlIGxhdGVyIGlmIEkgYW0gYWJsZSB0byBmaW5kIHRoZSBjdWxwcml0LgoKQXQgbGVhc3QsIEkg
d2lsbCB3YWl0IGZvciB0aGUgbmV4dCBiYWNrdXAgdG8gYmUgc2NoZWR1bGVkIGFuZCBzZWUKd2hh
dCB3aWxsIGhhcHBlbiBsYXRlci4KClJlZ2FyZHMsCiDCoCBBbW1hcgoKLS0gCkdXTUwgbWFpbGlu
ZyBsaXN0CkdXTUxAZ251d2VlYi5vcmcKaHR0cHM6Ly9nd21sLmdudXdlZWIub3JnL2xpc3RpbmZv
L2d3bWwK
