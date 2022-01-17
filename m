Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 3YEeA7y75WEm4wUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 18:55:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D44FBC16A3;
	Mon, 17 Jan 2022 18:55:52 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=I5xgYKAq;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gnuweeb.org (Postfix) with ESMTPS id C8A92C17BC
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 18:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642445750; x=1673981750;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=rSSDTIAen0zDd6kEhdfoILJM56+4S6HFTy7KKtUouJM=;
 b=I5xgYKAqLAqpuP+EtjP3isicOHS/nLjGFcSwuSMTknRuxmExiHpW3OFd
 K+P4cw3ohPc47uakHYB00n3nczbD4c+mdUMISgoDr3hO62zlY7/yPy1HP
 bcssz0/OdDLATwJCZsW3IRXTyJRddna22xsxAdvpJ06lbdgiMmuqtYI7/
 rVQgGvWSOGf2szY+kdbyDzpRBmGOKvnABQKRSDZdKbv7KfbQU19CPXSkd
 y+wxtg4sPophD8jlYpTdAMDQkvsGUCtVsSSExAnylkWOElzeF9FS0sEl6
 CfwUgzY4UfjRRRUmfUuNp58jBRTqgdBgGIag79zf6aMMBQztj5nV7evms Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242236120"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="242236120"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 10:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="594872834"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2022 10:55:45 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9XAO-000Bmq-QO; Mon, 17 Jan 2022 18:55:44 +0000
Date: Tue, 18 Jan 2022 02:54:49 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 20/24]
 xtensa-linux-ld: fs/fscache/stats.o:undefined reference to
 `netfs_stats_show'
Message-ID: <202201180236.bFOg48wO-lkp@intel.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block dhowells/linux-fs/netfs-lib
head:   12617e48874cc7e301b04f65b22b762cca3aea01
commit: d775438577aaab8808eaf4cfb2963d941a439b8b [20/24] netfs, fscache: Make netfslib depend on fscache
config: xtensa-randconfig-r021-20220116 (https://download.01.org/0day-ci/archive/20220118/202201180236.bFOg48wO-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/d775438577aaab8808eaf4cfb2963d941a439b8b
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout d775438577aaab8808eaf4cfb2963d941a439b8b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=xtensa SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> xtensa-linux-ld: fs/fscache/stats.o:(.text+0xac): undefined reference to `netfs_stats_show'
   xtensa-linux-ld: fs/fscache/stats.o: in function `fscache_stats_show':
>> stats.c:(.text+0x1a7): undefined reference to `netfs_stats_show'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
