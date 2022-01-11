Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id /l5RGvba3GHhxgQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 11 Jan 2022 01:18:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id E664AC170E;
	Tue, 11 Jan 2022 01:18:44 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Nl7Jn5Ra;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gnuweeb.org (Postfix) with ESMTPS id 960C0C170E
 for <gwml@gnuweeb.org>; Tue, 11 Jan 2022 01:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641863922; x=1673399922;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=OKcoqAuTqG3PJ0a2unikEAGf2NNr+JOqEdT5YxOnB3M=;
 b=Nl7Jn5RaxiB3Ap3Gse36blcj+kUDLyjpRtcx7UPcio/j/euMqnPfs8Qo
 MXMspaBrU+uquM1QqJ3Lpn6N92wfo6WpPG1zMXboo7ctF9DwwtoYRjSwv
 bnUtM42D1rU4f7a2Gqffq/mvVqnEak3qKJqsxEJdEHOPGZbzppXei2l0b
 8v2XKnAZ7eJG7HmRHRcB2si3YFK3XfoLdxScaJPxw6zClGlWDMQwd47Rq
 HkwvAsttz5Ia3cczRK++s4jmMxL853ticfGvMb/cpm7p+H/quJRaHLRHS
 P2tDH1boswy/EsAej1TmR9APtAP0OZKBxi53DmB9UdaB7ditvTzEQkOeQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="230716843"
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="230716843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 17:18:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,278,1635231600"; d="scan'208";a="514897284"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2022 17:18:18 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n75nm-0004AI-18; Tue, 11 Jan 2022 01:18:18 +0000
Date: Tue, 11 Jan 2022 09:17:45 +0800
From: kernel test robot <lkp@intel.com>
To: David Brazdil <dbrazdil@google.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android13-5.15
 2562/2575] arch/arm64/kvm/iommu/s2mpu.c:129: warning: This comment starts
 with '/**', but isn't a kernel-doc comment. Refer
 Documentation/doc-guide/kernel-doc.rst
Message-ID: <202201110931.duyXOD4g-lkp@intel.com>
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
commit: 4a75e1b060286edbc814df36ab6b314826d2dc5e [2562/2575] ANDROID: KVM: arm64: Implement IRQ handler for S2MPU faults
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220111/202201110931.duyXOD4g-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/4a75e1b060286edbc814df36ab6b314826d2dc5e
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.15
        git checkout 4a75e1b060286edbc814df36ab6b314826d2dc5e
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash arch/arm64/kvm/iommu/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/arm64/kvm/iommu/s2mpu.c:129: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Parse interrupt information from DT and if found, register IRQ handler.


vim +129 arch/arm64/kvm/iommu/s2mpu.c

   127	
   128	/**
 > 129	 * Parse interrupt information from DT and if found, register IRQ handler.
   130	 * This is considered optional and will not fail even if the initialization is
   131	 * unsuccessful. In that case the IRQ will remain masked.
   132	 */
   133	static void s2mpu_probe_irq(struct platform_device *pdev, void __iomem *kaddr)
   134	{
   135		struct s2mpu_irq_info *irq_info;
   136		int ret, irq;
   137	
   138		irq = platform_get_irq_optional(pdev, 0);
   139	
   140		if (irq == -ENXIO)
   141			return; /* No IRQ specified. */
   142	
   143		if (irq < 0) {
   144			/* IRQ specified but failed to parse. */
   145			dev_err(&pdev->dev, "failed to parse IRQ, IRQ not enabled");
   146			return;
   147		}
   148	
   149		irq_info = devm_kmalloc(&pdev->dev, sizeof(*irq_info), GFP_KERNEL);
   150		if (!irq_info)
   151			return;
   152	
   153		*irq_info = (struct s2mpu_irq_info){
   154			.dev = &pdev->dev,
   155			.va = kaddr,
   156		};
   157	
   158		ret = devm_request_irq(&pdev->dev, irq, s2mpu_irq_handler, 0,
   159				       dev_name(&pdev->dev), irq_info);
   160		if (ret) {
   161			dev_err(&pdev->dev, "failed to register IRQ, IRQ not enabled");
   162			return;
   163		}
   164	}
   165	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
