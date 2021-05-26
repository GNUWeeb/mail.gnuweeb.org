Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id KGCICY9grmDKxwEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 14:51:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D4D9FC2A3B;
	Wed, 26 May 2021 14:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622040718;
	bh=SjRzthrqc578ulzoCL4eFDaW8PswWqm9Yqeoe/kXBJ0=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=b2ru62nrt+sK2bpP0VhZ7M5lF/q+/E+n2xuPq00eyukR9m1e31AA1ilg60gePCHk1
	 9oTEyAnzt5y/cGF8hEMhdnpqs57jpGi50vGq0V0+PUgExK5YhwIvwhCwoL39lWVmC7
	 wXOqNbMZrTCN/kEuBO/YCIS3Zz6sOTOLjPum3maPBSHJTBcoN51fhHxaHJHvpoBDmH
	 uhO5LdlDduQX39lmGX92QuAIfovv32fft1z52uFxdi3xFlaAYdvaC9Sh2waTxXO7e9
	 jWOAZrbkvFa9qhLF2345GDbgeoKzZukFNmfn01Wx/jXSItA6zoQGt4vjY/p527RtlM
	 g91vTgKkRqBEw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 199F1C2A26
 for <gwml@gnuweeb.org>; Wed, 26 May 2021 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622040717;
 bh=55AEvNmZFxXyFDTO7mvcmZk7RmT+QvDH2Ze1mCaXrw0=;
 h=Subject:From:To:Reply-To:References:Date:In-Reply-To:From;
 b=NxDI6+NrkjX3ZB9HRRFzFNiwfpEakiJmjQLkPDKFLxAxR2DaMNvCySgVPq+Y7ENbZ
 yYa2BSi6PnFgEsIYkt4IzDNi7xmjxQqjU96mteUuStt2LMcvVBef+jJMH2ii8zhRf4
 vOYCqZQuxQL5rYvKHvv1i5uhWlTVMPzVt4OsWoRKoRAFdGP05FfKF3Grnf03ddu6Jd
 6j+p/OWTJhmy3KtWHAjPqc/kHtDqDxcktKN5FCccH3K0VTqpJSTfpupDOt9ma4FUzs
 b0yR8nfxtr+6prh1tXHn0Iw/QNGyzx9rplbmU1c9lZeKH9EgGwnR0VVdENmV+VaYez
 AtSC9ddqb8BBA==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
References: <04bd58b0-621b-e558-4ce0-f01d2e7ee277@gnuweeb.org>
 <b3d133d9-b128-1476-b326-3bd984e7b2e9@gnuweeb.org>
 <612b74c0-93a0-9594-e6d5-0af69eaeec12@gnuweeb.org>
 <0f7b03c1-96ee-f4d0-c29e-5e60d3ccb614@gnuweeb.org>
Message-ID: <393cab02-4487-0267-902b-09b5be3cd875@gnuweeb.org>
Date: Wed, 26 May 2021 21:51:52 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <0f7b03c1-96ee-f4d0-c29e-5e60d3ccb614@gnuweeb.org>
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

WWVzLCBpdCBpcyBmaXhlZC4gVGhlIGRlYnVnIG1vZGUgaXMgb2ZmIGJ5IG5vdy4KCk9uIDUvMjYv
MjEgOTozMSBQTSwgQW1tYXIgRmFpemkgd3JvdGU6Cj4gVGhhbmsgeW91IHNvIG11Y2guIEkgd2ls
bCB2ZXJpZnkgaXQuCj4KPiBPbiA1LzI2LzIxIDk6MjggUE0sIFNwcml0ZSB3cm90ZToKPj4gSSBo
YXZlIGZpeGVkIHRoZSBwcm9ibGVtLCBpdCB3YXMgImF1dGhfZGVidWcgPSB5ZXMiIGFuZCAKPj4g
ImF1dGhfZGVidWdfcGFzc3dvcmRzID0geWVzIiBvbiB0aGUgL2V0Yy9kb3ZlY290L2NvbmYuZC8x
MC1hdXRoLmNvbmYgCj4+IGZpbGUuCj4+Cj4+IE9uIDI2LzA1LzIxIDIxLjI0LCBTcHJpdGUgd3Jv
dGU6Cj4+PiBJdCBsb29rcyBsaWtlLCBJIGZvcmdvdCB0byB0dXJuIG9mZiB0aGUgcGFzc3dvcmQg
ZGVidWcgbG9nLCB3aGVuIEkgCj4+PiB3YXMgdHJ5aW5nIHRvIGZpbmQgb3V0IHdoeSB0aGUgc2Vy
dmVyJ3MgdmlydHVhbCBtYWlscyBkb2Vzbid0IHdvcmsuIAo+Pj4gSSdsbCBjaGVjayBvbiB0aGlz
Lgo+Pj4KPj4+IE9uIDI2LzA1LzIxIDE3LjI3LCBBbW1hciBGYWl6aSB3cm90ZToKPj4+PiBIaSBT
cHJpdGUsCj4+Pj4KPj4+PiBJIGZvdW5kIHRoYXQgdGhlIG1haWwgc2VydmVyIGlzIHlpZWxkaW5n
IHZlcnkgbGFyZ2UgYW1vdW50IG9mIGRlYnVnCj4+Pj4gbG9nIGluIGpvdXJuYWxjdGwgZm9yIGV2
ZXJ5IHNpbXBsZSBhY3Rpb24gd2UgZG8gaW4gb3VyIG1haWwgc2VydmljZS4KPj4+Pgo+Pj4+IFRo
ZXJlIGFyZSBwbGVudHkgb2YgZGVidWcgbG9nIGxpa2UgdGhpczoKPj4+PiBNYXkgMjYgMTA6MjA6
MjkgZ251d2VlYiBkb3ZlY290Wzg4OTEwXTogYXV0aC13b3JrZXIoMTEyOTY3KTogRGVidWc6IAo+
Pj4+IHNxbChhZG1pbkBnbnV3ZWViLm9yZyx4eHgueHh4LjE4NC4xNzQsPDhhLysvRGpENnFKRXQ3
aXU+KTogCj4+Pj4gQ1JZUFQoeHh4eHh4eHh4eCkgIT0gJyQyeSQwNSR4eHh4eHh4eHh4eHh4eHh4
eHh4eHh4eHh4eHh4eHh4eHh4eHgnCj4+Pj4gTWF5IDI2IDEwOjIwOjI5IGdudXdlZWIgZG92ZWNv
dFs4ODkxMF06IGF1dGg6IERlYnVnOiAKPj4+PiBzcWwoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4
eC4xODQuMTc0LDw4YS8rL0RqRDZxSkV0N2l1Pik6IEZpbmlzaGVkIAo+Pj4+IHBhc3NkYiBsb29r
dXAKPj4+PiBNYXkgMjYgMTA6MjA6MjkgZ251d2VlYiBkb3ZlY290Wzg4OTEwXTogYXV0aDogRGVi
dWc6IAo+Pj4+IGF1dGgoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4eC4xODQuMTc0LDw4YS8rL0Rq
RDZxSkV0N2l1Pik6IEF1dGggCj4+Pj4gcmVxdWVzdCBmaW5pc2hlZAo+Pj4+IE1heSAyNiAxMDoy
MDoyOSBnbnV3ZWViIGRvdmVjb3RbODg5MTBdOiBhdXRoLXdvcmtlcigxMTI5NjcpOiBEZWJ1Zzog
Cj4+Pj4gc3FsKGFkbWluQGdudXdlZWIub3JnLHh4eC54eHguMTg0LjE3NCw8OGEvKy9EakQ2cUpF
dDdpdT4pOiBGaW5pc2hlZCAKPj4+PiBwYXNzZGIgbG9va3VwCj4+Pj4gTWF5IDI2IDEwOjIwOjI5
IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGgtd29ya2VyKDExMjk2Nyk6IERlYnVnOiAKPj4+
PiBjb25uIHVuaXg6YXV0aC13b3JrZXIgKHBpZD0xMTI5NjYsdWlkPTExMyk6IGF1dGgtd29ya2Vy
PDg+OiBGaW5pc2hlZAo+Pj4+IE1heSAyNiAxMDoyMDozMSBnbnV3ZWViIGRvdmVjb3RbODg5MTBd
OiBhdXRoOiBEZWJ1ZzogY2xpZW50IHBhc3NkYiAKPj4+PiBvdXQ6IEZBSUzCoMKgwqDCoMKgwqDC
oCAzwqDCoMKgwqDCoMKgwqAgdXNlcj1hZG1pbkBnbnV3ZWViLm9yZwo+Pj4+IGBgYAo+Pj4+Cj4+
Pj4gV2UgcHJvYmFibHkgY2FuIGltcHJvdmUgdGhlIHNlcnZlciBwZXJmb3JtYW5jZSBpZiB3ZSBj
YW4gdHVybiBvZmYgdGhpcwo+Pj4+IGRlYnVnIGxvZy4gQWxzbywgYXMgd2Uga25vdyB0aGlzIGxv
ZyBpcyB3cml0dGVuIHRvIGRpc2suIFdlIGNhbiBzYXZlCj4+Pj4gYSBsb3Qgb2YgSS9PIG9wZXJh
dGlvbnMgaWYgd2UgdHVybiBvZmYgdGhlIGRlYnVnIG1vZGUuCj4+Pj4KPj4+PiBSZWdhcmRzLAo+
Pj4+IMKgIEFtbWFyIEZhaXppCj4+Pj4KLS0gCkdXTUwgbWFpbGluZyBsaXN0CkdXTUxAZ251d2Vl
Yi5vcmcKaHR0cHM6Ly9nd21sLmdudXdlZWIub3JnL2xpc3RpbmZvL2d3bWwK
