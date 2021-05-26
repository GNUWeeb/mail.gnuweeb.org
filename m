Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id uOOHIh9brmBsxQEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 14:28:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 4CB6FC2A1D;
	Wed, 26 May 2021 14:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622039327;
	bh=KkDtsoVZzAndpKsgeylHuQ9mJWsE7eEr5cOuDRK+y1U=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=aKhc6Xr25wnO9rgwohYfd5NWyTBsTZv/mHiq8tJT220Skmfhk5rEI8Sd304LJNkCu
	 ZWmznSuVLxhxDjJErnLKNdQ+oVedpb2tom8MO7zqwox2FWI/LUBM+FO77/DkTFOUBT
	 jPVAZ0bQg1kSCGQkwk1sfXatNE/QgvzYS8cNtJtex0Gf/zCaEUhQ7IcrFB0F4IoZ6j
	 ZXu5chL5A6nLbcPE/MXAuDDBOLg9R0jq5KCDxWF8c/XKPCVBvXfry/5AXBfr/4tnez
	 UheogL5tP5hrNoiH1SRjM8YAPbVoEhU52ztmuFY+XCb5Y9GbsCQozVYoQ6z9nDbLiq
	 f5UQtJuPAdhTg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.1.11] (unknown [149.110.149.72])
 by gnuweeb.org (Postfix) with ESMTPSA id 2F487C2A1D;
 Wed, 26 May 2021 14:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622039325;
 bh=LasKOuEdbODSiISRXRiCl7tesiUJ/d+96rlpyEa2eQg=;
 h=Subject:From:To:Cc:Reply-To:References:Date:In-Reply-To:From;
 b=YKgSHEYmNUnHrx8mQ4eheA4PW2XnK0UGit/Th9kimVXfI2G3zejaNd0gEqFPeSLqL
 2euIP1b46zyiX01za9DJbKyIPNN1szlrQQxDq+ZxkfqbNEzKZTUk5coDHBb6w8ACVL
 83OYQnLBAqgr56E6fEtfJRFgEElBRSOvngltP5WFVmFl5t4tQZODm/cAwKQ34JPdC1
 6PjbQsbg00BiQ4ewjFhGiZGfugdaYpW3bBEBT4B33yAVf40bZ8X5fc+vHYWMZrqHwS
 yIV8QpwvQ3HQCJMH7BmUnX9e50GdWkEK2cv51/1xkAbFly//J+P5LrJkWtNpnmSu30
 Y4jeIMRME+iQA==
From: Sprite <sprite@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
References: <04bd58b0-621b-e558-4ce0-f01d2e7ee277@gnuweeb.org>
 <b3d133d9-b128-1476-b326-3bd984e7b2e9@gnuweeb.org>
Message-ID: <612b74c0-93a0-9594-e6d5-0af69eaeec12@gnuweeb.org>
Date: Wed, 26 May 2021 21:28:43 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <b3d133d9-b128-1476-b326-3bd984e7b2e9@gnuweeb.org>
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
Cc: gwml@gnuweeb.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

SSBoYXZlIGZpeGVkIHRoZSBwcm9ibGVtLCBpdCB3YXMgImF1dGhfZGVidWcgPSB5ZXMiIGFuZCAK
ImF1dGhfZGVidWdfcGFzc3dvcmRzID0geWVzIiBvbiB0aGUgL2V0Yy9kb3ZlY290L2NvbmYuZC8x
MC1hdXRoLmNvbmYgZmlsZS4KCk9uIDI2LzA1LzIxIDIxLjI0LCBTcHJpdGUgd3JvdGU6Cj4gSXQg
bG9va3MgbGlrZSwgSSBmb3Jnb3QgdG8gdHVybiBvZmYgdGhlIHBhc3N3b3JkIGRlYnVnIGxvZywg
d2hlbiBJIHdhcyAKPiB0cnlpbmcgdG8gZmluZCBvdXQgd2h5IHRoZSBzZXJ2ZXIncyB2aXJ0dWFs
IG1haWxzIGRvZXNuJ3Qgd29yay4gSSdsbCAKPiBjaGVjayBvbiB0aGlzLgo+Cj4gT24gMjYvMDUv
MjEgMTcuMjcsIEFtbWFyIEZhaXppIHdyb3RlOgo+PiBIaSBTcHJpdGUsCj4+Cj4+IEkgZm91bmQg
dGhhdCB0aGUgbWFpbCBzZXJ2ZXIgaXMgeWllbGRpbmcgdmVyeSBsYXJnZSBhbW91bnQgb2YgZGVi
dWcKPj4gbG9nIGluIGpvdXJuYWxjdGwgZm9yIGV2ZXJ5IHNpbXBsZSBhY3Rpb24gd2UgZG8gaW4g
b3VyIG1haWwgc2VydmljZS4KPj4KPj4gVGhlcmUgYXJlIHBsZW50eSBvZiBkZWJ1ZyBsb2cgbGlr
ZSB0aGlzOgo+PiBNYXkgMjYgMTA6MjA6MjkgZ251d2VlYiBkb3ZlY290Wzg4OTEwXTogYXV0aC13
b3JrZXIoMTEyOTY3KTogRGVidWc6IAo+PiBzcWwoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4eC4x
ODQuMTc0LDw4YS8rL0RqRDZxSkV0N2l1Pik6IAo+PiBDUllQVCh4eHh4eHh4eHh4KSAhPSAnJDJ5
JDA1JHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eCcKPj4gTWF5IDI2IDEwOjIw
OjI5IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGg6IERlYnVnOiAKPj4gc3FsKGFkbWluQGdu
dXdlZWIub3JnLHh4eC54eHguMTg0LjE3NCw8OGEvKy9EakQ2cUpFdDdpdT4pOiBGaW5pc2hlZCAK
Pj4gcGFzc2RiIGxvb2t1cAo+PiBNYXkgMjYgMTA6MjA6MjkgZ251d2VlYiBkb3ZlY290Wzg4OTEw
XTogYXV0aDogRGVidWc6IAo+PiBhdXRoKGFkbWluQGdudXdlZWIub3JnLHh4eC54eHguMTg0LjE3
NCw8OGEvKy9EakQ2cUpFdDdpdT4pOiBBdXRoIAo+PiByZXF1ZXN0IGZpbmlzaGVkCj4+IE1heSAy
NiAxMDoyMDoyOSBnbnV3ZWViIGRvdmVjb3RbODg5MTBdOiBhdXRoLXdvcmtlcigxMTI5NjcpOiBE
ZWJ1ZzogCj4+IHNxbChhZG1pbkBnbnV3ZWViLm9yZyx4eHgueHh4LjE4NC4xNzQsPDhhLysvRGpE
NnFKRXQ3aXU+KTogRmluaXNoZWQgCj4+IHBhc3NkYiBsb29rdXAKPj4gTWF5IDI2IDEwOjIwOjI5
IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGgtd29ya2VyKDExMjk2Nyk6IERlYnVnOiAKPj4g
Y29ubiB1bml4OmF1dGgtd29ya2VyIChwaWQ9MTEyOTY2LHVpZD0xMTMpOiBhdXRoLXdvcmtlcjw4
PjogRmluaXNoZWQKPj4gTWF5IDI2IDEwOjIwOjMxIGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1
dGg6IERlYnVnOiBjbGllbnQgcGFzc2RiIAo+PiBvdXQ6IEZBSUzCoMKgwqDCoMKgwqDCoCAzwqDC
oMKgwqDCoMKgwqAgdXNlcj1hZG1pbkBnbnV3ZWViLm9yZwo+PiBgYGAKPj4KPj4gV2UgcHJvYmFi
bHkgY2FuIGltcHJvdmUgdGhlIHNlcnZlciBwZXJmb3JtYW5jZSBpZiB3ZSBjYW4gdHVybiBvZmYg
dGhpcwo+PiBkZWJ1ZyBsb2cuIEFsc28sIGFzIHdlIGtub3cgdGhpcyBsb2cgaXMgd3JpdHRlbiB0
byBkaXNrLiBXZSBjYW4gc2F2ZQo+PiBhIGxvdCBvZiBJL08gb3BlcmF0aW9ucyBpZiB3ZSB0dXJu
IG9mZiB0aGUgZGVidWcgbW9kZS4KPj4KPj4gUmVnYXJkcywKPj4gwqAgQW1tYXIgRmFpemkKPj4K
LS0gCkdXTUwgbWFpbGluZyBsaXN0CkdXTUxAZ251d2VlYi5vcmcKaHR0cHM6Ly9nd21sLmdudXdl
ZWIub3JnL2xpc3RpbmZvL2d3bWwK
