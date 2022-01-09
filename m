Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id TgB2C8Bw22GtmAQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 09 Jan 2022 23:33:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 6CC3CC17E7;
	Sun,  9 Jan 2022 23:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641771198;
	bh=SVkXCuXLmZ5z7kv1FjP9/TKe949jwv6AkngN8iNKHqQ=;
	h=Date:Subject:References:To:From:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=oI6gysZQwxMxCOUUZKo2isu4hMwOXc3MjWAhsgfPPS0bEc2iGHsFBbWT33gMVuDvT
	 LIFddubGF7h37yoGVC5vA1MGWX/9NDyFnHmi7Q9AjLYwfvDt++JR1ZvSBVmX4rHKP5
	 iobh+FuW9mqDMRFg1XsTHzY1HiZ3DQW2Q9Wrs2FVw49qPwbmeh732UPYT4lYJ6limm
	 nPSKRkBf/FM/JUAcRw+y+o674fs6t1bYfX/gWgZ0fLKHWc3Mc12H2E8GRj2jRA6B1N
	 q42GZqSJIsP/gyVn9ydDOfmN7KZBbjFF4jE2/i6KGu0U/fptTZ5kAZK8F1Pb2VRY6t
	 +vWi6jo8focMQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [192.168.88.87] (unknown [180.242.102.163])
 by gnuweeb.org (Postfix) with ESMTPSA id C3D00C176E
 for <gwml@gnuweeb.org>; Sun,  9 Jan 2022 23:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641771196;
 bh=+mTYtPYwNnuvybt3bf+78DMY89v5Zz3wpmI1M7nOnKo=;
 h=Date:Subject:References:To:From:In-Reply-To:From;
 b=X0//3OSE1X9WmJN9yGPDt6EctimX0yGr0L1RafkzL4Ne5TfXRk9zAm+7wL0elp1uw
 c9LQW5ioz2ObzomAVoOEziV34hqpDGzjRBkn8Qx6DAh/GPu/PtdjqERn/0rc+K0G6B
 n8jK06hESOvLO+w9i3nQt8zE1H0roimB6fISkjyMAMwZTYZMb04MY9oFFLxItiSD5U
 iqmO5TM2z53G1zu5JU/0GplfsgBDnEtTvGln+eH0DSBevhoTFhybQza+vW6Ca3Q/6f
 4O3a3ynkagyoIqXVwaJOvpYbdKGXheeHtVwwWeAP2f57sCAm587p+ZfvRVcD6M2L43
 5OlnPvhekDIMA==
Message-ID: <104823eb-f943-19fa-8be7-a383e1059f5a@gnuweeb.org>
Date: Mon, 10 Jan 2022 06:33:11 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Fwd: Linux 5.16
References: <CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com>
Content-Language: en-US
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
In-Reply-To: <CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com>
X-Forwarded-Message-Id: <CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6292644166049391759=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6292644166049391759==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Qh01syFMCcSABwP7l5dIBIKd"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Qh01syFMCcSABwP7l5dIBIKd
Content-Type: multipart/mixed; boundary="------------JRxXE06WBqrwpKhzCpOGtg1h";
 protected-headers="v1"
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Message-ID: <104823eb-f943-19fa-8be7-a383e1059f5a@gnuweeb.org>
Subject: Fwd: Linux 5.16
References: <CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com>
In-Reply-To: <CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com>

--------------JRxXE06WBqrwpKhzCpOGtg1h
Content-Type: multipart/alternative;
 boundary="------------gR95nXX5he7nBuqr8lxlPVKe"

--------------gR95nXX5he7nBuqr8lxlPVKe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NCg0KU3ViamVjdDogCUxpbnV4
IDUuMTYNCkRhdGU6IAlTdW4sIDkgSmFuIDIwMjIgMTU6MjA6MDkgLTA4MDANCkZyb206IAlM
aW51cyBUb3J2YWxkcyA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+DQpUbzogCUxp
bnV4IEtlcm5lbCBNYWlsaW5nIExpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+
DQoNCg0KDQpOb3QgYSBsb3QgaGVyZSBzaW5jZSAtcmM4LCB3aGljaCBpcyBub3QgdW5leHBl
Y3RlZC4gV2UgaGFkIHRoYXQgZXh0cmENCndlZWsgZHVlIHRvIHRoZSBob2xpZGF5cywgYW5k
IGl0J3Mgbm90IGxpa2Ugd2UgaGFkIGxvdHMgb2YgbGFzdC1taW51dGUNCnRoaW5ncyB0aGF0
IG5lZWRlZCB0byBiZSBzb3J0ZWQgb3V0Lg0KDQpTbyB0aGlzIG1haW5seSBjb250YWlucyBz
b21lIGRyaXZlciBmaXhlcyAobWFpbmx5IG5ldHdvcmtpbmcgYW5kDQpyZG1hKSwgYSBjZ3Jv
dXAgY3JlZGVudGlhbCB1c2UgZml4LCBhIGZldyBjb3JlIG5ldHdvcmtpbmcgZml4ZXMsIGEN
CmNvdXBsZSBvZiBsYXN0LW1pbnV0ZSByZXZlcnRzLCBhbmQgc29tZSBvdGhlciByYW5kb20g
bm9pc2UuIFRoZQ0KYXBwZW5kZWQgc2hvcnRsb2cgaXMgc28gc21hbGwgdGhhdCB5b3UgbWln
aHQgYXMgd2VsbCBzY3JvbGwgdGhyb3VnaA0KaXQuDQoNClRoaXMgb2J2aW91c2x5IG1lYW5z
IHRoYXQgdGhlIG1lcmdlIHdpbmRvdyBmb3IgNS4xNyBvcGVucyB0b21vcnJvdywNCmFuZCBJ
J20gaGFwcHkgdG8gc2F5IEkgYWxyZWFkeSBoYXZlIHNldmVyYWwgcGVuZGluZyBlYXJseSBw
dWxsDQpyZXF1ZXN0cy4gSSB3aXNoIEkgaGFkIGV2ZW4gbW9yZSwgYmVjYXVzZSB0aGlzIG1l
cmdlIHdpbmRvdyBpcyBnb2luZw0KdG8gYmUgc29tZXdoYXQgcGFpbmZ1bCBkdWUgdG8gdW5m
b3J0dW5hdGUgdHJhdmVsIGZvciBmYW1pbHkgcmVhc29ucy4NClNvIEknbGwgYmUgZG9pbmcg
bW9zdCBvZiBpdCBvbiB0aGUgcm9hZCBvbiBhIGxhcHRvcCAtIHNvbWV0aGluZyBJDQpnZW5l
cmFsbHkgdHJ5IHRvIGF2b2lkLg0KDQpUaGF0IHNhaWQsIHRoZSBtZXJnaW5nIHBhcnQgb2Yg
dGhlIG1lcmdlIHdpbmRvdyB3b3JrcyBwZXJmZWN0bHkgd2VsbA0Kb24gYSBsYXB0b3AsIGl0
J3MganVzdCB0aGF0IEkgbm9ybWFsbHkgcmVhbGx5IHdhbnQgdG8gZG8gbW9yZSBsb2NhbA0K
YnVpbGQgdGVzdGluZyBiZXR3ZWVuIG1lcmdlcyB0aGFuIGEgbGFwdG9wIHJlYWxseSBhbGxv
d3MgbWUgdG8gZG8uIFNvDQp0aGUgbWFpbiBkb3duc2lkZSBkdXJpbmcgdHJhdmVsIGlzIHRo
YXQgSSBlbmQgdXAgcmVseWluZyBtdWNoIG1vcmUgb24NCnRoZSBhdXRvbWF0ZWQgYnVpbGQg
dGVzdGluZyBpbiB0aGUgY2xvdWQuIEFuZCBzbyByZWFsbHkgaG9wZSB0aGF0DQpldmVyeXRo
aW5nIGhhcyBiZWVuIHByb3Blcmx5IGNvb2tpbmcgaW4gbGludXgtbmV4dCBzbyB0aGF0IHRo
ZXJlIGFyZQ0Kbm8gdW5uZWNlc3NhcnkgaXNzdWVzIHRoYXQgcG9wIHVwIHdoZW4gdGhpbmdz
IGhpdCBteSB0cmVlLg0KDQpPZiBjb3Vyc2UsIHJlYWxpc3RpY2FsbHkgb3VyIGF1dG9tYXRl
ZCBidWlsZCB0ZXN0aW5nIGlzIHNvIGdvb2QNCmFueXdheSwgYW5kIHBlb3BsZSBoYXZlIGJl
ZW4gcHJldHR5IGdvb2QgYWJvdXQgbGludXgtbmV4dCwgdGhhdCBtYXliZQ0KbXkgbG9jYWwg
YnVpbGRzIGFyZW4ndCBfdGhhdF8gaW1wb3J0YW50LiBJIGRvIGVuZCB1cCBvY2Nhc2lvbmFs
bHkNCmhpdHRpbmcgaXNzdWVzIHRoYXQgc2hvdWxkIG5ldmVyIGhhdmUgbWFkZSBpdCBhcyBm
YXIgYXMgbXkgdHJlZSwgYnV0DQppdCdzIG5vdCBsaWtlIGl0J3MgYSBjb21tb24gLSBvciBn
ZW5lcmFsbHkgc2VyaW91cyAtIGlzc3VlLg0KDQpLbm9jayB3b29kLg0KDQpBbnl3YXksIEkg
ZG9uJ3QgZXhwZWN0IGFueSByZWFsIGlzc3VlLCBidXQgSSdsbCBwcm9iYWJseSBiZSBqZXRs
YWdnZWQNCmFuZCBpbiBvZGQgdGltZXpvbmVzLCBzbyBteSByZXNwb25zZSB0aW1lIG1pZ2h0
IGJlICJ2YXJpYWJsZSIuDQoNCkJ1dCBoZXksIGJlZm9yZSB0aGF0IG1lcmdlIHdpbmRvdyBl
dmVuIG9wZW5zLCB5b3Ugc3RpbGwgaGF2ZSBzb21lIHRpbWUNCnRvIGdpdmUgYSBzaGlueSBu
ZXcga2VybmVsIHJlbGVhc2Ugc29tZSBUTEMgYW5kIHRlc3RpbmcuDQoNCkxpbnVzDQoNCi0t
LQ0KDQpBYXJvbiBNYSAoMSk6DQpSZXZlcnQgIm5ldDogdXNiOiByODE1MjogQWRkIE1BQyBw
YXNzdGhyb3VnaCBzdXBwb3J0IGZvciBtb3JlDQpMZW5vdm8gRG9ja3MiDQoNCkFsZXggRGV1
Y2hlciAoMik6DQpmYmRldjogZmJtZW06IGFkZCBhIGhlbHBlciB0byBkZXRlcm1pbmUgaWYg
YW4gYXBlcnR1cmUgaXMgdXNlZCBieSBhIGZ3IGZiDQpkcm0vYW1kZ3B1OiBkaXNhYmxlIHJ1
bnBtIGlmIHdlIGFyZSB0aGUgcHJpbWFyeSBhZGFwdGVyDQoNCkFuZHJldyBMdW5uICgzKToN
CnNlZzY6IGV4cG9ydCBnZXRfc3JoKCkgZm9yIElDTVAgaGFuZGxpbmcNCmljbXA6IElDTVBW
NjogRXhhbWluZSBpbnZva2luZyBwYWNrZXQgZm9yIFNlZ21lbnQgUm91dGUgSGVhZGVycy4N
CnVkcDY6IFVzZSBTZWdtZW50IFJvdXRpbmcgSGVhZGVyIGZvciBkZXN0IGFkZHJlc3MgaWYg
cHJlc2VudA0KDQpBcm5hbGRvIENhcnZhbGhvIGRlIE1lbG8gKDEpOg0KUmV2ZXJ0ICJsaWJ0
cmFjZWV2ZW50OiBJbmNyZWFzZSBsaWJ0cmFjZWV2ZW50IGxvZ2dpbmcgd2hlbiB2ZXJib3Nl
Ig0KDQpBcnRodXIgS2l5YW5vdnNraSAoMyk6DQpuZXQ6IGVuYTogRml4IHVuZGVmaW5lZCBz
dGF0ZSB3aGVuIHR4IHJlcXVlc3QgaWQgaXMgb3V0IG9mIGJvdW5kcw0KbmV0OiBlbmE6IEZp
eCB3cm9uZyByeCByZXF1ZXN0IGlkIGJ5IHJlc2V0dGluZyBkZXZpY2UNCm5ldDogZW5hOiBG
aXggZXJyb3IgaGFuZGxpbmcgd2hlbiBjYWxjdWxhdGluZyBtYXggSU8gcXVldWVzIG51bWJl
cg0KDQpDaHJpcyBQYWNraGFtICgxKToNCmkyYzogbXBjOiBBdm9pZCBvdXQgb2YgYm91bmRz
IG1lbW9yeSBhY2Nlc3MNCg0KQ2hyaXN0b3BoIEhlbGx3aWcgKDEpOg0KbmV0cm9tOiBmaXgg
Y29weWluZyBpbiB1c2VyIGRhdGEgaW4gbnJfc2V0c29ja29wdA0KDQpDb2xpbiBJYW4gS2lu
ZyAoMSk6DQpicGYsIHNlbGZ0ZXN0czogRml4IHNwZWxsaW5nIG1pc3Rha2UgInRhaW5lZCIg
LT4gInRhaW50ZWQiDQoNCkRhcnJpY2sgSi4gV29uZyAoMSk6DQp4ZnM6IG1hcCB1bndyaXR0
ZW4gYmxvY2tzIGluIFhGU19JT0Nfe0FMTE9DLEZSRUV9U1AganVzdCBsaWtlIGZhbGxvY2F0
ZQ0KDQpEYXZpZCBBaGVybiAoNyk6DQppcHY0OiBDaGVjayBhdHRyaWJ1dGUgbGVuZ3RoIGZv
ciBSVEFfR0FURVdBWSBpbiBtdWx0aXBhdGggcm91dGUNCmlwdjQ6IENoZWNrIGF0dHJpYnV0
ZSBsZW5ndGggZm9yIFJUQV9GTE9XIGluIG11bHRpcGF0aCByb3V0ZQ0KaXB2NjogQ2hlY2sg
YXR0cmlidXRlIGxlbmd0aCBmb3IgUlRBX0dBVEVXQVkgaW4gbXVsdGlwYXRoIHJvdXRlDQpp
cHY2OiBDaGVjayBhdHRyaWJ1dGUgbGVuZ3RoIGZvciBSVEFfR0FURVdBWSB3aGVuIGRlbGV0
aW5nIG11bHRpcGF0aCByb3V0ZQ0KbHd0dW5uZWw6IFZhbGlkYXRlIFJUQV9FTkNBUF9UWVBF
IGF0dHJpYnV0ZSBsZW5ndGgNCmlwdjY6IENvbnRpbnVlIHByb2Nlc3NpbmcgbXVsdGlwYXRo
IHJvdXRlIGV2ZW4gaWYgZ2F0ZXdheQ0KYXR0cmlidXRlIGlzIGludmFsaWQNCmlwdjY6IERv
IGNsZWFudXAgaWYgYXR0cmlidXRlIHZhbGlkYXRpb24gZmFpbHMgaW4gbXVsdGlwYXRoIHJv
dXRlDQoNCkRpIFpodSAoMSk6DQppNDBlOiBmaXggdXNlLWFmdGVyLWZyZWUgaW4gaTQwZV9z
eW5jX2ZpbHRlcnNfc3VidGFzaygpDQoNCkRpbmggTmd1eWVuICgyKToNCmR0LWJpbmRpbmdz
OiBzcGk6IGNhZGVuY2UtcXVhZHNwaTogZG9jdW1lbnQgImludGVsLHNvY2ZwZ2EtcXNwaSIN
CkFSTTogZHRzOiBzb2NmcGdhOiBjaGFuZ2UgcXNwaSB0byAiaW50ZWwsc29jZnBnYS1xc3Bp
Ig0KDQpFcmljIER1bWF6ZXQgKDEpOg0Kc2NoX3FmcTogcHJldmVudCBzaGlmdC1vdXQtb2Yt
Ym91bmRzIGluIHFmcV9pbml0X3FkaXNjDQoNCkV2YW4gUXVhbiAoMSk6DQpkcm0vYW1kL3Bt
OiBrZWVwIHRoZSBCQUNPIGZlYXR1cmUgZW5hYmxlZCBmb3Igc3VzcGVuZA0KDQpGbG9yaWFu
IEZhaW5lbGxpICgxKToNClJldmVydCAibmV0OiBwaHk6IGZpeGVkX3BoeTogRml4IE5VTEwg
dnMgSVNfRVJSKCkgY2hlY2tpbmcgaW4NCl9fZml4ZWRfcGh5X3JlZ2lzdGVyIg0KDQpHYWdh
biBLdW1hciAoMSk6DQptY3RwOiBSZW1vdmUgb25seSBzdGF0aWMgbmVpZ2hib3VyIG9uIFJU
TV9ERUxORUlHSA0KDQpHcmVnb3J5IEZvbmcgKDEpOg0KTUFJTlRBSU5FUlM6IHVwZGF0ZSBn
cGlvLWJyY21zdGIgbWFpbnRhaW5lcnMNCg0KSGFpbWluIFpoYW5nICgxKToNCm5ldCB0aWNw
OmZpeCBhIGtlcm5lbC1pbmZvbGVhayBpbiBfX3RpcGNfc2VuZG1zZygpDQoNCkhlaW5lciBL
YWxsd2VpdCAoMSk6DQpyZXNldDogcmVuZXNhczogRml4IFJ1bnRpbWUgUE0gdXNhZ2UNCg0K
SmVkcnplaiBKYWdpZWxza2kgKDEpOg0KaTQwZTogRml4IGluY29ycmVjdCBuZXRkZXYncyBy
ZWFsIG51bWJlciBvZiBSWC9UWCBxdWV1ZXMNCg0KSmlhbmd1byBXdSAoMSk6DQpzZWxmdGVz
dHM6IG5ldDogdWRwZ3JvX2Z3ZC5zaDogZXhwbGljaXRseSBjaGVja2luZyB0aGUgYXZhaWxh
YmxlDQpwaW5nIGZlYXR1cmUNCg0KSmlhc2hlbmcgSmlhbmcgKDEpOg0KUkRNQS91dmVyYnM6
IENoZWNrIGZvciBudWxsIHJldHVybiBvZiBrbWFsbG9jX2FycmF5DQoNCkppcmkgT2xzYSAo
Mik6DQpmdHJhY2Uvc2FtcGxlczogQWRkIG1pc3NpbmcgcHJvdG90eXBlcyBkaXJlY3QgZnVu
Y3Rpb25zDQpwZXJmIHRyYWNlOiBBdm9pZCBlYXJseSBleGl0IGR1ZSB0byBydW5uaW5nIFNJ
R0NITEQgaGFuZGxlcg0KYmVmb3JlIGl0IG1ha2VzIHNlbnNlIHRvDQoNCkthcmVuIFNvcm5l
ayAoMSk6DQppYXZmOiBGaXggbGltaXQgb2YgdG90YWwgbnVtYmVyIG9mIHF1ZXVlcyB0byBh
Y3RpdmUgcXVldWVzIG9mIFZGDQoNCkxlbiBCcm93biAoMSk6DQpSZXZlcnQgImRybS9hbWRn
cHU6IHN0b3Agc2NoZWR1bGVyIHdoZW4gY2FsbGluZyBod19maW5pICh2MikiDQoNCkxlb24g
Um9tYW5vdnNreSAoMSk6DQpSRE1BL2NvcmU6IERvbid0IGluZm9sZWFrIEdSSCBmaWVsZHMN
Cg0KTGkgWmhpamlhbiAoMSk6DQpSRE1BL3J4ZTogUHJldmVudCBkb3VibGUgZnJlZWluZyBy
eGVfbWFwX3NldCgpDQoNCkxpbnVzIEzDvHNzaW5nICgxKToNCmJhdG1hbi1hZHY6IG1jYXN0
OiBkb24ndCBzZW5kIGxpbmstbG9jYWwgbXVsdGljYXN0IHRvIG1jYXN0IHJvdXRlcnMNCg0K
TGludXMgVG9ydmFsZHMgKDEpOg0KTGludXggNS4xNg0KDQpMaW51cyBXYWxsZWlqICgxKToN
CnBvd2VyOiBzdXBwbHk6IGNvcmU6IEJyZWFrIGNhcGFjaXR5IGxvb3ANCg0KTWFnbnVzIEth
cmxzc29uICgxKToNClJldmVydCAieHNrOiBEbyBub3Qgc2xlZXAgaW4gcG9sbCgpIHdoZW4g
bmVlZF93YWtldXAgc2V0Ig0KDQpNYW9yIEdvdHRsaWViICgxKToNClJldmVydCAiUkRNQS9t
bHg1OiBGaXggcmVsZWFzaW5nIHVuYWxsb2NhdGVkIG1lbW9yeSBpbiBkZXJlZyBNUiBmbG93
Ig0KDQpNYXJrdXMgS29jaCAoMSk6DQpuZXQvZnNsOiBSZW1vdmUgbGVmdG92ZXIgZGVmaW5p
dGlvbiBpbiB4Z21hY19tZGlvDQoNCk1hcnRpbiBIYWJldHMgKDEpOg0Kc2ZjOiBUaGUgUlgg
cGFnZV9yaW5nIGlzIG9wdGlvbmFsDQoNCk1hdGV1c3ogUGFsY3pld3NraSAoMik6DQppNDBl
OiBGaXggdG8gbm90IHNob3cgb3Bjb2RlIG1zZyBvbiB1bnN1Y2Nlc3NmdWwgVkYgTUFDIGNo
YW5nZQ0KaTQwZTogRml4IGZvciBkaXNwbGF5aW5nIG1lc3NhZ2UgcmVnYXJkaW5nIE5WTSB2
ZXJzaW9uDQoNCk5hdGhhbiBDaGFuY2VsbG9yICgxKToNCnBvd2VyOiByZXNldDogbHRjMjk1
MjogRml4IHVzZSBvZiBmbG9hdGluZyBwb2ludCBsaXRlcmFscw0KDQpOYXZlZW4gTi4gUmFv
ICgyKToNCnRyYWNpbmc6IEZpeCBjaGVjayBmb3IgdHJhY2VfcGVyY3B1X2J1ZmZlciB2YWxp
ZGl0eSBpbiBnZXRfdHJhY2VfYnVmKCkNCnRyYWNpbmc6IFRhZyB0cmFjZV9wZXJjcHVfYnVm
ZmVyIGFzIGEgcGVyY3B1IHBvaW50ZXINCg0KTmlraXRhIFRyYXZraW4gKDEpOg0KSW5wdXQ6
IHppbml0aXggLSBtYWtlIHN1cmUgdGhlIElSUSBpcyBhbGxvY2F0ZWQgYmVmb3JlIGl0IGdl
dHMgZW5hYmxlZA0KDQpOaWt1bmogQSBEYWRoYW5pYSAoMSk6DQpLVk06IHg4NjogQ2hlY2sg
Zm9yIHJtYXBzIGFsbG9jYXRpb24NCg0KUGF2ZWwgU2tyaXBraW4gKDIpOg0KbWFjODAyMTE6
IG1lc2g6IGVtYmVkZCBtZXNoX3BhdGhzIGFuZCBtcHBfcGF0aHMgaW50byBpZWVlODAyMTFf
aWZfbWVzaA0KaWVlZTgwMjE1NDogYXR1c2I6IGZpeCB1bmluaXQgdmFsdWUgaW4gYXR1c2Jf
c2V0X2V4dGVuZGVkX2FkZHINCg0KUGhpbCBFbHdlbGwgKDEpOg0KQVJNOiBkdHM6IGdwaW8t
cmFuZ2VzIHByb3BlcnR5IGlzIG5vdyByZXF1aXJlZA0KDQpRaXV4dSBaaHVvICgxKToNCkVE
QUMvaTEwbm06IFJlbGVhc2UgbWRldi9tYmFzZSB3aGVuIGZhaWxpbmcgdG8gZGV0ZWN0IEhC
TQ0KDQpTb25nIExpdSAoMSk6DQptZC9yYWlkMTogZml4IG1pc3NpbmcgYml0bWFwIHVwZGF0
ZSB3L28gV3JpdGVNb3N0bHkgZGV2aWNlcw0KDQpTdGV2ZW4gTGVlICgxKToNCmdwaW86IGdw
aW8tYXNwZWVkLXNncGlvOiBGaXggd3JvbmcgaHdpcnEgYmFzZSBpbiBpcnEgaGFuZGxlcg0K
DQpUYWVoZWUgWW9vICgxKToNCnNlbGZ0ZXN0czogc2V0IGFtdC5zaCBleGVjdXRhYmxlDQoN
ClRlanVuIEhlbyAoNik6DQpjZ3JvdXA6IFVzZSBvcGVuLXRpbWUgY3JlZGVudGlhbHMgZm9y
IHByb2Nlc3MgbWlncmF0b24gcGVybSBjaGVja3MNCmNncm91cDogQWxsb2NhdGUgY2dyb3Vw
X2ZpbGVfY3R4IGZvciBrZXJuZnNfb3Blbl9maWxlLT5wcml2DQpjZ3JvdXA6IFVzZSBvcGVu
LXRpbWUgY2dyb3VwIG5hbWVzcGFjZSBmb3IgcHJvY2VzcyBtaWdyYXRpb24gcGVybSBjaGVj
a3MNCnNlbGZ0ZXN0czogY2dyb3VwOiBNYWtlIGNnX2NyZWF0ZSgpIHVzZSAwNzU1IGZvciBw
ZXJtaXNzaW9uDQppbnN0ZWFkIG9mIDA2NDQNCnNlbGZ0ZXN0czogY2dyb3VwOiBUZXN0IG9w
ZW4tdGltZSBjcmVkZW50aWFsIHVzYWdlIGZvciBtaWdyYXRpb24gY2hlY2tzDQpzZWxmdGVz
dHM6IGNncm91cDogVGVzdCBvcGVuLXRpbWUgY2dyb3VwIG5hbWVzcGFjZSB1c2FnZSBmb3IN
Cm1pZ3JhdGlvbiBjaGVja3MNCg0KVGhvbWFzIFRveWUgKDEpOg0Kcm5kaXNfaG9zdDogc3Vw
cG9ydCBIeXRlcmEgZGlnaXRhbCByYWRpb3MNCg0KVG9tIFJpeCAoMSk6DQptYWM4MDIxMTog
aW5pdGlhbGl6ZSB2YXJpYWJsZSBoYXZlX2hpZ2hlcl90aGFuXzExbWJpdA0KDQpXYW5wZW5n
IExpICgxKToNCktWTTogU0VWOiBNYXJrIG5lc3RlZCBsb2NraW5nIG9mIGt2bS0+bG9jaw0K
DQpXb2xmcmFtIFNhbmcgKDEpOg0KUmV2ZXJ0ICJpMmM6IGNvcmU6IHN1cHBvcnQgYnVzIHJl
Z3VsYXRvciBjb250cm9sbGluZyBpbiBhZGFwdGVyIg0KDQpYaW4gTG9uZyAoMSk6DQpzY3Rw
OiBob2xkIGVuZHBvaW50IGJlZm9yZSBjYWxsaW5nIGNiIGluIHNjdHBfdHJhbnNwb3J0X2xv
b2t1cF9wcm9jZXNzDQoNCllhdWhlbiBLaGFydXpoeSAoMSk6DQpwb3dlcjogYnEyNTg5MDog
RW5hYmxlIGNvbnRpbnVvdXMgY29udmVyc2lvbiBmb3IgQURDIGF0IGNoYXJnaW5nDQo=
--------------gR95nXX5he7nBuqr8lxlPVKe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>-------- Forwarded Message --------</p>
    <div class=3D"moz-forward-container">
      <table class=3D"moz-email-headers-table" cellspacing=3D"0"
        cellpadding=3D"0" border=3D"0">
        <tbody>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Sub=
ject:
            </th>
            <td>Linux 5.16</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Dat=
e: </th>
            <td>Sun, 9 Jan 2022 15:20:09 -0800</td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">Fro=
m: </th>
            <td>Linus Torvalds <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:torvalds@linux-foundation.org">&lt;torvalds@linux-foundation.org&=
gt;</a></td>
          </tr>
          <tr>
            <th valign=3D"BASELINE" nowrap=3D"nowrap" align=3D"RIGHT">To:=
 </th>
            <td>Linux Kernel Mailing List
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:linux-ker=
nel@vger.kernel.org">&lt;linux-kernel@vger.kernel.org&gt;</a></td>
          </tr>
        </tbody>
      </table>
      <br>
      <br>
      Not a lot here since -rc8, which is not unexpected. We had that
      extra<br>
      week due to the holidays, and it's not like we had lots of
      last-minute<br>
      things that needed to be sorted out.<br>
      <br>
      So this mainly contains some driver fixes (mainly networking and<br=
>
      rdma), a cgroup credential use fix, a few core networking fixes, a<=
br>
      couple of last-minute reverts, and some other random noise. The<br>=

      appended shortlog is so small that you might as well scroll
      through<br>
      it.<br>
      <br>
      This obviously means that the merge window for 5.17 opens
      tomorrow,<br>
      and I'm happy to say I already have several pending early pull<br>
      requests. I wish I had even more, because this merge window is
      going<br>
      to be somewhat painful due to unfortunate travel for family
      reasons.<br>
      So I'll be doing most of it on the road on a laptop - something I<b=
r>
      generally try to avoid.<br>
      <br>
      That said, the merging part of the merge window works perfectly
      well<br>
      on a laptop, it's just that I normally really want to do more
      local<br>
      build testing between merges than a laptop really allows me to do.
      So<br>
      the main downside during travel is that I end up relying much more
      on<br>
      the automated build testing in the cloud. And so really hope that<b=
r>
      everything has been properly cooking in linux-next so that there
      are<br>
      no unnecessary issues that pop up when things hit my tree.<br>
      <br>
      Of course, realistically our automated build testing is so good<br>=

      anyway, and people have been pretty good about linux-next, that
      maybe<br>
      my local builds aren't _that_ important. I do end up occasionally<b=
r>
      hitting issues that should never have made it as far as my tree,
      but<br>
      it's not like it's a common - or generally serious - issue.<br>
      <br>
      Knock wood.<br>
      <br>
      Anyway, I don't expect any real issue, but I'll probably be
      jetlagged<br>
      and in odd timezones, so my response time might be "variable".<br>
      <br>
      But hey, before that merge window even opens, you still have some
      time<br>
      to give a shiny new kernel release some TLC and testing.<br>
      <br>
      Linus<br>
      <br>
      ---<br>
      <br>
      Aaron Ma (1):<br>
      Revert "net: usb: r8152: Add MAC passthrough support for more<br>
      Lenovo Docks"<br>
      <br>
      Alex Deucher (2):<br>
      fbdev: fbmem: add a helper to determine if an aperture is used by
      a fw fb<br>
      drm/amdgpu: disable runpm if we are the primary adapter<br>
      <br>
      Andrew Lunn (3):<br>
      seg6: export get_srh() for ICMP handling<br>
      icmp: ICMPV6: Examine invoking packet for Segment Route Headers.<br=
>
      udp6: Use Segment Routing Header for dest address if present<br>
      <br>
      Arnaldo Carvalho de Melo (1):<br>
      Revert "libtraceevent: Increase libtraceevent logging when
      verbose"<br>
      <br>
      Arthur Kiyanovski (3):<br>
      net: ena: Fix undefined state when tx request id is out of bounds<b=
r>
      net: ena: Fix wrong rx request id by resetting device<br>
      net: ena: Fix error handling when calculating max IO queues number<=
br>
      <br>
      Chris Packham (1):<br>
      i2c: mpc: Avoid out of bounds memory access<br>
      <br>
      Christoph Hellwig (1):<br>
      netrom: fix copying in user data in nr_setsockopt<br>
      <br>
      Colin Ian King (1):<br>
      bpf, selftests: Fix spelling mistake "tained" -&gt; "tainted"<br>
      <br>
      Darrick J. Wong (1):<br>
      xfs: map unwritten blocks in XFS_IOC_{ALLOC,FREE}SP just like
      fallocate<br>
      <br>
      David Ahern (7):<br>
      ipv4: Check attribute length for RTA_GATEWAY in multipath route<br>=

      ipv4: Check attribute length for RTA_FLOW in multipath route<br>
      ipv6: Check attribute length for RTA_GATEWAY in multipath route<br>=

      ipv6: Check attribute length for RTA_GATEWAY when deleting
      multipath route<br>
      lwtunnel: Validate RTA_ENCAP_TYPE attribute length<br>
      ipv6: Continue processing multipath route even if gateway<br>
      attribute is invalid<br>
      ipv6: Do cleanup if attribute validation fails in multipath route<b=
r>
      <br>
      Di Zhu (1):<br>
      i40e: fix use-after-free in i40e_sync_filters_subtask()<br>
      <br>
      Dinh Nguyen (2):<br>
      dt-bindings: spi: cadence-quadspi: document "intel,socfpga-qspi"<br=
>
      ARM: dts: socfpga: change qspi to "intel,socfpga-qspi"<br>
      <br>
      Eric Dumazet (1):<br>
      sch_qfq: prevent shift-out-of-bounds in qfq_init_qdisc<br>
      <br>
      Evan Quan (1):<br>
      drm/amd/pm: keep the BACO feature enabled for suspend<br>
      <br>
      Florian Fainelli (1):<br>
      Revert "net: phy: fixed_phy: Fix NULL vs IS_ERR() checking in<br>
      __fixed_phy_register"<br>
      <br>
      Gagan Kumar (1):<br>
      mctp: Remove only static neighbour on RTM_DELNEIGH<br>
      <br>
      Gregory Fong (1):<br>
      MAINTAINERS: update gpio-brcmstb maintainers<br>
      <br>
      Haimin Zhang (1):<br>
      net ticp:fix a kernel-infoleak in __tipc_sendmsg()<br>
      <br>
      Heiner Kallweit (1):<br>
      reset: renesas: Fix Runtime PM usage<br>
      <br>
      Jedrzej Jagielski (1):<br>
      i40e: Fix incorrect netdev's real number of RX/TX queues<br>
      <br>
      Jianguo Wu (1):<br>
      selftests: net: udpgro_fwd.sh: explicitly checking the available<br=
>
      ping feature<br>
      <br>
      Jiasheng Jiang (1):<br>
      RDMA/uverbs: Check for null return of kmalloc_array<br>
      <br>
      Jiri Olsa (2):<br>
      ftrace/samples: Add missing prototypes direct functions<br>
      perf trace: Avoid early exit due to running SIGCHLD handler<br>
      before it makes sense to<br>
      <br>
      Karen Sornek (1):<br>
      iavf: Fix limit of total number of queues to active queues of VF<br=
>
      <br>
      Len Brown (1):<br>
      Revert "drm/amdgpu: stop scheduler when calling hw_fini (v2)"<br>
      <br>
      Leon Romanovsky (1):<br>
      RDMA/core: Don't infoleak GRH fields<br>
      <br>
      Li Zhijian (1):<br>
      RDMA/rxe: Prevent double freeing rxe_map_set()<br>
      <br>
      Linus L=C3=BCssing (1):<br>
      batman-adv: mcast: don't send link-local multicast to mcast
      routers<br>
      <br>
      Linus Torvalds (1):<br>
      Linux 5.16<br>
      <br>
      Linus Walleij (1):<br>
      power: supply: core: Break capacity loop<br>
      <br>
      Magnus Karlsson (1):<br>
      Revert "xsk: Do not sleep in poll() when need_wakeup set"<br>
      <br>
      Maor Gottlieb (1):<br>
      Revert "RDMA/mlx5: Fix releasing unallocated memory in dereg MR
      flow"<br>
      <br>
      Markus Koch (1):<br>
      net/fsl: Remove leftover definition in xgmac_mdio<br>
      <br>
      Martin Habets (1):<br>
      sfc: The RX page_ring is optional<br>
      <br>
      Mateusz Palczewski (2):<br>
      i40e: Fix to not show opcode msg on unsuccessful VF MAC change<br>
      i40e: Fix for displaying message regarding NVM version<br>
      <br>
      Nathan Chancellor (1):<br>
      power: reset: ltc2952: Fix use of floating point literals<br>
      <br>
      Naveen N. Rao (2):<br>
      tracing: Fix check for trace_percpu_buffer validity in
      get_trace_buf()<br>
      tracing: Tag trace_percpu_buffer as a percpu pointer<br>
      <br>
      Nikita Travkin (1):<br>
      Input: zinitix - make sure the IRQ is allocated before it gets
      enabled<br>
      <br>
      Nikunj A Dadhania (1):<br>
      KVM: x86: Check for rmaps allocation<br>
      <br>
      Pavel Skripkin (2):<br>
      mac80211: mesh: embedd mesh_paths and mpp_paths into
      ieee80211_if_mesh<br>
      ieee802154: atusb: fix uninit value in atusb_set_extended_addr<br>
      <br>
      Phil Elwell (1):<br>
      ARM: dts: gpio-ranges property is now required<br>
      <br>
      Qiuxu Zhuo (1):<br>
      EDAC/i10nm: Release mdev/mbase when failing to detect HBM<br>
      <br>
      Song Liu (1):<br>
      md/raid1: fix missing bitmap update w/o WriteMostly devices<br>
      <br>
      Steven Lee (1):<br>
      gpio: gpio-aspeed-sgpio: Fix wrong hwirq base in irq handler<br>
      <br>
      Taehee Yoo (1):<br>
      selftests: set amt.sh executable<br>
      <br>
      Tejun Heo (6):<br>
      cgroup: Use open-time credentials for process migraton perm checks<=
br>
      cgroup: Allocate cgroup_file_ctx for kernfs_open_file-&gt;priv<br>
      cgroup: Use open-time cgroup namespace for process migration perm
      checks<br>
      selftests: cgroup: Make cg_create() use 0755 for permission<br>
      instead of 0644<br>
      selftests: cgroup: Test open-time credential usage for migration
      checks<br>
      selftests: cgroup: Test open-time cgroup namespace usage for<br>
      migration checks<br>
      <br>
      Thomas Toye (1):<br>
      rndis_host: support Hytera digital radios<br>
      <br>
      Tom Rix (1):<br>
      mac80211: initialize variable have_higher_than_11mbit<br>
      <br>
      Wanpeng Li (1):<br>
      KVM: SEV: Mark nested locking of kvm-&gt;lock<br>
      <br>
      Wolfram Sang (1):<br>
      Revert "i2c: core: support bus regulator controlling in adapter"<br=
>
      <br>
      Xin Long (1):<br>
      sctp: hold endpoint before calling cb in
      sctp_transport_lookup_process<br>
      <br>
      Yauhen Kharuzhy (1):<br>
      power: bq25890: Enable continuous conversion for ADC at charging<br=
>
    </div>
  </body>
</html>
--------------gR95nXX5he7nBuqr8lxlPVKe--


--------------JRxXE06WBqrwpKhzCpOGtg1h--

--------------Qh01syFMCcSABwP7l5dIBIKd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEE6JNybcjkwN47ogEHNk+6NP8XCksFAmHbcLcFAwAAAAAACgkQNk+6NP8XCksw
jAf/f0MRu2YaulYwBSO5+22LvDYb52Zypde5FmXfDGiDBWwTxxn89rZ5+ItQrbZRIqMAc47JucdK
b51u7JJeH8wM3/hrWMUIIuuGduYXyqRR5hASBc23TU2YHmA+LIYPNOGgXVTFfaU5o3IR0YZ+NTxd
6DwV8KMdiDXZEkfjIk1mnUn8BZerO+RCIDYRg+nMqfxO6r6Wjk2ovwus1iHvBuiZr/Ma0y9LYAxY
l/rfn9hRvUv5QTNJ84g7OtGOdVfGCquKKRjEZ1vH4a9cmtCq3drGgxGNRBparN5vGN23xUmzENte
8CSCRS6ICOUwpbKe6FtDqc4E9GroyfxiW6O+RSCY5Q==
=8j8z
-----END PGP SIGNATURE-----

--------------Qh01syFMCcSABwP7l5dIBIKd--

--===============6292644166049391759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============6292644166049391759==--
