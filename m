Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id JCAsI8dpTGGSQgAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Thu, 23 Sep 2021 11:49:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 1908EC163F;
	Thu, 23 Sep 2021 11:49:26 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=pMG+Y5ut;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41]) by gnuweeb.org (Postfix) with ESMTPS id 86911C163F
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 11:49:24 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id dw14so4279413pjb.1
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 04:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CGhZqbJq8tTF4AXQpZFu7lqEYlFm0JRgLX8kHcjkrkg=;
 b=pMG+Y5utANy+3Jsqnn81UJI/y0/ybJtWBgp+U6OEJJ1nyQxCUzFI/6NLL30gvQEVgg
 NNz7Okpn520V7Qmv7Ty0Q0snvJryS8jRJH5bcBK7JZDSp3aamUlmKmvu/hDvpVkek6lD
 oln8JsbmOlBm4iCRyh+tCRwwu2rJbC9Hd1+bl6iuMnP+tcwuk7sP2DOtwxKJPIZoqw2p
 GpfvsR9iOH3TAHh16vXDWZ1pplG1uWm8Xabswp+M59SMqQQoCaqqTYmFqTH9NWWUHTOw
 6QZN/ApdzGGgO1kjpSCx9HstZot2mWWEcigKoDSDcS4cYnxaFwljFIo+9gqjVxfk5OTW
 tRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CGhZqbJq8tTF4AXQpZFu7lqEYlFm0JRgLX8kHcjkrkg=;
 b=QFTwjQ0H8gKdWkXXY/uuNmLX69/w/KlH+x/z80SNz0EPd4ZZvUjjs5+99ysrCWwNJx
 Z/uxBtRt49cN+Qyh9zsJCrJRnvWARsdRcZpW56sDwsJfvbBGsjsfry/UXGSepiswgtpg
 IBy8Yp+zXha+myXPk0prj82ouojkKtqbDVVzcOXM3uVXg1m76NCow/45N9l9utY74abX
 7v2bm9Kt2VOgvysHD1pxTkJXVsFvfOcQfyDwWZ8aWupiHobhEBPJ95aBQCjqzTKsGKX5
 OHmGy2152U6oWBSJrxbyv+nxwIgfVdpWTHK3ObTlFpDmioGSuGBs4V07Rr5JIEYAmKZv
 h1xQ==
X-Gm-Message-State: AOAM533rVg6KxzJZnuGfoLgUkckHMF6X3aIAmFOxtR+KJerm97Q9XQJ3
 /46vPiRMHNPzoj9mzCR9Wu9eJeIZ6Ps=
X-Google-Smtp-Source: ABdhPJzq4tsIvSe8VPDnbK5yUCqWGy6CCeBOi6otdd80RO6woUX01hDY5FMYSUct9+KTzhA6PYsfZw==
X-Received: by 2002:a17:902:7fc8:b0:13a:6e6b:a240 with SMTP id
 t8-20020a1709027fc800b0013a6e6ba240mr3548017plb.6.1632397761741; 
 Thu, 23 Sep 2021 04:49:21 -0700 (PDT)
Received: from integral.. ([182.2.38.103])
 by smtp.gmail.com with ESMTPSA id o85sm5672465pfd.151.2021.09.23.04.49.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 04:49:21 -0700 (PDT)
From: Ammar Faizi <ammarfaizi2@gmail.com>
To: Irvan Malik <irvanmalik48@gmail.com>
Subject: [GIT PULL] Fix nginx integration
Date: Thu, 23 Sep 2021 18:49:01 +0700
Message-Id: <20210923114901.392531-1-ammarfaizi2@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Bayu Satiyo <itsyuukunz@gmail.com>, Ammar Faizi <ammarfaizi2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Irvan (@irvanmalik48),

After the pull request from Bayu Satiyo is merged
(https://github.com/GNUWeeb/www.gnuweeb.org/pull/17), the live
production site is down because he removed the public and logs
directory.

This pull request contains fixes and extra clean up for that. Detailed
changes are written in commit messages and diffstat.

Please review and pull.

Fixes: https://github.com/GNUWeeb/www.gnuweeb.org/pull/17
Cc: Bayu Satiyo <itsyuukunz@gmail.com>
Signed-off-by: Ammar Faizi <ammarfaizi2@gmail.com>
----------------------------------------------------------------
The following changes since commit f0b84bebef98b328105d67c8d57cbe0a464f9fd3:

  Merge branch 'kiraio' of https://github.com/kiraio-moe/www.gnuweeb.org (2021-09-23 16:30:29 +0700)

are available in the Git repository at:

  https://github.com/ammarfaizi2/www.gnuweeb.org tags/fix-nginx-integration-from-ammar

for you to fetch changes up to 2af685e6c29d5f34c053a1d0c91c45d213b17ba5:

  _config.yml: Remove bad description (2021-09-23 18:05:41 +0700)

----------------------------------------------------------------
Pull request from Ammar Faizi <ammarfaizi2@gmail.com>

Fix nginx integration and clean up.

This fixes broken pull request from Bayu Satiyo at:
https://github.com/GNUWeeb/www.gnuweeb.org/pull/17

After the pull request from Bayu Satiyo is merged, the live production
site is down because he removed the public and logs directory.

These commits contain fixes for that and small extra clean up.

----------------------------------------------------------------
Ammar Faizi (8):
      Add logs directory
      .gitignore: Add `*.lock`
      bin: Make the scripts executable
      .gitignore: Add `.tmp` and `/*.patch`
      bin/build: Fix broken production build script
      _config.yml: Fix build destination
      _config.yml: Remove `baseurl` value
      _config.yml: Remove bad description

 .gitignore                                             |   5 ++
 Gemfile.lock                                           |  87 -------------------------------
 _config.yml                                            |   8 +--
 bin/build                                              |   8 +--
 bin/check                                              |   0
 bin/clean                                              |   0
 bin/serve                                              |   0
 bin/setup                                              |   0
 bin/update                                             |   0
 logs/.gitignore                                        |   2 +
 public/assets/css/bootstrap/bootstrap.min.css          |   7 +++
 public/assets/css/bootstrap/bootstrap.min.css.map      |   1 +
 public/assets/css/default/gnuweeb.css                  | 102 ++++++++++++++++++++++++++++++++++++
 public/assets/img/favicon.png                          | Bin 0 -> 6903 bytes
 public/assets/js/bootstrap/bootstrap.bundle.min.js     |   7 +++
 public/assets/js/bootstrap/bootstrap.bundle.min.js.map |   1 +
 public/feed.xml                                        |   2 +
 public/index.html                                      | 364 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 public/robots.txt                                      |   1 +
 public/sitemap.xml                                     |   6 +++
 20 files changed, 506 insertions(+), 95 deletions(-)
 delete mode 100644 Gemfile.lock
 mode change 100644 => 100755 bin/build
 mode change 100644 => 100755 bin/check
 mode change 100644 => 100755 bin/clean
 mode change 100644 => 100755 bin/serve
 mode change 100644 => 100755 bin/setup
 mode change 100644 => 100755 bin/update
 create mode 100644 logs/.gitignore
 create mode 100644 public/assets/css/bootstrap/bootstrap.min.css
 create mode 100644 public/assets/css/bootstrap/bootstrap.min.css.map
 create mode 100644 public/assets/css/default/gnuweeb.css
 create mode 100644 public/assets/img/favicon.png
 create mode 100644 public/assets/js/bootstrap/bootstrap.bundle.min.js
 create mode 100644 public/assets/js/bootstrap/bootstrap.bundle.min.js.map
 create mode 100644 public/feed.xml
 create mode 100644 public/index.html
 create mode 100644 public/robots.txt
 create mode 100644 public/sitemap.xml
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
