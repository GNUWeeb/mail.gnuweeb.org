Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id vnLcOu87q2B7tAAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 24 May 2021 05:38:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id C7846C0055
	for <sprite@gnuweeb.org>; Mon, 24 May 2021 05:38:55 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=vI8Oh5Gh;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
 [209.85.166.43]) by gnuweeb.org (Postfix) with ESMTPS id D7D30BE66A
 for <gwml@gnuweeb.org>; Mon, 24 May 2021 05:38:53 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id a8so18537193ioa.12
 for <gwml@gnuweeb.org>; Sun, 23 May 2021 22:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cWd6kvYcL3zgGIBAuLaCW02rB2ewDbJCIzIrilPZzfQ=;
 b=vI8Oh5Ghx4ZY5IX+CJNFOU22AR2095Ev7WiuhOp9uYutf8Bl2h/DiPeintfkKP+Hp2
 nf4eAlMVS0dBCWB3utTOdTYr3JQVFUqU6DpLyGHlKFTwtiynWfRmfxxa1AZFVkWo+1s9
 AZTNoX7LSOfKJEIEK0dkL/JVZwUZXXJoyLnYyz31sFKhn/A1ea7BgGsZ7tVv5vrdJzfH
 4yVvSocQd8XPKFkBZQmWjyXHHwXvsA7jyCU6a0fzz1cQaYU1Ox7/UNHYNxEN8jfDJnm4
 SBEwzsATgvrGAerZc1vcIIPkWuDJSpuWt4m9A1pqC9A2o5hMA5U8O4VwAPDkrcjgCw6U
 pmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cWd6kvYcL3zgGIBAuLaCW02rB2ewDbJCIzIrilPZzfQ=;
 b=SY4HgCENdEjZOJHJ3FarcWak0F78rx+eYjvmJgLWEbgWrZVJnYXXiDRJIMBYmI2fJo
 gMvXG8xizSTxydVeHaLxEJ3uxLOTXW+ll3rB47vhk20dSTdMlnRwInq0edy4cXsToD15
 yjG/BZ1AasWZRLaGtf1oRf4nWtL/gdP9jp7+jig+ArdsgDG6Nij82C16rRoMm38WRryL
 hT2t4QTbwEOD3IZEBd7SYybl37HT6g8wFmcctTbMcZiAQ8J9zell7teGI/Tmw+aakTZL
 WbX1WFriNROVHKtDy+zPyC1DttVrxg6ptADOsV/VoY3rtuZpidvAO4Id3HIGMNexNTso
 ZpyQ==
X-Gm-Message-State: AOAM531kuBMiqLaY0fwKCx5oV7jQpaALp3vQ1vngJU9JSZ5ESabIUWwh
 soM6VJ9vuzQOkQfeV68GvIt0atw77dWm+ZnRYn7vrBNIXXk=
X-Google-Smtp-Source: ABdhPJx1SyQsHUCqFvbHQ0i1k+byKEwgBq0rQgJ3iE/Nq9HCGLowSwzl3OS1NVRC59SXksDLJ/x5mVdgK2dENFqOoLE=
X-Received: by 2002:a5d:9916:: with SMTP id x22mr13160182iol.160.1621834731308; 
 Sun, 23 May 2021 22:38:51 -0700 (PDT)
MIME-Version: 1.0
From: Ammar Faizi <ammarfaizi2@gmail.com>
Date: Mon, 24 May 2021 12:38:27 +0700
Message-ID: <CAFBCWQL4QCK9=8AWgcrHnSEn3iqGMYRmAJsgg0v+OG2ig_sZtg@mail.gmail.com>
To: gwml@gnuweeb.org
Subject: [gwml] Test
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

test mailing list
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
