Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 5iA8DPpgTGGmQAAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Thu, 23 Sep 2021 11:11:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id C0CBFC16D1;
	Thu, 23 Sep 2021 11:11:46 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=kLwoZX7z;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169]) by gnuweeb.org (Postfix) with ESMTPS id 04F43C163F
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 11:11:44 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id q23so5375371pfs.9
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 04:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VlCeUa/c194ULRsdgr7swNKbJOp+3nrdtGYYCsOcf5w=;
 b=kLwoZX7zHNi/Ell+dZkdpLWiUGyGZ0xNMr1MNTfEQNbp0MIc2dhcB8B4qWFWSOs827
 M1/n9t8WSv6VpiCfUB9MIfzvJJH1R8pCb/a+/hB/tPVh3wv2kGQ0tqkkaqJraQRsRMsE
 SlnRA1Sh6Y8Uj1sDn+V+K4swjzO1zP5+gArIdKE4vJCBmDCXc0xyoI8ia6XtCmYUGH5d
 EbrKXHTfGIrd3K7mLWKhwqk4g2tMi8SuO18Meq8Ped/iNqSHiG9ZoD56jnehaE7z2FxP
 XcV5/Llj3GJSyyGjOa5DxWD0+YO4eHQVxffXNDoxONX68thyiTAVads0k/yJVuffma5k
 qnpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VlCeUa/c194ULRsdgr7swNKbJOp+3nrdtGYYCsOcf5w=;
 b=A9YLF2eY9qZH1CvhsH4mXLzKC4cwwJSipAHn5UGpbViSo5Mhsyt8MlIO/y8ugtk+iQ
 o1MQ8naZV801MDmSSaorT6yJheZjEWL9uFnmMksx9YUCo7jJC55NKAWnLS7s/f9P35qm
 Zuh5Z7ydorc5Uw5jd/LTZn6F6SU6KiqEWRyRL4e/hbyG601+2UF3+tHoIch3tW6w2GtC
 BI2/Xy49l0HrupIt731r+6xc5cumfmXeqJd9MTsWnXXLIqpNz/eO2NcPRn3OPf7RrKHh
 XiSXpAClni4IxLXNj1KHaf0yZ0EIkicnAFh0g37VkATqSpGa4TZkHAbKOe+jS1djRQyM
 0ZtA==
X-Gm-Message-State: AOAM5312ipDUJGulS1JAYYmHEO/LGtTfRAsyUxjGfArDc/+BXVcxTbeP
 JbysEFmJstSfDz6tNK7NUaED7Esmnmc=
X-Google-Smtp-Source: ABdhPJzcklZIJsEIyr0zfIk1GYurszRvofzocjh27wOMExwdTgVQgiXMdj6RQXq6B1cGLHtMvzgBPg==
X-Received: by 2002:a63:4384:: with SMTP id q126mr3666210pga.1.1632395501451; 
 Thu, 23 Sep 2021 04:11:41 -0700 (PDT)
Received: from integral.. ([182.2.38.103])
 by smtp.gmail.com with ESMTPSA id q21sm4907025pjg.55.2021.09.23.04.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 04:11:41 -0700 (PDT)
From: Ammar Faizi <ammarfaizi2@gmail.com>
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Subject: [PATCH www.gnuweeb.org] bin/build: Fix broken production build script
Date: Thu, 23 Sep 2021 18:11:21 +0700
Message-Id: <20210923111121.390965-2-ammarfaizi2@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210923111121.390965-1-ammarfaizi2@gmail.com>
References: <20210923111121.390965-1-ammarfaizi2@gmail.com>
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
Cc: Bayu Satiyo <itsyuukunz@gmail.com>, Ammar Faizi <ammarfaizi2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Note that "dp:" means the `-p` option requires an argument. This does
not make any sense, because the production build script doesn't take
any argument at all.

Fix this by changing the "dp:" to "dp".

Extra fixes:
```
JEKYLL_ENV=production bundle exec jekyll build --config.yml
```
is a wrong command and won't run, the correct one should be:
```
JEKYLL_ENV=production bundle exec jekyll build --config _config.yml
```

Fixes: https://github.com/GNUWeeb/www.gnuweeb.org/pull/17
Fixes: 57c4aa9f53524ef13dbf124cb6694fd64d4b13d3 ("Completing basic configuration")
Cc: Bayu Satiyo <itsyuukunz@gmail.com>
Signed-off-by: Ammar Faizi <ammarfaizi2@gmail.com>
---
 bin/build | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/bin/build b/bin/build
index e64cc1e..8c420f5 100755
--- a/bin/build
+++ b/bin/build
@@ -27,13 +27,13 @@ DevBuild() {
 # Production Build function
 ProBuild() {
   echo "Building deployment ready site..."
-  JEKYLL_ENV=production bundle exec jekyll build --config.yml
+  JEKYLL_ENV=production bundle exec jekyll build --config _config.yml
   echo "Done. Now copy the contents of ./docs to your server."
   echo "If you're going to deploy it to GitHub Pages, simply pull this repo, set GitHub Pages at Settings tab > Pages and source to ./docs in Settings tab."
 }
 
 # Handling Options
-while getopts dp: options; do
+while getopts dp options; do
   case $options in
     d) # Invoke DevBuild
       DevBuild
-- 
2.30.2

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
