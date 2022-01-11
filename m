Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id lmh/OzgD3WFxzQQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 11 Jan 2022 04:10:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id DA653C17AC;
	Tue, 11 Jan 2022 04:10:30 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=W4fTIRiV;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gnuweeb.org (Postfix) with ESMTPS id 22CA3C163B
 for <gwml@gnuweeb.org>; Tue, 11 Jan 2022 04:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641874228; x=1673410228;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Fko5tSHAqkpnrbRvu4UMb7PHCxpyhJg0p+Ve7Au1TpI=;
 b=W4fTIRiVxsKn6sD205oJwGtYjKYnNBDmJG8Hg16gTdoHEg8XfuJBHfOY
 ZucmSGnFaJ4B9vC9yQt6vSpK5G7V65Q6sBpzxmMgDNcosDamZYbgtLzzC
 lUKkikkBY+kXcFwoMhKizJzSjYR5u2O4n8nfN9ZJ1zj9om6HVdmer1fmU
 zVfqnGBSu08o49Hy0rEuz6Q4nceSNDtc3gZdY4yvbL0mdmmcZtxr/QTtn
 uURNFS8tWlE0GNZD049ZqsUc/bKz0W5iAVDXEPEw+hWDUI4cEfCaIBu8+
 gi4SzWlH3Ww7tFqD/3+3nP1iZIiJ8YziG6m3Rj7EaaN3MzUqL1ZZ8mQmW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="267731543"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="267731543"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 20:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="514937789"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2022 20:10:23 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n78UI-0004JB-L6; Tue, 11 Jan 2022 04:10:22 +0000
Date: Tue, 11 Jan 2022 12:10:01 +0800
From: kernel test robot <lkp@intel.com>
To: David Brazdil <dbrazdil@google.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android13-5.15
 2564/2575] arch/arm64/kvm/hyp/nvhe/iommu/s2mpu.c:104: warning: This comment
 starts with '/**', but isn't a kernel-doc comment. Refer
 Documentation/doc-guide/kernel-doc.rst
Message-ID: <202201111216.YaxndGDc-lkp@intel.com>
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
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android13-5.15
head:   d52e3e4473075ddf199c9ae763e747302d729468
commit: f6b90bb6f59d0dab524f623b255f29c149557270 [2564/2575] ANDROID: KVM: arm64: Enable S2MPUs in __pkvm_init_stage2_iommu
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220111/202201111216.YaxndGDc-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/f6b90bb6f59d0dab524f623b255f29c149557270
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.15
        git checkout f6b90bb6f59d0dab524f623b255f29c149557270
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/arm64/kvm/hyp/nvhe/iommu/s2mpu.c:104: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Initialize S2MPU device and set all GB regions to 1G granularity with


vim +104 arch/arm64/kvm/hyp/nvhe/iommu/s2mpu.c

   102	
   103	/**
 > 104	 * Initialize S2MPU device and set all GB regions to 1G granularity with
   105	 * given protection bits.
   106	 */
   107	static void initialize_with_prot(struct s2mpu *dev, enum mpt_prot prot)
   108	{
   109		unsigned int gb, vid;
   110	
   111		/* Must write CONTEXT_CFG_VALID_VID before setting L1ENTRY registers. */
   112		__set_context_ids(dev);
   113	
   114		for_each_gb_and_vid(gb, vid)
   115			__set_l1entry_attr_with_prot(dev, gb, vid, prot);
   116		__all_invalidation(dev);
   117	
   118		/* Set control registers, enable the S2MPU. */
   119		__set_control_regs(dev);
   120	}
   121	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
