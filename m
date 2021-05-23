Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id jDJtHD5+qmBnngAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 23 May 2021 16:09:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 569B7C0055
	for <sprite@gnuweeb.org>; Sun, 23 May 2021 16:09:34 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=ahSStAf8;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48]) by gnuweeb.org (Postfix) with ESMTPS id CC59BBE801
 for <gwml@gnuweeb.org>; Sun, 23 May 2021 16:09:30 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id g7so16877985edm.4
 for <gwml@gnuweeb.org>; Sun, 23 May 2021 09:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=i77AqfkADXV2vVKh1L0SMulz3bLazG9zHXIgEH+/fv0=;
 b=ahSStAf82I4VzUbvhedzh40r6MQbONh1F08pQ6YuyH9tigWA4J8DxnDqTa9ESYeEhV
 iLgOzmIaae16IRsVqh1JPs//9qwSQwCGGqlfMJZr6fY9H7PEhRVEvgXWAuC6/+lngdh4
 XVJsNQ6CjdHceOIXooU9LdAHWINMj51qjYh3LDBgiqF79hmejijnbXKh6jzqcaWmGIi7
 KXfG0bddN8XiRgG5LODf8QP/731DCWl+PGfg2CNsBzMhpRjWVr+30aJyi3IjhncgsN+i
 f4ZI5MqRXekIkYN5xnHWW25NXY/CDXjz5UZeY3TQSh3WJdGeETbRP3sBTDX7Mh6bqLhM
 xtlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=i77AqfkADXV2vVKh1L0SMulz3bLazG9zHXIgEH+/fv0=;
 b=tZFcO2difAAIYEy9HAuACxAJ4N9kSFIUayID1Dnddml31uPfpSIYZVZ760zGcCB1KB
 ShS6mBZeAccXDFnXGUZCK6aQRsw8V/mhwNJLIBzN4FQR93U5lk6Ch4zWyMNuBam/Wd6u
 bMk9wA24VVC4Wq/4KD5Y5foN5SztnZajkA5DxIXCHSZOf6w4TioSHQlBVkjLtj4OA6rG
 E9etYsUxy+VRmGa2n7vUG0fuzvEPwRNzGg9Uv2seoNCSWDEkFztwjfFjBqNyIdvX973H
 P4qQtBjKC655553nlTeLmeq1vl/52eBsAisS2tcfwg1tyS8UztCcSYGAmue1JYGpvXoR
 24lg==
X-Gm-Message-State: AOAM530z7Ihk0PgvRuQL04DYw6Y0Dbtg2ixgmbhU+SXnqS9how3YKqxt
 TYMkMFmrDErn5KrXxV87YfEyjWJk79ZqoLPd12jrDasG
X-Google-Smtp-Source: ABdhPJxTdQTmnKdyM4/ys3WEcxzigTuNEuuCvXyi3+TktIfV/6dsdExTwmY7IBstqG+l+j8fL79ECnBEMUWGhvRYbr4=
X-Received: by 2002:a50:fd0d:: with SMTP id i13mr21376763eds.163.1621786164868; 
 Sun, 23 May 2021 09:09:24 -0700 (PDT)
MIME-Version: 1.0
From: Sprite <sprtcrnbry@gmail.com>
Date: Sun, 23 May 2021 23:09:14 +0700
Message-ID: <CAJenrjTVxEg_JcrLAf89SfMdookV=1Kf6=VNnLEfFajQqX2kzQ@mail.gmail.com>
To: gwml@gnuweeb.org
Subject: [gwml] Hello, Another test
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
Content-Type: multipart/mixed; boundary="===============6716050766725749948=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

--===============6716050766725749948==
Content-Type: multipart/alternative; boundary="0000000000004239a105c301841d"

--0000000000004239a105c301841d
Content-Type: text/plain; charset="UTF-8"

This is a test for GNU/Weeb Mailing List, from outside address. Google Mail
(again)

--0000000000004239a105c301841d
Content-Type: text/html; charset="UTF-8"

<div dir="auto">This is a test for GNU/Weeb Mailing List, from outside address. Google Mail (again)</div>

--0000000000004239a105c301841d--

--===============6716050766725749948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============6716050766725749948==--
