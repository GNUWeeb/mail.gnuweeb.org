Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 8CPwCn8lrmAWuwEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 26 May 2021 10:39:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id DC302C2A1A;
	Wed, 26 May 2021 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1622025598;
	bh=2KJTUwzG5/aE9tp6jK+t75YdvahoJdmaQetwtAManG8=;
	h=Date:In-Reply-To:From:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=i6Q3/NnqwPZDbsDvseQ9uDgKsdsTq3FZyr3RLWANKSJzFBj2f4SUajaU9rZsGnEB/
	 DV6rlYGmlixPv4gPxlYr6Rw2v42DFkjjWaM4pimj+wUqBbvhJw/dW5NuM8rRj3kUrq
	 qMP0lA2zjpw6ahIACo/iIS8ycQyx/30HgknEGDEcPSVb3fwHbqR5rQNXx6fuKZSzmn
	 c/FlGfM6FLI66PG0mVB4dIYs0/Nfm2H/dZTMX+UO53AS+SEQIDCjXPMnXMkfQB5i+O
	 xAtOtARdkA72yVLUEfSRVgkfIXsmJvtT5da7B8oWvwuHxo0CJmIhCZM1KxLsnahfM1
	 UpJ0a851ll3bg==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.38.18.121] (unknown [182.2.71.169])
 by gnuweeb.org (Postfix) with ESMTPSA id 3F3D7C2A20
 for <gwml@gnuweeb.org>; Wed, 26 May 2021 10:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1622025598;
 bh=4kLRCIoo43ElB0bXcs9UXlQfZGbU3EWou1JzWiue8E0=;
 h=Date:Subject:In-Reply-To:From:To:From;
 b=J1Rqi4QVE8ljSdSu726Hb+3iPGuq27sgkR1m0MUle1MjpShmQ9p1Hk4oByMVT2nrX
 c4djSIQ4/dC8En1gKssqarZlzcTQ6dTf6T6pj4V6TY012GvuV4rvJIVPC1E22PnAI8
 ch3l75dnehFMi0KDFMTjgkeWjYsUSE1k6w6MNP3+xudShMh8gGYRbvzv2qz1KM6BT9
 DCGVeMHGGFXIKszdoG4TB/cIE3e9OoGS7BSesSqhvdgdZu63SYUCRyzDirjSo04CfC
 QT+tdfdNC1P35Pa8Ln1i+fkNnMcPiGYM8TIqH8N7v4vL1Scp5Wq3iXToji55dZQySa
 V6lWZExUXqRHQ==
Date: Wed, 26 May 2021 17:39:51 +0700
Message-ID: <44faf1d7-8bc3-4d2f-8ed0-200805c81f83@email.android.com>
X-Android-Message-ID: <44faf1d7-8bc3-4d2f-8ed0-200805c81f83@email.android.com>
In-Reply-To: <mailman.46.1622024873.19899.gwml@gnuweeb.org>
From: ammarfaizi2@gnuweeb.org
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============8156058113949444643=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

--===============8156058113949444643==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9J2F1dG8nPldoeSBpcyBteSBtZXNzYWdlIHNlbnQgYXMgZm9yd2FyZGVkIG1lc3Nh
Z2U/PGRpdiBkaXI9ImF1dG8iPkRpZCBJIGNvbmZpZ3VyZSBzb21ldGhpbmcgd3Jvbmc/PGJyPjxi
cj48ZGl2IGRhdGEtc21hcnRtYWlsPSJnbWFpbF9zaWduYXR1cmUiIGRpcj0iYXV0byI+Jm5ic3A7
IEFtbWFyIEZhaXppPC9kaXY+PC9kaXY+PC9kaXY+PGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxi
cj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+T24gTWF5IDI2LCAyMDIxIDU6MjcgUE0sIEFtbWFy
IEZhaXppIHZpYSBHV01MICZsdDtnd21sQGdudXdlZWIub3JnJmd0OyB3cm90ZTo8YnIgdHlwZT0i
YXR0cmlidXRpb24iIC8+PGJsb2NrcXVvdGUgY2xhc3M9InF1b3RlIiBzdHlsZT0ibWFyZ2luOjAg
MCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+PC9i
bG9ja3F1b3RlPjwvZGl2Pjxicj48L2Rpdj4=


--===============8156058113949444643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============8156058113949444643==--
