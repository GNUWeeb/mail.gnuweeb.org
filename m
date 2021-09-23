Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 04QqEXBTTGENPgAAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Thu, 23 Sep 2021 10:14:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id CC5B0C1661;
	Thu, 23 Sep 2021 10:14:06 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=EzNQoiVD;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181]) by gnuweeb.org (Postfix) with ESMTPS id 841C8C1677
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 10:14:04 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id x8so860139plv.8
 for <gwml@gnuweeb.org>; Thu, 23 Sep 2021 03:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LauTXVneHgv7XsfH45nrzCV68KmXuSK/5vD6bCOClBE=;
 b=EzNQoiVDGnqsiebg5DUpzVeFw2IzXM6EzaJKMPddfnwFQe+z3SDdU8uNl5Z5jSg2Ng
 s67P+qcGcKVYsu+tJAQjd7ceJS25rqizD2wgXIb6OiXp6trmky/to+qiqlp3gGrTFsD8
 LbhT0v27zYyyWSpuZyLZJeFFFm4U1NASRBvzkIq3y2RMsBXzBIp1Yoj+gCbiDq1VC5cu
 3qWkFbvLhwy7PfHqvTI0I2CrPl/1OaU/nj9cnIPlQ6VSErYggkKz479kwSkQ/OmPdazu
 so3glgHGeseNhB/s+lyIYmP/hMWuNRUgY7WZRzXXw6ASKPxKukubvB8QsWrc1eUo5tkq
 kc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LauTXVneHgv7XsfH45nrzCV68KmXuSK/5vD6bCOClBE=;
 b=3w4b6OL8VVJwxdTkB7/97gC5feUQcdRRk0i8R8U2lC04DE106LZkZBG+BcHl65m3VW
 LUvGU9gdhIOaeQud/2Z600Qio1BZKnf7lVtxPPCpDas5DWOEBJ5YJCW9F8aHrbOpNok0
 J0X7Agga1rxNtItIyiK4jceytG1mlwI1Hhn+jiQ/cge7AALbx4NHBDOdVKHX3I3hMplb
 yaFJQoI+ONd2M0a0zUMEpvHRLeTZ2DDSYSiskiMPBLiDpxNJ4/hgZiZ8rA/2EuOjngAq
 L5QKpvmkB4jYIeJIr/VhNY5ZTeIn5Wur1G1ZomXTuvdhp/0ODd7NnfE9W8+T1a5T4nkH
 /6Ig==
X-Gm-Message-State: AOAM533+kNXNRQZDkhPp0/KUqKo1zhi2GnznJivTmcptJjlK8SzhugFx
 2RgCNMzXbRBKXQCw+VhCkSRaM6uRxz0=
X-Google-Smtp-Source: ABdhPJwlgfKGZqyeeSdS21JNo5buv2RPokXPWv0E2sc2Ahv85ZbQ77fyQFpiUrsDw9BfxZZ5WnO3dA==
X-Received: by 2002:a17:90a:a6b:: with SMTP id
 o98mr4385037pjo.39.1632392042309; 
 Thu, 23 Sep 2021 03:14:02 -0700 (PDT)
Received: from integral.. ([182.2.38.103])
 by smtp.gmail.com with ESMTPSA id q11sm5267148pjf.14.2021.09.23.03.14.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 03:14:01 -0700 (PDT)
From: Ammar Faizi <ammarfaizi2@gmail.com>
To: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Subject: [PATCH www.gnuweeb.org] Add logs directory
Date: Thu, 23 Sep 2021 17:13:49 +0700
Message-Id: <20210923101349.386706-1-ammarfaizi2@gmail.com>
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
Cc: Bayu Satiyo <itsyuukunz@gmail.com>, Ammar Faizi <ammarfaizi2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Nginx requires a logs directory to save the access.log and error.log.
This directory was deleted by Bayu Satiyo in commit 772af78e1721e0
("Restructure Directory").

Now, I reinstate this directory.

Fixes: https://github.com/GNUWeeb/www.gnuweeb.org/pull/17
Fixes: 772af78e1721e0221d0b62552ac00f6e1a33656d ("Restructure Directory")
Cc: Bayu Satiyo <itsyuukunz@gmail.com>
Signed-off-by: Ammar Faizi <ammarfaizi2@gmail.com>
---
 logs/.gitignore | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 logs/.gitignore

diff --git a/logs/.gitignore b/logs/.gitignore
new file mode 100644
index 0000000..c96a04f
--- /dev/null
+++ b/logs/.gitignore
@@ -0,0 +1,2 @@
+*
+!.gitignore
\ No newline at end of file
-- 
2.30.2

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
