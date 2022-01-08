Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id QBtlEiXc2GHkTAQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 08 Jan 2022 00:34:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id E7159C170F;
	Sat,  8 Jan 2022 00:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641602083;
	bh=Xs9/Ax99t1gvkK5xt18P42zeijXnN2SEJae4iqVxMsk=;
	h=Date:Subject:To:References:From:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=Mn6DQDQM6vph+L6AGTcp3a77PJGKjiIbLPKUkVYPqwq0RaxUZfioODAE2/yvSYdvv
	 iZAsfn7oMusoD5Ypl/rYc+Oh4R4+epcnhlQdOyEo3DAKh9Mixr6BZiud02He6Hk98l
	 mRAVcsl7F1TizuUdL0hpR6rsfgvIRxq4pswUi4eWDuoOByA6ag+6EqwLpj6ZoPXoyA
	 Ew32hHW6fTSPvhS8ZeOfmKPy9T6YIuhMdD1aL2ZThg1vCrp9DTXP84LkKh9YZq2O+M
	 kGUZARew843Grdw93wG38CiYuafeDGTPiP/2iXUCUjDRZlTCr92kG5sfqeBNSb/9jA
	 QQi5XInEV8R8A==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.88.87] (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id CEEB9C16A3;
 Sat,  8 Jan 2022 00:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641602083;
 bh=0xcjPoPfkzyVc5Gka7zNxUOAxnE7w/mp3ZC5xlgICrs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=AAS0a1q7Z58b3PdeHM9ClLOUa8v1yP0XXtCzEv88OBs9vCXcj9xIR5iO4SIDnQ0jp
 LGE23zjFPj7a+0+Bb5o+nxy+2RadeYBvibZg7GvfWf84RQ+EQTTV2AYrWgZUAwBzBB
 lcdSF30vKioN6EUaYtGRMjk9nbFcJAjPUutq46SWRFxN9uxd9eKOs7tQ7P2sUgJ6w9
 +g2hhaxIEZdqD/+DCxWWrL5sGUYwpfKYWiHPxPPTBMRthV+mB9rCBaB5eo7ObXrLY7
 8cnd0XY9UeJj04hH+J/iR4M79xhyAhrZ4ucVLkL36ghy9wlSMGBGrxTMwgCxnttM72
 j5vuqL2NnKSJA==
Message-ID: <6d10d7e4-8af4-5398-7c08-8d111d1179ee@gnuweeb.org>
Date: Sat, 8 Jan 2022 07:34:42 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v1 2/3] x86/entry/64: Add info about registers on exit
Content-Language: en-US
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
References: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
 <20220107235210.1339168-3-ammarfaizi2@gnuweeb.org>
 <5d1a9dff-6319-14a6-ad81-97350a6849af@kernel.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
In-Reply-To: <5d1a9dff-6319-14a6-ad81-97350a6849af@kernel.org>
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
Cc: "H.J. Lu" <hjl.tools@gmail.com>, Michael Matz <matz@suse.de>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, x86-ml <x86@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Willy Tarreau <w@1wt.eu>
Content-Type: multipart/mixed; boundary="===============2368526876020072864=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2368526876020072864==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------S0MaOf4czMBu0L1g6p8RczRv"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------S0MaOf4czMBu0L1g6p8RczRv
Content-Type: multipart/mixed; boundary="------------mYuysVt05c8ZcM1WrKYlRuzx";
 protected-headers="v1"
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
Cc: x86-ml <x86@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, Michael Matz <matz@suse.de>,
 "H.J. Lu" <hjl.tools@gmail.com>, Willy Tarreau <w@1wt.eu>
Message-ID: <6d10d7e4-8af4-5398-7c08-8d111d1179ee@gnuweeb.org>
Subject: Re: [PATCH v1 2/3] x86/entry/64: Add info about registers on exit
References: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
 <20220107235210.1339168-3-ammarfaizi2@gnuweeb.org>
 <5d1a9dff-6319-14a6-ad81-97350a6849af@kernel.org>
In-Reply-To: <5d1a9dff-6319-14a6-ad81-97350a6849af@kernel.org>

--------------mYuysVt05c8ZcM1WrKYlRuzx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMS84LzIyIDc6MDMgQU0sIEFuZHkgTHV0b21pcnNraSB3cm90ZToNCj4gT24gMS83LzIy
IDE1OjUyLCBBbW1hciBGYWl6aSB3cm90ZToNCj4+IFRoZXJlIHdhcyBhIGNvbnRyb3ZlcnNp
YWwgZGlzY3Vzc2lvbiBhYm91dCB0aGUgd29yZGluZyBpbiB0aGUgU3lzdGVtDQo+PiBWIEFC
SSBkb2N1bWVudCByZWdhcmRpbmcgd2hhdCByZWdpc3RlcnMgdGhlIGtlcm5lbCBpcyBhbGxv
d2VkIHRvDQo+PiBjbG9iYmVyIHdoZW4gdGhlIHVzZXJzcGFjZSBleGVjdXRlcyBzeXNjYWxs
Lg0KPj4NCj4+IFRoZSByZXNvbHV0aW9uIG9mIHRoZSBkaXNjdXNzaW9uIHdhcyByZXZpZXdp
bmcgdGhlIGNsb2JiZXIgbGlzdCBpbg0KPj4gdGhlIGdsaWJjIHNvdXJjZS4gRm9yIGEgaGlz
dG9yaWNhbCByZWFzb24gaW4gdGhlIGdsaWJjIHNvdXJjZSwgdGhlDQo+PiBrZXJuZWwgbXVz
dCByZXN0b3JlIGFsbCByZWdpc3RlcnMgYmVmb3JlIHJldHVybmluZyB0byB0aGUgdXNlcnNw
YWNlDQo+PiAoZXhjZXB0IGZvciByYXgsIHJjeCBhbmQgcjExKS4NCj4+DQo+PiBMaW5rOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL2FscGluZS5MU1UuMi4yMC4yMTEwMTMxNjAx
MDAwLjI2Mjk0QHdvdGFuLnN1c2UuZGUvDQo+PiBMaW5rOiBodHRwczovL2dpdGxhYi5jb20v
eDg2LXBzQUJJcy94ODYtNjQtQUJJLy0vbWVyZ2VfcmVxdWVzdHMvMjUNCj4+DQo+PiBUaGlz
IGFkZHMgaW5mbyBhYm91dCByZWdpc3RlcnMgb24gZXhpdC4NCj4+DQo+PiBDYzogQW5keSBM
dXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+DQo+PiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0
Z2x4QGxpbnV0cm9uaXguZGU+DQo+PiBDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5j
b20+DQo+PiBDYzogQm9yaXNsYXYgUGV0a292IDxicEBhbGllbjguZGU+DQo+PiBDYzogRGF2
ZSBIYW5zZW4gPGRhdmUuaGFuc2VuQGxpbnV4LmludGVsLmNvbT4NCj4+IENjOiAiSC4gUGV0
ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPg0KPj4gQ2M6IE1pY2hhZWwgTWF0eiA8bWF0ekBz
dXNlLmRlPg0KPj4gQ2M6ICJILkouIEx1IiA8aGpsLnRvb2xzQGdtYWlsLmNvbT4NCj4+IENj
OiBXaWxseSBUYXJyZWF1IDx3QDF3dC5ldT4NCj4+IENjOiB4ODYtbWwgPHg4NkBrZXJuZWwu
b3JnPg0KPj4gQ2M6IGxrbWwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+DQo+PiBD
YzogR05VL1dlZWIgTWFpbGluZyBMaXN0IDxnd21sQGdudXdlZWIub3JnPg0KPj4gU2lnbmVk
LW9mZi1ieTogQW1tYXIgRmFpemkgPGFtbWFyZmFpemkyQGdudXdlZWIub3JnPg0KPj4gLS0t
DQpbLi4uXQ0KPj4gZGlmZiAtLWdpdCBhL2FyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMgYi9h
cmNoL3g4Ni9lbnRyeS9lbnRyeV82NC5TDQo+PiBpbmRleCBlNDMyZGQwNzUyOTEuLjExMTFm
ZmYyZTA1ZiAxMDA2NDQNCj4+IC0tLSBhL2FyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMNCj4+
ICsrKyBiL2FyY2gveDg2L2VudHJ5L2VudHJ5XzY0LlMNCj4+IEBAIC03OSw2ICs3OSwxOSBA
QA0KPj4gICAgKg0KPj4gICAgKiBPbmx5IGNhbGxlZCBmcm9tIHVzZXIgc3BhY2UuDQo+PiAg
ICAqDQo+PiArICogUmVnaXN0ZXJzIG9uIGV4aXQ6DQo+PiArICogcmF4ICBzeXNjYWxsIHJl
dHVybiB2YWx1ZQ0KPj4gKyAqIHJjeCAgcmV0dXJuIGFkZHJlc3MNCj4+ICsgKiByMTEgIHJm
bGFncw0KPj4gKyAqDQo+PiArICogRm9yIGEgaGlzdG9yaWNhbCByZWFzb24gaW4gdGhlIGds
aWJjIHNvdXJjZSwgdGhlIGtlcm5lbCBtdXN0IHJlc3RvcmUgYWxsDQo+PiArICogcmVnaXN0
ZXJzIGV4Y2VwdCB0aGUgcmF4IChzeXNjYWxsIHJldHVybiB2YWx1ZSkgYmVmb3JlIHJldHVy
bmluZyB0byB0aGUNCj4+ICsgKiB1c2Vyc3BhY2UuDQo+PiArICoNCj4+ICsgKiBJbiBvdGhl
ciB3b3Jkcywgd2l0aCByZXNwZWN0IHRvIHRoZSB1c2Vyc3BhY2UsIHdoZW4gdGhlIGtlcm5l
bCByZXR1cm5zDQo+PiArICogdG8gdGhlIHVzZXJzcGFjZSwgb25seSAzIHJlZ2lzdGVycyBh
cmUgY2xvYmJlcmVkLCB0aGV5IGFyZSByYXgsIHJjeCwNCj4+ICsgKiBhbmQgcjExLg0KPj4g
KyAqDQo+IA0KPiBJIHdvdWxkIHNheSB0aGlzIG11Y2ggbW9yZSBjb25jaXNlbHk6DQo+IA0K
PiBUaGUgTGludXgga2VybmVsIHByZXNlcnZlcyBhbGwgcmVnaXN0ZXJzIChldmVuIEMgY2Fs
bGVlLWNsb2JiZXJlZA0KPiByZWdpc3RlcnMpIGV4Y2VwdCBmb3IgcmF4LCByY3ggYW5kIHIx
MSBhY3Jvc3Mgc3lzdGVtIGNhbGxzLCBhbmQNCj4gZXhpc3RpbmcgdXNlciBjb2RlIHJlbGll
cyBvbiB0aGlzIGJlaGF2aW9yLg0KDQpBZ3JlZSwgSSB3aWxsIHRha2UgdGhhdCBhcyBTdWdn
ZXN0ZWQtYnkgaW4gdGhlIHYyLg0KDQotLSANCkFtbWFyIEZhaXppDQoNCg==

--------------mYuysVt05c8ZcM1WrKYlRuzx--

--------------S0MaOf4czMBu0L1g6p8RczRv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEE6JNybcjkwN47ogEHNk+6NP8XCksFAmHY3CIFAwAAAAAACgkQNk+6NP8XCkth
4Qf/RF4cx4FfzB07Ou2xw7JaPoCo/QTqSi+eyRJ3NCgjfxoJRtSITCEnGFLien21SioRRQHT3wV3
oJ/L8i0t29Ew+VCImFYdLo0LnSGUiR1ggE6MW7rFAe8LbAyU/B301h3lZqijFzVkdk+5NzPeGsjB
zLlVEKJX9xzQPySzaC5gejChdT4pTM1c2b/wz6pSDejwPsqIz1H/rizC0tA/g8sDTCtQUP9MOhXE
IFZ3KduGNoz0UrUtyDc757TVxoO+DUIsNaahDLKI1UMkZrimmA3pPc9jY9I7utgiZG6myI3o1hoD
07rbv/2NTg0TJ2CFO+quewoGXqrVNJ7LhfqFs63k4w==
=diYx
-----END PGP SIGNATURE-----

--------------S0MaOf4czMBu0L1g6p8RczRv--

--===============2368526876020072864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============2368526876020072864==--
