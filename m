Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 8FvfLlqV52FsHwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 04:36:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 7BFC9C2B11;
	Wed, 19 Jan 2022 04:36:41 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Mwp2mFsx;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42]) by gnuweeb.org (Postfix) with ESMTPS id 38659BEF28
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 04:36:39 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id w7so1358703ioj.5
 for <gwml@gnuweeb.org>; Tue, 18 Jan 2022 20:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3Cap/PxeNnv1OJYjUI7Ahsg5U527hUTt+9b0IAzY98A=;
 b=Mwp2mFsxVmsDd0cRblkrzyqLSwPBDBcubnHNSZxbA0WEDJWilr7V+H3x8Rtjr3Ew7T
 7t+QP4BcL4tBo7leBHcNbY8R9HmWvZsSpkO5fGwkFbUCsrKxhXkH+DF9chPjK+kyeZyq
 HFzw+R6QiQIRp1Lb93BieJEjwkDoiC3iX8meYC+lgOC0BRIvUpzLgccNEWAx9Bpd3kca
 RnsBQqL+iqQn7X8U+1t+rCQ7k4vRXpJtNTkrMJ5rnhSZRFPEVPk0IFhL8YXpL+cYy0Ty
 OXNkDQt6ays8YL0P4zYg5XZLmXin+Dv6kdR76pdtPbxBJhPk/cjPudTYE/Z684VzckhA
 OlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Cap/PxeNnv1OJYjUI7Ahsg5U527hUTt+9b0IAzY98A=;
 b=S9fakQRLb8MgxJFSRHpmtg53qR/lPuSX6/NYIJm2sFoQcpglLQiI+Opr4EI5M3gaAA
 l7OqmVWGlcBg3o3pbgPoUstduUDIvpoweZkoKMbUToBFm2GYlO7ewO6vC9BQf9gjsygm
 poiuxRsbCo5+wC0bXLfyYZVpJ7Jp49rO13XEJe7Ccc80x4ozQhL4MrZWOQ+3zpk2eDak
 aF6P0i5oHm9nOSb1aQ2P+4+jN6KQMlV7q1Gcxhq8Ak2wy9Fhgc9teoFNPvVpefnK1cKC
 NZ+Fe6bbe3Ll4hcT42TkM+joydsU+Ja/HVXoVRUoWGbl9vNDcQzKRg2LTFYS0g1zuikZ
 W6bA==
X-Gm-Message-State: AOAM530dDMdsA/p3hXlyKfk6EATw0nSmH5Hr135DUc6GcEswMzJuSswM
 t5DWwGkoAKvmjMDroj3YPtKTjWiZh7nydkQvnLI=
X-Google-Smtp-Source: ABdhPJwL8khuogtYzmWQG/CyUnZY9UbrmZJd6/eRRzAQYXXODykU5b9it5wwUOIs2oG4feF1K34RUbPsZHZeLJpAlFc=
X-Received: by 2002:a02:8648:: with SMTP id e66mr12789960jai.145.1642566996961; 
 Tue, 18 Jan 2022 20:36:36 -0800 (PST)
MIME-Version: 1.0
References: <202201191239.XKS6Ud9B-lkp@intel.com>
In-Reply-To: <202201191239.XKS6Ud9B-lkp@intel.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 18 Jan 2022 20:36:25 -0800
Message-ID: <CAEf4BzawhgxW6jvFyJ9twyYE6buu9+QE=gFK9H7U+Bf6gryNwg@mail.gmail.com>
Subject: Re: [ammarfaizi2-block:google/android/kernel/common/android13-5.10
 9989/9999] main.c:118:5: warning: no previous prototype for 'eprintf'
To: kernel test robot <lkp@intel.com>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>, kbuild-all@lists.01.org,
 open list <linux-kernel@vger.kernel.org>, Connor O'Brien <connoro@google.com>,
 Andrii Nakryiko <andrii@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On Tue, Jan 18, 2022 at 8:33 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android13-5.10
> head:   976a28295a01db618903406bd67cae53a4c29832
> commit: 44b9bfcd4cdbc57889a0fecf79a6d30237f21bed [9989/9999] FROMGIT: tools/resolve_btfids: Build with host flags
> config: x86_64-rhel-8.3-kselftests (https://download.01.org/0day-ci/archive/20220119/202201191239.XKS6Ud9B-lkp@intel.com/config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> reproduce (this is a W=1 build):
>         # https://github.com/ammarfaizi2/linux-block/commit/44b9bfcd4cdbc57889a0fecf79a6d30237f21bed
>         git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
>         git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.10
>         git checkout 44b9bfcd4cdbc57889a0fecf79a6d30237f21bed
>         # save the config file to linux build tree
>         mkdir build_dir
>         make W=1 O=build_dir ARCH=x86_64 prepare
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> main.c:118:5: warning: no previous prototype for 'eprintf' [-Wmissing-prototypes]
>      118 | int eprintf(int level, int var, const char *fmt, ...)
>          |     ^~~~~~~
>    main.c: In function 'symbols_collect':
>    main.c:407:7: warning: unused variable 'err' [-Wunused-variable]
>      407 |   int err = -1;
>          |       ^~~
>    main.c:404:9: warning: unused variable 'tmp' [-Wunused-variable]
>      404 |   char *tmp, *prefix;
>          |         ^~~
>    main.c: In function 'eprintf':
> >> main.c:128:9: warning: 'ret' may be used uninitialized in this function [-Wmaybe-uninitialized]
>      128 |  return ret;
>          |         ^~~
>

All this has been addressed 9 months (!) ago by:

e27bfefb21f2 ("tools/resolve_btfids: Fix warnings")


> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
