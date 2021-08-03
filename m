Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id Wml4D1tOCWE0pw0Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 03 Aug 2021 14:10:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id ED76BC2BB0;
	Tue,  3 Aug 2021 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1627999833;
	bh=PQNFP5rVp1sQFL8RsXnkImecnHzejdpiV5P4CXAxNec=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=DNvr2dKdTOJid2RF6TfLNX6B8gOECikG0RJRfS4nHjXahQ35Gmzk3n6RVhy7i28mm
	 kA5XmhLwTtgvcjrOsX855ozoX2mcF6zxQfPAbjjWpUA9zjhne7aFsxvDWJI6pqrjHl
	 jkAZEercgEGG3MsFr4xP+VoApIvrXgDW1ZjAWc91mZIlz91zjOrl5FfhIulwnnEdPx
	 xMRjuBkqeweoqQUgKkZBqAW45rzGuX+XwOvkZ67FNKJL/ro8QQ0nIGdFAyilEQKQwG
	 lucJKiYvYNDD1zGtNIl8kbU9JyRTwfOgKISkurnvr0pWM66JSxEFPeyiv3dOE8Lm/r
	 8Kc2sNEG/reqg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 1B70AC2B7A;
 Tue,  3 Aug 2021 14:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1627999832;
 bh=JOur/4O2aKa+ecZVV3wpO0m5Go5ORsL4u78AlH7YBBk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=DH4Hr7wCLi/WkK7HnDiIDotfMLyS+GTEBa3k5vJLl2Bm+koUgHYrUzEPL+4fA8JzG
 nhfaSdlAqjv3Ipb33E+3FkFfpyP9IIYFXtcTG6QR8p3ozDP+3WjnoI06VjtQmnqvnF
 6pzOeb+WmzvdQDETjo8Zr/lAyd7rnVwISvqWISbzEgLEz2RRTlRNKkxSMpPGpLepXs
 hFSCQDX2vn70f9fu6Op2Ptl5zlODnpssUt5vstdHq+FWZVRNNrUcdIQme2Skvtu68M
 frKRhzjYnGhSCgpk60Zj6RlUAf88GXo0+PvPTUqrODuqaFFFmURDXjMjO12upyDzlI
 QYG0nHLTaUseQ==
Subject: Re: [module] Create quiz module
To: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
References: <e7d78869-bbb3-93fe-d6c6-8514b4ce6f98@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <50cbac51-98c8-0851-46c7-904d7ced656f@gnuweeb.org>
Date: Tue, 3 Aug 2021 21:10:24 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <e7d78869-bbb3-93fe-d6c6-8514b4ce6f98@gnuweeb.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

LS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQpIYXNoOiBTSEE1MTIKCk9uIFR1ZSwg
QXVnIDMsIDIwMjEgYXQgODo1MyBQTSBBbHZpcm8gSXNrYW5kYXIgU2V0aWF3YW4KPGFsdmlyb0Bn
bnV3ZWViLm9yZz4gd3JvdGU6Cj4KPiBIaSBzaXIKPgo+IENhbiB5b3UgZXhwbGFpbiBhbmQgZ3Vp
ZGUgbWUgZm9yIHRoaXMgaXNzdWU/Cj4gaHR0cHM6Ly9naXRodWIuY29tL0dOVVdlZWIvR05VV2Vl
YkJvdC9pc3N1ZXMvMzUKPgo+IEkgd2FudCB0byBjb250cmlidXRlIHRvIEdOVS9XZWViIHByb2pl
Y3QKPgo+IEFsdmlybyBJc2thbmRhcgo+CgpIaSBBbHZpcm8sCgpUaGUgbW9kdWxlIG1lbnRpb25l
ZCBvbiB0aGF0IGlzc3VlIHJlcXVpcmVzIGRhdGFiYXNlIHRvIHdvcmsgd2l0aC4gV2UKY3VycmVu
dGx5IGRvbid0IGhhdmUgZGF0YWJhc2Ugc3VwcG9ydCBmb3IgVGVsZWdyYW0gYm90LgoKSSBhbSBn
b2luZyB0byB1c2UgbXlzcWx4IGxpYnJhcnkgdG8gZ28gZm9yIGl0LiBJJ3ZlIHdyaXR0ZW4gYSBi
aXQKZGF0YWJhc2Ugc3VwcG9ydCAoY3VycmVudGx5IGl0IGNhbiBsb2cgcmVjZW50IGFjdGlvbiAo
YWRtaW4gb25seSkpLgoKU2VlIHdoYXQgSSBkaWQgaGVyZToKaHR0cHM6Ly9naXRodWIuY29tL2Ft
bWFyZmFpemkyL3RndmlzZC90cmVlL2Rldl8wMDIKCldoYXQgd2UgbmVlZCB0byBkbyBub3cgaXMg
dG8gbG9nIGV2ZXJ5dGhpbmcgd2UgaGF2ZSBvbiBUZWxlZ3JhbS4KRG8geW91IGhhdmUgYW55IGV4
cGVyaWVuY2Ugd2l0aCBNeVNRTCBkYXRhYmFzZT8gVGhhdCB3aWxsIGJlIGhlbHBmdWwgOikKClRo
YXQgcXVpeiBtb2R1bGUgaXMgbm90IGhpZ2ggcHJpb3JpdHksIGJ1dCBkYXRhYmFzZSBzdXBwb3J0
IGlzIGhpZ2gKcHJpb3JpdHkuIFdlIG5lZWQgbG9nZ2VyIGZpcnN0LCB0aGVuIHdlIGNhbiBhZGQg
bW9yZSBzdWJpbXBvcnRhbnQKbW9kdWxlcy4KClJlZ2FyZHMsCsKgIEFtbWFyCi0tLS0tQkVHSU4g
UEdQIFNJR05BVFVSRS0tLS0tCgppUUV6QkFFQkNnQWRGaUVFNkpOeWJjamt3TjQ3b2dFSE5rKzZO
UDhYQ2tzRkFtRUpUY1lBQ2drUU5rKzZOUDhYCkNrc2daZ2dBMDh5RFp4R0IySytEYjJMUGQybkhG
M0tYNTZHZUpac3NzcElrdnMwYzBBY3M3aTJQdGVKTlhFWVEKY2o5V2hiRU9mQXp2QzY3VFQxK2VN
LzNrWTJkUlFuOHNUWTJmdHNUOSt1Z01nbW14N3lVWjhvU1hhWnJCR1UzQQpYdzFpZEVHdDZOQTg5
aHJ0ZDRjWUZRMlpPdlV4ZXNCMldkS283UGdtS24rclBubVB1ZWloL2kzU1YzeEdKNldLClhueGRr
RXIvTk1TVVBKYTZ1QnlyN2RMa0dRbjFCaUx5REtqSkxobmVucGhJbVZsd0pESnhUNXhDNzNMTmh3
Z3YKNVFqYStGUXRFNmV0RW9RL2ZzeG0ycmM3YnZmd0lRMEZ4eE1TUkdZd05KcWZJM0QzRTdSczhZ
dFFKeWZ4ZHFHVQpNb05zTm5EdURFNjB3Q21xekhaNERwbzU5c1dFM0E9PQo9VGhLZgotLS0tLUVO
RCBQR1AgU0lHTkFUVVJFLS0tLS0KCi0tIApHV01MIG1haWxpbmcgbGlzdApHV01MQGdudXdlZWIu
b3JnCmh0dHBzOi8vZ3dtbC5nbnV3ZWViLm9yZy9saXN0aW5mby9nd21sCg==
