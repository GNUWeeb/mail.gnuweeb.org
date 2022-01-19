Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id o/OTE4OS6GEuQQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 22:36:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 85BDFC2B23;
	Wed, 19 Jan 2022 22:36:49 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=MZ7SSkHq;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gnuweeb.org (Postfix) with ESMTPS id D882EC2062
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 22:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642631807; x=1674167807;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1gWGX1h8BWrCCIKoA/6KpIWfv4FlIBjGre0d3kpmSdU=;
 b=MZ7SSkHqFvQVkf0jZq/hVHAPcg0ZG9cyCPnkxaDnFHgivZ1EwJWZynP7
 DUpW19dN6XDq5Dwr7sbu5dyq6ftt45s5cgaBHxlSkpVS8HhEIT9DRx/8+
 sy+Hw1tNL0/vNzcspTSQv+DBKzHw2/9QERBaPgoJsvXBHzeQzC+4ijLDE
 Mf5/kMM0Zj9fAPpnIqfbcoa4eogK8gYbyyywNCLUEnyRZwnrsRUxoLeiE
 F514zhhTiZdU02RagxaaVQSv3ABF5VOmdJIO6rzv9Cg0+RMXgq6Xv76Uk
 p7rEIJQCsDBFrOTRgkjCw48UAefpX2HTKRi1qYgRtCDPJ4UG1YEPvcwVu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="244034546"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="244034546"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 14:36:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="477562281"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2022 14:36:42 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nAJZJ-000Dnc-UQ; Wed, 19 Jan 2022 22:36:41 +0000
Date: Thu, 20 Jan 2022 06:35:51 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 24/29]
 nios2-linux-ld: fs/cifs/file.o:undefined reference to `netfs_invalidatepage'
Message-ID: <202201200630.EgURYeDW-lkp@intel.com>
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
head:   893ce0d06d6627c743bf20d48234543ff9262d19
commit: 7deb1d07f1b835b302c1a747312e02d2e1089578 [24/29] netfs: Provide invalidatepage and releasepage calls
config: nios2-randconfig-r006-20220119 (https://download.01.org/0day-ci/archive/20220120/202201200630.EgURYeDW-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/7deb1d07f1b835b302c1a747312e02d2e1089578
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout 7deb1d07f1b835b302c1a747312e02d2e1089578
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=nios2 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> nios2-linux-ld: fs/cifs/file.o:(.rodata+0x48fc): undefined reference to `netfs_invalidatepage'
>> nios2-linux-ld: fs/cifs/file.o:(.rodata+0x4900): undefined reference to `netfs_releasepage'
   nios2-linux-ld: fs/cifs/file.o:(.rodata+0x4954): undefined reference to `netfs_invalidatepage'
   nios2-linux-ld: fs/cifs/file.o:(.rodata+0x4958): undefined reference to `netfs_releasepage'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
