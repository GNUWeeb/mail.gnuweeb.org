Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id r4V0OhsatGCu1wQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 30 May 2021 23:04:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 90DE1C2AEC;
	Sun, 30 May 2021 23:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622415899;
	bh=MOK6sxFa+gu5dcmGl6EvTOuQ9+/qAj/nUzkriTz4Rls=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=eYDfihEUneR8tAvNtI8q0lnY9AlbFeMWLz7ZeQTAOp/8IlYVbSlz2JsoREe0euTwT
	 NV6V5NfalUbAzV/GFwbngAVkzLzpgBCgrjIcZBi1ihdm9t7+wPvm5aX/2zatXk4pX5
	 JzoEcUjq4Jy1vDMGKpCBjd1f7hFJZJwMTnJNvhD2NR7Y0aXR2j0EWv4R8SCGjKTTX/
	 +MCkUW/Dhp5ERC95ivBvqlggIBcAK/ubcI0osgdh4VYyO+/X5dPQN/g2Uk8aa1SZgX
	 0DSCFeOajdVFbuMb9EIcVhJqVoaJf5rdk2WKq5cz/uLFu1usF/gXYoCNx2NiJ50uAF
	 hugEHjBrsraLw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id BAE19C2A6C
 for <gwml@gnuweeb.org>; Sun, 30 May 2021 23:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622415898;
 bh=oh8dmZym6HqofPZ/Tsrh25h1qgbgl/bBZHmcMM1LyNs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=fYudtQKHGoIi91lnWsHkeutfso6mKZzEunmFjLMCKTPHQMDyexeWHnVehtOzkrGYM
 c00RGozz4yXLSX6HCr9BPJ1Pg9bcGoios+jx9cb1KvCjX/KpI5NO645uOo0zD2aKDp
 XqXyI5MD/uVlIYgY5OEEBduGcT/Xl+7YNIaIymJA1ppSzdzv/IOMx+kMo5PAHS5fth
 y/CTeju54u6/cpdSHQ+b3SDJURmRb/+dwnYuxe+lXL9OJuDXEo3cR9JzUqpqJOph1b
 8JeAAEXSq8UAfuNyLjcA4CEsK4G9Pe1Iw22E/krUcTFYmjF1kOLWdnGD8d2O8fdJta
 Fj0u5yoN0lClw==
Subject: Re: Auto backup is experiencing slow upload
To: gwml@gnuweeb.org
References: <65757393-183c-3e17-669e-321965855d67@gnuweeb.org>
 <f7890495-a111-8061-07f9-6da7c70f770f@gnuweeb.org>
 <CABQ4W=MVfo9i3x7THF4UFLxQjv6BnJPnQiaOV33N09rW16cD5w@mail.gmail.com>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <ad18f555-d1c8-b5ac-963f-7f8746260713@gnuweeb.org>
Date: Mon, 31 May 2021 06:04:54 +0700
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

ID4gSGkgZXZlcnlvbmUsIEFzIEkga25vdyBmcm9tIG15IGZyaWVuZHMsIGNsb3VkIHByb3ZpZGVy
IHdlIHVzZQogPiBzb21ld2hhdCBsaW1pdCBiYW5kd2lkdGggdG8gb3V0c2lkZSBJSVggYW5kIFRl
bGVncmFtIGFzaWEgc2VydmVyIGlzCiA+IGhvc3RlZCBvdXNpZGUgSUlYLgogPgogPiBJSVggPSBJ
bmRvbmVzaWEgSW50ZXJuZXQgRXhjaGFuZ2UKCkl0IHNlZW1zIGl0IHdhcyBqdXN0IGEgdGVtcG9y
YXJ5IG5ldHdvcmsgaXNzdWUuIEkgZG9uJ3QgdGhpbmsgd2UgZ290CnJhdGUgbGltaXRlZCBqdXN0
IGZvciB1cGxvYWRpbmcgZmlsZXMgdW5kZXIgMTAwIE1CIChBVE0sIGFzIHRoZSBmaWxlCnNpemUg
bWF5IGdyb3cpLgoKTGV0J3Mgc2VlIHdoZXRoZXIgdGhlIGlzc3VlIHdpbGwgb2NjdXIgYWdhaW4g
b3Igbm90LiBUaGUgYmFja3VwIGlzCnNjaGVkdWxlZCBldmVyeSAxMiBob3VycyAoYXQgMTIgQU0g
YW5kIDEyIFBNIFVUQykuIFRoaXMgbWVhbnMgdGhlIG5leHQKYmFja3VwIHdpbGwgYmUgZG9uZSB0
aGlzIG1vcm5pbmcgYXQgNyBBTSAoR01UKzcpLgoKIMKgIEFtbWFyCgotLSAKR1dNTCBtYWlsaW5n
IGxpc3QKR1dNTEBnbnV3ZWViLm9yZwpodHRwczovL2d3bWwuZ251d2VlYi5vcmcvbGlzdGluZm8v
Z3dtbAo=
