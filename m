Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 574rCpiU52E+HwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 04:33:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id E5567C1660;
	Wed, 19 Jan 2022 04:33:25 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=fi3I4kCd;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gnuweeb.org (Postfix) with ESMTPS id 95842C2B28
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 04:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642566802; x=1674102802;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=mU9AD4yF2StIiA114LVwMmC9ZD8I31kN9olxx7jsFwY=;
 b=fi3I4kCdlVFGgNYdcy8PZvK7FHke//LKkG2zXlwnvg1C+Uh8J2H58Uuu
 vs1CRZP4aGluI+pmjvaVuBlaLzQiW5g8x3wbEOaAy2H2qtVywld2i5WNI
 8ZmRkqPCZJsi6/NIeRpWBGzWIF6HBdZofVLwZjkAvs3JjoihN5sXc2Jmn
 KvTFTr5qDJ1p+a8aOmZ9+dM8D9HUfhIrhNGKj43NOMW6J1RuYA7EOBEh5
 btv0f9nMSmxd+vVwhkzwxhjWLkDYcN+/5wjtMhyUBlr+lyUDb4ZPDTF4x
 xMq/oijfySt4YftMdewmUDu8zzYZDp9/hONdLo/RJwYZxdp+kN9i2RO0z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="244937884"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="244937884"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 20:33:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="625747001"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2022 20:33:18 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nA2es-000DFk-7Z; Wed, 19 Jan 2022 04:33:18 +0000
Date: Wed, 19 Jan 2022 12:32:36 +0800
From: kernel test robot <lkp@intel.com>
To: Connor O'Brien <connoro@google.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android13-5.10
 9989/9999] main.c:118:5: warning: no previous prototype for 'eprintf'
Message-ID: <202201191239.XKS6Ud9B-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 linux-kernel@vger.kernel.org, Andrii Nakryiko <andrii@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android13-5.10
head:   976a28295a01db618903406bd67cae53a4c29832
commit: 44b9bfcd4cdbc57889a0fecf79a6d30237f21bed [9989/9999] FROMGIT: tools/resolve_btfids: Build with host flags
config: x86_64-rhel-8.3-kselftests (https://download.01.org/0day-ci/archive/20220119/202201191239.XKS6Ud9B-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/44b9bfcd4cdbc57889a0fecf79a6d30237f21bed
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.10
        git checkout 44b9bfcd4cdbc57889a0fecf79a6d30237f21bed
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 prepare

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> main.c:118:5: warning: no previous prototype for 'eprintf' [-Wmissing-prototypes]
     118 | int eprintf(int level, int var, const char *fmt, ...)
         |     ^~~~~~~
   main.c: In function 'symbols_collect':
   main.c:407:7: warning: unused variable 'err' [-Wunused-variable]
     407 |   int err = -1;
         |       ^~~
   main.c:404:9: warning: unused variable 'tmp' [-Wunused-variable]
     404 |   char *tmp, *prefix;
         |         ^~~
   main.c: In function 'eprintf':
>> main.c:128:9: warning: 'ret' may be used uninitialized in this function [-Wmaybe-uninitialized]
     128 |  return ret;
         |         ^~~

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
