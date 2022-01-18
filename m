Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id eWBrNBYF52EaDAYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 18 Jan 2022 18:21:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 5E01DC1601;
	Tue, 18 Jan 2022 18:21:09 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=nExwGGuw;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gnuweeb.org (Postfix) with ESMTPS id 99CCBBEF28
 for <gwml@gnuweeb.org>; Tue, 18 Jan 2022 18:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642530067; x=1674066067;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=EdNqGv3xnFii2TmxzYZKP/EMaaoub73SmUvUqBfCqpo=;
 b=nExwGGuw4fAHO5TryUCKtrEPPuI8wGQJDYWzNbDv0FeFqdmC/u+Pn9T4
 KmR/YxRO+D4h37AAnsMdBj3o08Au8CLn71g+T5k62FsEoOhHNydC3U3aL
 m5wallC9QXvlLtW2RsBBYIz+Z6Hu0kAhTv1BweVjHzKfHv6BRySMLV92z
 JAqG0M/VjbpQMrRf2eMdSCpa6liCo1TEDGMCIHvJNNHtiX1TlX4mo7uaw
 zDQrEhq1rRv6W3YoS59xUz09AF+bv0BuP9zPUWUj6vcKp0l0M44D1r6h9
 PjwXe4RhjuPiwPJryrE6FFZP37NWzJ54LjkosAtOsy9exdI8Znl3MaMcp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242445231"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="242445231"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 10:21:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="477079482"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 18 Jan 2022 10:21:04 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9t6N-000CpV-Dr; Tue, 18 Jan 2022 18:21:03 +0000
Date: Wed, 19 Jan 2022 02:20:58 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 19/23] ERROR:
 modpost: "netfs_invalidatepage" [fs/cifs/cifs.ko] undefined!
Message-ID: <202201190252.29bOuDYN-lkp@intel.com>
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
head:   e229088c2bc0ba29fdff1bc737506aed6ec50581
commit: eab3170e20c001ee23073a8705db22713b529c21 [19/23] netfs: Provide invalidatepage and releasepage calls
config: parisc-defconfig (https://download.01.org/0day-ci/archive/20220119/202201190252.29bOuDYN-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/eab3170e20c001ee23073a8705db22713b529c21
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout eab3170e20c001ee23073a8705db22713b529c21
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=parisc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

ERROR: modpost: "netfs_releasepage" [fs/cifs/cifs.ko] undefined!
>> ERROR: modpost: "netfs_invalidatepage" [fs/cifs/cifs.ko] undefined!

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
