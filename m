Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 532YN4AfrWCCcAEAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 25 May 2021 16:02:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 89EE5C297F;
	Tue, 25 May 2021 16:02:08 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=O8xL4PVP;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178]) by gnuweeb.org (Postfix) with ESMTPS id 32B4CC297F
 for <gwml@gnuweeb.org>; Tue, 25 May 2021 16:02:06 +0000 (UTC)
Received: by mail-il1-f178.google.com with SMTP id c4so11281961iln.7
 for <gwml@gnuweeb.org>; Tue, 25 May 2021 09:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=u+hwYTD10xEMJqW1DypK1t1RZAxxEOlB3fKlUnFp7n0=;
 b=O8xL4PVPsrkVuZbIolpDaME4DaO2tJcPiU4T/flbWL9jKy7b0vFFYnkYHvr7mhtWwY
 L4jgAeSelQ9zEPWOZE7MACQAn/BTClFSkXCOzIr/zkfUSn5+PcjKcQ0PHQc/QfCQhH0k
 RqyA/YvV9+6iVC4Fxdc6/bEJmz33pMnM+Tzb3WSiwkFnRSTtLb78DxES89fvBOMCVpB+
 yAZ7XT4KQZPrrv8loHj8aWGV4q8sjWrOdK400MwEo0nFFowKFhZMC7TBO/sgajbv375v
 8AcG8PluKM5IAMCCmCsUd+jESJL4WzNvR2qB8FN17ZWt+STwzM6XbNmS6x58rDFMrF3b
 7HWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=u+hwYTD10xEMJqW1DypK1t1RZAxxEOlB3fKlUnFp7n0=;
 b=Zz0tKPOQWFXkKLCFSy/fWiFVt+44S4yBGYmy3hZEgJVDtHxWUmLTYMbaFNEjxPs7PR
 wPzHow53gPsoyxceGEQEBrYvTbFME/UcJpL20M+PVpvVz1ZyWZuX48fSCUOSMX1pTCV6
 g9OGu5t83ih28e9aF7mvWsFmy3Znoue3MWfoF64YSa2oCfGeJ1/dpJzgfO8B6a3paFS+
 joj4+Ew1L8nPQZ2ZnvlxVou60MWXcfqNWhOBiYktdw30cUREZvZMRS8jep8cvNGPajx/
 /jIgov0vHmfR3KZIJkMCAO6eWO+S+DOHvbjGEKunjuDrnWrizupVf54xAWhR39STHV7i
 CjBg==
X-Gm-Message-State: AOAM533g51Rneyy1OQNRu/nSgUe/dgkUT4X2wBxUV8hhohxz/SHzj7Lb
 6xv3E7V9ZKGbAPUcON08I+LPfajoPYNCRwg8luVP7MYSKM0=
X-Google-Smtp-Source: ABdhPJymeZQTsKFjiZ3par9fzVdjfgLcxqQAlfPzChPG6WZYqUwhRU1YbnZIT04vSimPx7iJmorEVvuPa/55Rl1jEV8=
X-Received: by 2002:a05:6e02:f93:: with SMTP id
 v19mr15659299ilo.126.1621958519426; 
 Tue, 25 May 2021 09:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <c43ed234-a1cf-45ed-895e-7e891f00a6ae@email.android.com>
 <d6498a3f-f696-0a83-947c-9c91f97b2e2e@gnuweeb.org>
In-Reply-To: <d6498a3f-f696-0a83-947c-9c91f97b2e2e@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gmail.com>
Date: Tue, 25 May 2021 23:01:48 +0700
Message-ID: <CAFBCWQ+simzf3pXySXeQpd2B169cZbe4s6V2rnR-hNR9YwV_Ug@mail.gmail.com>
To: "GNU/Weeb Mailing List" <gwml@gnuweeb.org>
Subject: Re: [gwml] Test
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
Content-Type: multipart/mixed; boundary="===============4981048304514820637=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

--===============4981048304514820637==
Content-Type: multipart/alternative; boundary="00000000000064115905c329a540"

--00000000000064115905c329a540
Content-Type: text/plain; charset="UTF-8"

Good night

On Tue, May 25, 2021, 10:42 PM Farrel Pirade <yoru@gnuweeb.org> wrote:

> test
> On 25/05/2021 23:38, Irvan Malik wrote:
>
> Good night everyone
>
> --
> GWML mailing list
> GWML@gnuweeb.org
> https://gwml.gnuweeb.org/listinfo/gwml
>

--00000000000064115905c329a540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Good night</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 25, 2021, 10:42 PM Farrel Pirade =
&lt;<a href=3D"mailto:yoru@gnuweeb.org">yoru@gnuweeb.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>test<br>
    </p>
    <div>On 25/05/2021 23:38, Irvan Malik wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">Good night everyone</div>
      <br>
      <fieldset></fieldset>
    </blockquote>
  </div>

-- <br>
GWML mailing list<br>
<a href=3D"mailto:GWML@gnuweeb.org" target=3D"_blank" rel=3D"noreferrer">GW=
ML@gnuweeb.org</a><br>
<a href=3D"https://gwml.gnuweeb.org/listinfo/gwml" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">https://gwml.gnuweeb.org/listinfo/gwml</a><br>
</blockquote></div>

--00000000000064115905c329a540--

--===============4981048304514820637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============4981048304514820637==--
