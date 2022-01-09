Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id ovqmKakR22H6jAQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 09 Jan 2022 16:47:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 55C63C2A2C;
	Sun,  9 Jan 2022 16:47:36 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=kernel-dk.20210112.gappssmtp.com header.i=@kernel-dk.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=tTCcfQ3w;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com
 [209.85.166.169]) by gnuweeb.org (Postfix) with ESMTPS id 197E4C163B
 for <gwml@gnuweeb.org>; Sun,  9 Jan 2022 16:47:34 +0000 (UTC)
Received: by mail-il1-f169.google.com with SMTP id b1so9356224ilj.2
 for <gwml@gnuweeb.org>; Sun, 09 Jan 2022 08:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:in-reply-to:references:subject:message-id:date
 :mime-version:content-transfer-encoding;
 bh=xWI3vNvmJfkrk5zSMMt3m4H8NBhpSTby79+KRMrIVro=;
 b=tTCcfQ3wUNKqEYSJ9hV+mo0+y/rj6IlemkWzjotqMkznRlVmfJvV84Sqm63cu3Jbz2
 1zffd7b1HsctsXx3LxpZ2v4Hg9gKa5JTDJ+rCiEygv076Q2BJ3atIInp5rTpzVIqBPnQ
 lnXz6+F5E7bNRxYZKaPyl97CM64oY2Ac6vXcAHemCEkSonz0qbuQeiyrQSrjAmLYVr87
 uv6isgv5uLP+UoTzpHXCGVM7iTvg+Z6iQAmpAatofz+AdTLsV/6nZyL9rb6rGwC5EomS
 shoFji/9ZXDKEWWT8IUJQ6/Iz++4apR5zIhdmN/BAn9EnBKQ1zrdJ6Vjg2ZRm+TmWJJn
 lgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject
 :message-id:date:mime-version:content-transfer-encoding;
 bh=xWI3vNvmJfkrk5zSMMt3m4H8NBhpSTby79+KRMrIVro=;
 b=n2tvjYzmwpdqGb6Vzf3bDA0tVE5wuLup9AdwdJIPWagIxnDh8CeneLRpaW1n6dxMBv
 jr5K/PVFpex75yuoHrTb+NLXBXmREcHkJECt7hcAF8r5tr1CCjoHNiFB8UHUF7TFylBc
 2MYZ2e1OuWHAI0Vryd8Bh0rV/l4JQ8o0x/WugLkx+RRSvFiGpFHiKwcMzyDKWQV4B4PS
 7FvFW6r63xw3CK8khoHSoJEnWjWH3gftdYyv1qWe4QXYBJNVhjPYugbRLzqhoXFJz9m/
 XpIHkC/IEpm31FggtcN3TvsoKOlu67MLoP0kDd6qtF8oMaNdNCYh/nAkR+ByQypsQht9
 DiXg==
X-Gm-Message-State: AOAM532O3Y0XsqzU90pGpZzLYMlGqzcMlHlWdPCTOTF38IVdWow5oHff
 s1SE3p2vE62PAo3E9KY/HcS4+g==
X-Google-Smtp-Source: ABdhPJykikycN3zW/Nq4TrdDL2iDS6cvHhZXqzgLY5rS7vpDWVxnYs8pnnu4lp5MFstYan62jrTEMw==
X-Received: by 2002:a92:d34d:: with SMTP id a13mr7838543ilh.266.1641746851830; 
 Sun, 09 Jan 2022 08:47:31 -0800 (PST)
Received: from [192.168.1.116] ([66.219.217.159])
 by smtp.gmail.com with ESMTPSA id v5sm2773135ilu.77.2022.01.09.08.47.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Jan 2022 08:47:31 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
In-Reply-To: <20220107130218.1238910-1-ammarfaizi2@gnuweeb.org>
References: <20220107130218.1238910-1-ammarfaizi2@gnuweeb.org>
Subject: Re: [PATCH liburing 0/3] Fix undefined behavior, acessing dead object
Message-Id: <164174685029.72168.15306294752052885000.b4-ty@kernel.dk>
Date: Sun, 09 Jan 2022 09:47:30 -0700
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
 io-uring Mailing List <io-uring@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On Fri, 7 Jan 2022 20:02:15 +0700, Ammar Faizi wrote:
> This series fixes undefined behavior caused by accessing local
> variables that have been out of their scope.
> 
> FWIW, compile the following code with gcc (Ubuntu 11.2.0-7ubuntu2) 11.2.0:
> ```
> #include <stdio.h>
> 
> [...]

Applied, thanks!

[1/3] test/socket-rw-eagain: Fix UB, accessing dead object
      commit: 5ee4feeac88d42c8c4cadee1f242279ff5fc0277
[2/3] test/socket-rw: Fix UB, accessing dead object
      commit: e5bb9f3e65f0e18132b27ba0322e2419d87f4f92
[3/3] test/socket-rw-offset: Fix UB, accessing dead object
      commit: 3f10277e6412d56cb52424d07f685128112498fa

Best regards,
-- 
Jens Axboe


-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
