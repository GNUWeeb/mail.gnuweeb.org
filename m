Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id s7GsBMhbrmC3xQEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 14:31:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id BAF36C2A38;
	Wed, 26 May 2021 14:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622039495;
	bh=ufU0DmqStxWOoa+7OB7Nwur6xW8FwQiSYXlN4l9dtpk=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=Q/ImeoDpmzBLxXs41k9dSEYWvbH3MuPv1W9Q0gqmxiqIdwNyNoxRHyw8RGhchuJ5i
	 nJGnD/Na119eWncJalZ+D70l/rGuC+V1MN0LF6tLFU/eLuJ9loLLhZo+CkYNFld2lo
	 XS6idSs9Y2ky0cV9yr8QqPI32uLTzWKR4pal5Qh83jvM34S6Q+64n/TxscS+ChMqOL
	 zRlGC6EI0owmfdnOvCwfjE67yTuUElp8Y/foxwJIzzuts3J/eHs3P+go35IprgfJGg
	 IXlm24+0bKQCTznZ11o9qA47Pvt+smvzKnoGbdDpqfNvZFfy/jo9pSHmn4XEW+s6Oc
	 SXXQUkZ5MY88Q==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id DBE2AC2A38
 for <gwml@gnuweeb.org>; Wed, 26 May 2021 14:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622039494;
 bh=/MXZ+T6npYYwm/mPGwtbdUgWR6bT36sUAWDjdiKI8Po=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=CliY63t8JBs6yr3zFQuYNvaZxTG7wMwNy3kruYIqMFmGOXjErVaOUk6qDh7TaorcE
 wuRADE/8UvZiNQeC4ndpgQOpL09p2mcyUFC19km03X2chxa6TwvUsGvGsW6SK/l2K3
 0vdWPEJA7HV+p4aPqcQhK2XK943vNayt0zlXw7IzTviVNy5ReLubVRw8nh1Bh+A0u0
 FCM774aoTPA106olwIk9Jn75eSLBFtVByaFOjAIm0vl1zpJAfX/vLUZEb310cGjxO8
 29VL4sswNoZsFpfi/Di3yGDBwLamAUR2NGGn0LjMbZj6eMfK5X3bKyjCmwwBRRAD1g
 3EA6ybygV1ghA==
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
References: <04bd58b0-621b-e558-4ce0-f01d2e7ee277@gnuweeb.org>
 <b3d133d9-b128-1476-b326-3bd984e7b2e9@gnuweeb.org>
 <612b74c0-93a0-9594-e6d5-0af69eaeec12@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <0f7b03c1-96ee-f4d0-c29e-5e60d3ccb614@gnuweeb.org>
Date: Wed, 26 May 2021 21:31:29 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <612b74c0-93a0-9594-e6d5-0af69eaeec12@gnuweeb.org>
Content-Language: en-US
Subject: Re: [gwml] [Performance] Mail server log is too verbose due to
 debug log
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

VGhhbmsgeW91IHNvIG11Y2guIEkgd2lsbCB2ZXJpZnkgaXQuCgpPbiA1LzI2LzIxIDk6MjggUE0s
IFNwcml0ZSB3cm90ZToKPiBJIGhhdmUgZml4ZWQgdGhlIHByb2JsZW0sIGl0IHdhcyAiYXV0aF9k
ZWJ1ZyA9IHllcyIgYW5kIAo+ICJhdXRoX2RlYnVnX3Bhc3N3b3JkcyA9IHllcyIgb24gdGhlIC9l
dGMvZG92ZWNvdC9jb25mLmQvMTAtYXV0aC5jb25mIAo+IGZpbGUuCj4KPiBPbiAyNi8wNS8yMSAy
MS4yNCwgU3ByaXRlIHdyb3RlOgo+PiBJdCBsb29rcyBsaWtlLCBJIGZvcmdvdCB0byB0dXJuIG9m
ZiB0aGUgcGFzc3dvcmQgZGVidWcgbG9nLCB3aGVuIEkgCj4+IHdhcyB0cnlpbmcgdG8gZmluZCBv
dXQgd2h5IHRoZSBzZXJ2ZXIncyB2aXJ0dWFsIG1haWxzIGRvZXNuJ3Qgd29yay4gCj4+IEknbGwg
Y2hlY2sgb24gdGhpcy4KPj4KPj4gT24gMjYvMDUvMjEgMTcuMjcsIEFtbWFyIEZhaXppIHdyb3Rl
Ogo+Pj4gSGkgU3ByaXRlLAo+Pj4KPj4+IEkgZm91bmQgdGhhdCB0aGUgbWFpbCBzZXJ2ZXIgaXMg
eWllbGRpbmcgdmVyeSBsYXJnZSBhbW91bnQgb2YgZGVidWcKPj4+IGxvZyBpbiBqb3VybmFsY3Rs
IGZvciBldmVyeSBzaW1wbGUgYWN0aW9uIHdlIGRvIGluIG91ciBtYWlsIHNlcnZpY2UuCj4+Pgo+
Pj4gVGhlcmUgYXJlIHBsZW50eSBvZiBkZWJ1ZyBsb2cgbGlrZSB0aGlzOgo+Pj4gTWF5IDI2IDEw
OjIwOjI5IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGgtd29ya2VyKDExMjk2Nyk6IERlYnVn
OiAKPj4+IHNxbChhZG1pbkBnbnV3ZWViLm9yZyx4eHgueHh4LjE4NC4xNzQsPDhhLysvRGpENnFK
RXQ3aXU+KTogCj4+PiBDUllQVCh4eHh4eHh4eHh4KSAhPSAnJDJ5JDA1JHh4eHh4eHh4eHh4eHh4
eHh4eHh4eHh4eHh4eHh4eHh4eHh4eCcKPj4+IE1heSAyNiAxMDoyMDoyOSBnbnV3ZWViIGRvdmVj
b3RbODg5MTBdOiBhdXRoOiBEZWJ1ZzogCj4+PiBzcWwoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4
eC4xODQuMTc0LDw4YS8rL0RqRDZxSkV0N2l1Pik6IEZpbmlzaGVkIAo+Pj4gcGFzc2RiIGxvb2t1
cAo+Pj4gTWF5IDI2IDEwOjIwOjI5IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGg6IERlYnVn
OiAKPj4+IGF1dGgoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4eC4xODQuMTc0LDw4YS8rL0RqRDZx
SkV0N2l1Pik6IEF1dGggCj4+PiByZXF1ZXN0IGZpbmlzaGVkCj4+PiBNYXkgMjYgMTA6MjA6Mjkg
Z251d2VlYiBkb3ZlY290Wzg4OTEwXTogYXV0aC13b3JrZXIoMTEyOTY3KTogRGVidWc6IAo+Pj4g
c3FsKGFkbWluQGdudXdlZWIub3JnLHh4eC54eHguMTg0LjE3NCw8OGEvKy9EakQ2cUpFdDdpdT4p
OiBGaW5pc2hlZCAKPj4+IHBhc3NkYiBsb29rdXAKPj4+IE1heSAyNiAxMDoyMDoyOSBnbnV3ZWVi
IGRvdmVjb3RbODg5MTBdOiBhdXRoLXdvcmtlcigxMTI5NjcpOiBEZWJ1ZzogCj4+PiBjb25uIHVu
aXg6YXV0aC13b3JrZXIgKHBpZD0xMTI5NjYsdWlkPTExMyk6IGF1dGgtd29ya2VyPDg+OiBGaW5p
c2hlZAo+Pj4gTWF5IDI2IDEwOjIwOjMxIGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGg6IERl
YnVnOiBjbGllbnQgcGFzc2RiIAo+Pj4gb3V0OiBGQUlMwqDCoMKgwqDCoMKgwqAgM8KgwqDCoMKg
wqDCoMKgIHVzZXI9YWRtaW5AZ251d2VlYi5vcmcKPj4+IGBgYAo+Pj4KPj4+IFdlIHByb2JhYmx5
IGNhbiBpbXByb3ZlIHRoZSBzZXJ2ZXIgcGVyZm9ybWFuY2UgaWYgd2UgY2FuIHR1cm4gb2ZmIHRo
aXMKPj4+IGRlYnVnIGxvZy4gQWxzbywgYXMgd2Uga25vdyB0aGlzIGxvZyBpcyB3cml0dGVuIHRv
IGRpc2suIFdlIGNhbiBzYXZlCj4+PiBhIGxvdCBvZiBJL08gb3BlcmF0aW9ucyBpZiB3ZSB0dXJu
IG9mZiB0aGUgZGVidWcgbW9kZS4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gwqAgQW1tYXIgRmFpemkK
Pj4+Ci0tIApHV01MIG1haWxpbmcgbGlzdApHV01MQGdudXdlZWIub3JnCmh0dHBzOi8vZ3dtbC5n
bnV3ZWViLm9yZy9saXN0aW5mby9nd21sCg==
