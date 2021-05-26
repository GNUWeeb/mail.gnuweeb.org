Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id ITTFOhlarmCkxAEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 14:24:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id ABE5AC2A21;
	Wed, 26 May 2021 14:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622039065;
	bh=hUBlIDGK10GXAqa3ONt2fJCkpNL6sC/VekhiiwHI5cg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=ZhZLZYDtsw1ynbApAs77C22JBbez0NPkNYWNZNfjHVGSk6uUNnox487vz/UgqT9fM
	 efmvHBake21OGmeyA1yqyrTndeKUFx0FFjkXXJl4XKTuBZOP1WZgkmHsW7DXd3fvfg
	 BvFdGcION1B0ZkQHNNX5WBhy7yqKl+9Q0FVMNNchr6Xd7DC+SXitwVQf9T1dqZNJxO
	 KgWB8FKS/f3y0dgtirqzmg02yx3i10e6DvnSAFM+8hUwXBRPE0P6Axqd+j7I+fXdvb
	 XguAgTnT2CpP3bNCIQNiP7uE5ekzNPoyk7sbpUI2nIsaAeHswAZDm/BzWQFVhPbVKi
	 Gujn5CIQZbajA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.1.11] (unknown [149.110.149.72])
 by gnuweeb.org (Postfix) with ESMTPSA id 2F3FFC2A2B;
 Wed, 26 May 2021 14:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622039064;
 bh=EgJufthES5Wgvy4mNpDrakCcu3Fb9GZFRwfdpCmG+kE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=gMYywrCJ0QJCsZ3Q9pofjvKUD5iT43yiDNdhUGvrco39N/Y0NWVQLiFChDH4p9D+g
 3vABfimYEeiHioQlejVbSjqvnMHCS7q8PO2Bi0mZOpGlm/BhCpsfGbV1vcNSvRu0Vb
 qCmocUwMhMfiaI6hbO7LtyugzkK/w4taZhnnkKiLVFpufIFzxfk03GUaeL+bMdt0TW
 8GGuz68M4dXFFrvBCX26TfseqfbheCZs33HH10fbX6psz0MtqWDwtwvzkcxZMc0d+j
 /bxOlUsFDy1hzEQpl23Ni1pjISOzePBQAB1UZUoZ97kwQeN2uxEzCalzqCSZglP44n
 YVhPqRnq5fo4Q==
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
References: <04bd58b0-621b-e558-4ce0-f01d2e7ee277@gnuweeb.org>
From: Sprite <sprite@gnuweeb.org>
Message-ID: <b3d133d9-b128-1476-b326-3bd984e7b2e9@gnuweeb.org>
Date: Wed, 26 May 2021 21:24:05 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <04bd58b0-621b-e558-4ce0-f01d2e7ee277@gnuweeb.org>
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

SXQgbG9va3MgbGlrZSwgSSBmb3Jnb3QgdG8gdHVybiBvZmYgdGhlIHBhc3N3b3JkIGRlYnVnIGxv
Zywgd2hlbiBJIHdhcyAKdHJ5aW5nIHRvIGZpbmQgb3V0IHdoeSB0aGUgc2VydmVyJ3MgdmlydHVh
bCBtYWlscyBkb2Vzbid0IHdvcmsuIEknbGwgCmNoZWNrIG9uIHRoaXMuCgpPbiAyNi8wNS8yMSAx
Ny4yNywgQW1tYXIgRmFpemkgd3JvdGU6Cj4gSGkgU3ByaXRlLAo+Cj4gSSBmb3VuZCB0aGF0IHRo
ZSBtYWlsIHNlcnZlciBpcyB5aWVsZGluZyB2ZXJ5IGxhcmdlIGFtb3VudCBvZiBkZWJ1Zwo+IGxv
ZyBpbiBqb3VybmFsY3RsIGZvciBldmVyeSBzaW1wbGUgYWN0aW9uIHdlIGRvIGluIG91ciBtYWls
IHNlcnZpY2UuCj4KPiBUaGVyZSBhcmUgcGxlbnR5IG9mIGRlYnVnIGxvZyBsaWtlIHRoaXM6Cj4g
TWF5IDI2IDEwOjIwOjI5IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGgtd29ya2VyKDExMjk2
Nyk6IERlYnVnOiAKPiBzcWwoYWRtaW5AZ251d2VlYi5vcmcseHh4Lnh4eC4xODQuMTc0LDw4YS8r
L0RqRDZxSkV0N2l1Pik6IAo+IENSWVBUKHh4eHh4eHh4eHgpICE9ICckMnkkMDUkeHh4eHh4eHh4
eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4Jwo+IE1heSAyNiAxMDoyMDoyOSBnbnV3ZWViIGRv
dmVjb3RbODg5MTBdOiBhdXRoOiBEZWJ1ZzogCj4gc3FsKGFkbWluQGdudXdlZWIub3JnLHh4eC54
eHguMTg0LjE3NCw8OGEvKy9EakQ2cUpFdDdpdT4pOiBGaW5pc2hlZCAKPiBwYXNzZGIgbG9va3Vw
Cj4gTWF5IDI2IDEwOjIwOjI5IGdudXdlZWIgZG92ZWNvdFs4ODkxMF06IGF1dGg6IERlYnVnOiAK
PiBhdXRoKGFkbWluQGdudXdlZWIub3JnLHh4eC54eHguMTg0LjE3NCw8OGEvKy9EakQ2cUpFdDdp
dT4pOiBBdXRoIAo+IHJlcXVlc3QgZmluaXNoZWQKPiBNYXkgMjYgMTA6MjA6MjkgZ251d2VlYiBk
b3ZlY290Wzg4OTEwXTogYXV0aC13b3JrZXIoMTEyOTY3KTogRGVidWc6IAo+IHNxbChhZG1pbkBn
bnV3ZWViLm9yZyx4eHgueHh4LjE4NC4xNzQsPDhhLysvRGpENnFKRXQ3aXU+KTogRmluaXNoZWQg
Cj4gcGFzc2RiIGxvb2t1cAo+IE1heSAyNiAxMDoyMDoyOSBnbnV3ZWViIGRvdmVjb3RbODg5MTBd
OiBhdXRoLXdvcmtlcigxMTI5NjcpOiBEZWJ1ZzogCj4gY29ubiB1bml4OmF1dGgtd29ya2VyIChw
aWQ9MTEyOTY2LHVpZD0xMTMpOiBhdXRoLXdvcmtlcjw4PjogRmluaXNoZWQKPiBNYXkgMjYgMTA6
MjA6MzEgZ251d2VlYiBkb3ZlY290Wzg4OTEwXTogYXV0aDogRGVidWc6IGNsaWVudCBwYXNzZGIg
Cj4gb3V0OiBGQUlMwqDCoMKgwqDCoMKgwqAgM8KgwqDCoMKgwqDCoMKgIHVzZXI9YWRtaW5AZ251
d2VlYi5vcmcKPiBgYGAKPgo+IFdlIHByb2JhYmx5IGNhbiBpbXByb3ZlIHRoZSBzZXJ2ZXIgcGVy
Zm9ybWFuY2UgaWYgd2UgY2FuIHR1cm4gb2ZmIHRoaXMKPiBkZWJ1ZyBsb2cuIEFsc28sIGFzIHdl
IGtub3cgdGhpcyBsb2cgaXMgd3JpdHRlbiB0byBkaXNrLiBXZSBjYW4gc2F2ZQo+IGEgbG90IG9m
IEkvTyBvcGVyYXRpb25zIGlmIHdlIHR1cm4gb2ZmIHRoZSBkZWJ1ZyBtb2RlLgo+Cj4gUmVnYXJk
cywKPiDCoCBBbW1hciBGYWl6aQo+Ci0tIApHV01MIG1haWxpbmcgbGlzdApHV01MQGdudXdlZWIu
b3JnCmh0dHBzOi8vZ3dtbC5nbnV3ZWViLm9yZy9saXN0aW5mby9nd21sCg==
