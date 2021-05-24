Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id N1R5OzZHq2CXuQAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 24 May 2021 06:27:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D46AEC0055
	for <sprite@gnuweeb.org>; Mon, 24 May 2021 06:27:02 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=pGtvTKEz;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177]) by gnuweeb.org (Postfix) with ESMTPS id 8F8E0BE801
 for <gwml@gnuweeb.org>; Mon, 24 May 2021 06:26:56 +0000 (UTC)
Received: by mail-il1-f177.google.com with SMTP id h11so23966611ili.9
 for <gwml@gnuweeb.org>; Sun, 23 May 2021 23:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=QNTzVA2viPaua6S2JMn4fQedZLxOHwXkbJVoIGzFbaQ=;
 b=pGtvTKEz4xdQh3nuHn4AUEdEyy99dOvn8gEwCZ1rFMb1sINPmNt4y0/Tukkruphidk
 Py4HlOdJhl5GSCt7b3OPvNMGypxdAieEib2PtzC0cB+KPzkl0bVdSjH10Al/4HlfiEiy
 aRy8v1nKSPFge65yZ7RucK2997QkRgZvpWWVOcc0C6bQBXwy1DgHjd2ZZW18OgFO7b4n
 e71UrlRgDNYpDvJsldukZhn2mQVdXFnTEcQO8UmdfuYxpgbxb8wgOtid0JhAW864Tuy3
 otWXcJ74pvsGzdKh+YaJhnmHObN6KcXHxeu9nNrT/YnwdnemxKA1T8gm2VfSpAdUGRnw
 TlMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=QNTzVA2viPaua6S2JMn4fQedZLxOHwXkbJVoIGzFbaQ=;
 b=jRUtQ1EF9pIxPlwXyPnbEzbel43a1UOBwrgY/dVhpeTBivNol2s7lBU1xhqWsLSGXJ
 6FpcklmfWlAKfPALmjtlI7zeR1Y9cqWkfsy5LolejSfEbvClUnERu2xrzXbZV2aLX0c0
 QvMWBUV0ln/0/O3VD+MMub9Lk0RBKw9d9XU/U6ov84tcplCSwObm2N5LUY/806SkhS6i
 05+qdZR3Iz6vEkU/sSC8A+0trrnCoMhWqeWgNDr34u96UUyOK17Pbg3/eJkxX9+YFl7N
 bk3YaXFe5l3rEHrqCOS4CDy8Ilnpv8lq9F7egYOeRyqvkjY8Z5TjV82qxcpBSXpRv5ra
 fmyA==
X-Gm-Message-State: AOAM531xbuL2fK/zpmakrqKA8e7sIp2krz/mvw/oEuKizqM0L+AiANIY
 ZSQeAr7jYz7Ne1qB/Oclok4b/sKg1/qDrPL+5LU=
X-Google-Smtp-Source: ABdhPJy3IhB30g4Tv72rQM5hiNMcTiukGm/eTwLAfL3+PZCOgQBhivOYHDU28nXIC9XRMvjbe39PM6Z+RSjU/+JpaO8=
X-Received: by 2002:a92:6c0f:: with SMTP id h15mr13758382ilc.19.1621837614289; 
 Sun, 23 May 2021 23:26:54 -0700 (PDT)
MIME-Version: 1.0
From: Ammar Faizi <ammarfaizi2@gmail.com>
Date: Mon, 24 May 2021 13:26:37 +0700
Message-ID: <CAFBCWQKYUYvzqDQjwJQNg046W4M=hzc529u3qpgC_y-38OTL8w@mail.gmail.com>
To: ammarfaizi612@gmail.com
Subject: [gwml] test
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
Cc: gwml@gnuweeb.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

qweqweqwe
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
