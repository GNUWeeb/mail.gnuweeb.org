Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id oewPKZeS6GFuQQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 22:37:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id EB48BC2B23;
	Wed, 19 Jan 2022 22:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1642631830;
	bh=OV2OGtg+S11zCxBNio3m/CFzWRifObJpmX2KNUV+aW0=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=SvQWI+ZN2ttQceehW+gv7Wf3DuxVduOnFcDt5NZZWLd9cG0TIZF+YpVq9J2BGIpql
	 kRC+mttMBsut6MkYtkYmh1SKQw0T702GaukX+MGwD+0Xvi226xQapYtUG9jisjb2C3
	 qmjCfEDlqGS+lNxAGBabD1jTFK14NkLgCDuzIODP+EB4AoOKmxoVzUR3YdZzRc+IFp
	 nNJZBN0NTxV1fV7gtZwLuK5gU5VAJmwtwvN3c2lwWsYXPC4qbG0FX8vvhwr8ssFhIC
	 SvncAIdVGvXktPlr3+AI2GLTwNPOA2q3oSJMviveVzyCL/frMnPaVaKMA4tqIr/Iym
	 UdX99D1IP/bMg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.88.87] (unknown [125.163.200.97])
 by gnuweeb.org (Postfix) with ESMTPSA id C509DC2B23;
 Wed, 19 Jan 2022 22:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1642631830;
 bh=GIwxWqVhKwHr46klBkA03YH0FMV+VlOTCyyWAEbIVtM=;
 h=Date:To:From:Subject:From;
 b=f3XEJ8aolP8ovq8ZnUCcFgQTAelRH0GQI1AZLk262JhdWXFF9lUfH16UyTSs5be1u
 JcXn+InZjPmZfGrsn1k4kKOUabDQpXrrxKGv+dYM0WVucxaSKiSQwNoXIvA6OTCUaD
 tE48AfN1cARRq/KXd9C4JXNu1EdOQskFOcWfszG2JTFAN/vVTDqpWJKIdrgteDBRk7
 KRctT5PSXlDYC9h8n+uZtM+T1HE9P48konz07rRZ3a4085YaaW2mdpG+fjGGrZEH4E
 R98+6AiN8QV6rTKockx39xtT/ZJshX5DHDL1U3w15lINxxoNTzxkwtoryrl7wZFxtS
 iowb31ttANtrA==
Message-ID: <42dd8c2c-9d03-03d9-11b3-e6282732f194@gnuweeb.org>
Date: Thu, 20 Jan 2022 05:37:07 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Beru Shinsetsu <windowz414@gnuweeb.org>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Autocrypt: addr=ammarfaizi2@gnuweeb.org; keydata=
 xsBNBGECqsMBCADy9cU6jMSaJECZXmbOE1Sox1zeJXEy51BRQNOEKbsR0dnRNUCl2tUR1rxd
 M+8V9TQUInBxERJcOdbUKibS8PQRy1g8LKJO/yrrMN8SFqnxYyX8M3WDz1PWuJ7DZE4gECtj
 RPuYN978y9w7Hi6micjraQeXbNp1S7MxEk5AxtlokO6u6Mrdm1WRNDytagkY61PP+5lJwiQS
 XOqiSLyT/ydEbG/hdBiOTOEN4J8MxE+p2xwhHjSTvU4ehq1b6b6N62pIA0r6NMRtdqp0c+Qv
 3SVkTV8TVHcck60ZKaNtKQTsCObqUHKRurU1qmF6i2Zs+nfL/e+EtT0NVOVEipRZrkGXABEB
 AAHNJUFtbWFyIEZhaXppIDxhbW1hcmZhaXppMkBnbnV3ZWViLm9yZz7CwJQEEwEKAD4WIQTo
 k3JtyOTA3juiAQc2T7o0/xcKSwUCYQKqwwIbAwUJBaOagAULCQgHAgYVCgkICwIEFgIDAQIe
 AQIXgAAKCRA2T7o0/xcKS0CHCAC2x/Vq6OodDFs0rCon2VBZFvnIyXIaOsJWNnIrlkNKVHWL
 QC+ALmiSwFN1822v8JP+8Fyf+HHIKVTsAPkovCnrIbliM8ZA+YTUmcLMPL+Aa05+XyZjR14l
 6Oyu9BhN7MW/XKXQnw96OE8AHpbX+Pgd4A7RtA2FGlaoBzrGlEe1B8nDBcS9ldJ0J95VKX6j
 LCJeU51msq1Q+ZyZstJ7SFsY9XKcMW7cS/aHzsayBRKtansSTkyJWCTinHn17rzkSRVcmdNY
 uga3YOBOfRIEq9LzrewE9gV40VNctY+sciMc/Z8uK5TfGIlYDTtuLmlvmw+EWjEKzwS6O0uQ
 K9YtIvl7zsBNBGECqsMBCADrprHwlhdUQBY1kzzeCozyx1AWGpyFNiFGjsRC3+UK4dhO9h6u
 Gz3OY5o0G7AV6nOniZCQofgm78NL5wdvIjL/ko5l7LNFQkU4SBjcGjn+Wc4UAWd2EpFPo/Dc
 3kTFzSlowp2+/kETA+FK7UDdwJTH/n05XwvGTZ9/pmVwP0e6iDnyJ5yIwbv28wTdIm4L3/uB
 xMp1UeHwztLk4Dcw+FX5ye/JfK3dbx0Gx8cfhAeFlVEz9z6LvtAn94BNYVd4CxE9Vh2BFFzq
 07bDQGhAN0Rim1K8uEahuKyyg2MuoDI8lvzONLbaiEw9/OgT1z+h4qyzjulXAHzxqkcjz4Of
 SqzfABEBAAHCwHwEGAEKACYWIQTok3JtyOTA3juiAQc2T7o0/xcKSwUCYQKqwwIbDAUJBaOa
 gAAKCRA2T7o0/xcKS2+RB/43pagncTq0/ywbQhjHrXtOuYDPcrbKusD1jiURWXEMgM48nV/H
 dQYTHd8mabMT0xa4NOUlDA2If2t9HvzLoNDPefP4+z41DJL6ZZNCQhLUJBh5/zhSedRF6JHW
 PiO/nWkfdUUhBTabadgUYI80djY63rG3LKmjuh3/AZ4Vb9qBVpJX0tjZSbXa47yzL7tiQ539
 u7eqoTXOy4oc5XC2koICy4DMNAEVaL2uEfY9MPHJKcsmrcwtu4w1gg8JehM/bwtphPG5J+H7
 mFZqTLyTMNfOmAKErQlwCfFzyh0uFggluVBlOLImyrKOh6+0bUZGZ0CaTE10OMTS6HgE1W10 EZJc
Subject: Mail Server Migration
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
Content-Type: multipart/mixed; boundary="===============4068823070770408667=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4068823070770408667==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RpmZmJNh4JKQijdbeZAJId4U"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------RpmZmJNh4JKQijdbeZAJId4U
Content-Type: multipart/mixed; boundary="------------0wSTCZqy6FOm1E2CBZiKFNsz";
 protected-headers="v1"
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Beru Shinsetsu <windowz414@gnuweeb.org>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>
Message-ID: <42dd8c2c-9d03-03d9-11b3-e6282732f194@gnuweeb.org>
Subject: Mail Server Migration

--------------0wSTCZqy6FOm1E2CBZiKFNsz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkkgYW0gZ29pbmcgdG8gbWlncmF0ZSBvdXIgbWFpbCBzZXJ2ZXIgdG8gYSBuZXcg
c2VydmVyLg0KQnV0IHdlIG5lZWQgc29tZW9uZSB3aG8gY2FuIG1hbmFnZSB0aGUgbWlncmF0
aW9uLiBJZg0Kc29tZW9uZSBpcyB3aWxsaW5nIHRvIGRvIGl0LCBwbGVhc2UgbGV0IG1lIGtu
b3cuDQoNCkhvcGVmdWxseSB3ZSBjYW4gZG8gaXQgYmVmb3JlIHRoZSBjdXJyZW50IGFjdGl2
ZSBzZXJ2ZXINCmVudGVycyBpdHMgZXhwaXJ5IGRhdGUsIHNvIEkgZG9uJ3QgaGF2ZSB0byBl
eHRlbmQgdGhlDQpjdXJyZW50IHNlcnZlciBsaWZldGltZSB3aXRoIGV4dHJhIHBheW1lbnQu
DQoNCkJlcnUsIGNhbiB5b3UgZG8gdGhhdD8NCg0KLS0gDQpBbW1hciBGYWl6aQ0KDQo=

--------------0wSTCZqy6FOm1E2CBZiKFNsz--

--------------RpmZmJNh4JKQijdbeZAJId4U
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEE6JNybcjkwN47ogEHNk+6NP8XCksFAmHokpMFAwAAAAAACgkQNk+6NP8XCkvh
VggAkWkEm3KaqGvWopQLHujm3oDOBB4ZxDAHyCgsxN7O5fBgXkpvxNqIBi47zeY4J9hrhRwsSdX9
NBdXh2tLZ1gMhD9NwYpxcOBZcVJIFDX2Goz37mFT+A1iRVRksFJ39LOhcqRTQPqN57/Ar7Pl9qNp
Q8swc3358iwJebzhjBqf1oNjaVXh89K9fY3HVbcubWQpOeQJEmdLUe2zkbKMo69vKQFdgHMrDruC
ZvKb/HeMkdP0Uehqy0cuvyXugOsqhy3TKSdG80C4AQvDZbgh+Ajyda32ST1fOk8/uLr5wvCgPB2S
hVJxNiuXzKEhu8h2FWRZjPf7S9ACJI/HD+HxZLeV4Q==
=AOa9
-----END PGP SIGNATURE-----

--------------RpmZmJNh4JKQijdbeZAJId4U--

--===============4068823070770408667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============4068823070770408667==--
