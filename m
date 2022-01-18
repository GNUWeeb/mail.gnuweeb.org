Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id eGd2Hd0f5mHn7wUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 18 Jan 2022 02:03:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 44C26C2ACA;
	Tue, 18 Jan 2022 02:03:07 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=LkF+tsK0;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gnuweeb.org (Postfix) with ESMTPS id 2933AC1718
 for <gwml@gnuweeb.org>; Tue, 18 Jan 2022 02:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642471382; x=1674007382;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=DO60SYZK55LqY+iI/tKbOiKvluu3V1PlqmIp6apEQP4=;
 b=LkF+tsK0UT2k5eDwJUR4DcPt5PNXAAfvyw9q4XOyAHc4y4+AWHkHEf95
 9BMRBvbeQDd1eL+5sb1f/Y1DXnC/w51omcKKoVngolb8qXaXzjD3aq0/G
 UPZfOlVTso0kpj65oJFpliYHxTjgTTwvxgfvzmg4TTKvp78V5sfHvnmzn
 B4Rqbp8XIcdC+oK5FvDaijhjE26f6Xh9LsKvcz9OYzn7V1+kmhqO0xMxX
 YTXD5M36T1xKDVFReHjKh5fLEelf/bTN2O55Uch15ipLNoKdMfkQSGlku
 dYmUJ4TBrvNYlE7P3S4L+Sxw3BTwYWoetDyCnv3u6vuPbJ2teoIt5/wiF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="308058285"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="308058285"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 18:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="693233113"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 17 Jan 2022 18:02:57 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9dpo-000C3K-N6; Tue, 18 Jan 2022 02:02:56 +0000
Date: Tue, 18 Jan 2022 10:02:00 +0800
From: kernel test robot <lkp@intel.com>
To: Will Deacon <will@kernel.org>
Subject: [ammarfaizi2-block:google/android/kernel/common/android13-5.15
 2757/2766] arch/arm64/kvm/arm.c:2011:46: error: 'smccc_trng_available'
 undeclared
Message-ID: <202201181042.DbgIXpRm-lkp@intel.com>
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
 linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android13-5.15
head:   9c25e5d6f58362a8ff78327664a2e3c2a538009f
commit: 888643ea37b504cb32afdd6430698d1e92a79a71 [2757/2766] ANDROID: KVM: arm64: relay entropy requests from protected guests directly to secure
config: arm64-buildonly-randconfig-r006-20220116 (https://download.01.org/0day-ci/archive/20220118/202201181042.DbgIXpRm-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/888643ea37b504cb32afdd6430698d1e92a79a71
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.15
        git checkout 888643ea37b504cb32afdd6430698d1e92a79a71
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/arm64/kvm/arm.c: In function 'kvm_hyp_init_protection':
>> arch/arm64/kvm/arm.c:2011:46: error: 'smccc_trng_available' undeclared (first use in this function)
    2011 |         kvm_nvhe_sym(smccc_trng_available) = smccc_trng_available;
         |                                              ^~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/arm.c:2011:46: note: each undeclared identifier is reported only once for each function it appears in


vim +/smccc_trng_available +2011 arch/arm64/kvm/arm.c

  1997	
  1998	static int kvm_hyp_init_protection(u32 hyp_va_bits)
  1999	{
  2000		void *addr = phys_to_virt(hyp_mem_base);
  2001		int ret;
  2002	
  2003		kvm_nvhe_sym(id_aa64pfr0_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
  2004		kvm_nvhe_sym(id_aa64pfr1_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64PFR1_EL1);
  2005		kvm_nvhe_sym(id_aa64isar0_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64ISAR0_EL1);
  2006		kvm_nvhe_sym(id_aa64isar1_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64ISAR1_EL1);
  2007		kvm_nvhe_sym(id_aa64mmfr0_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
  2008		kvm_nvhe_sym(id_aa64mmfr1_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64MMFR1_EL1);
  2009		kvm_nvhe_sym(id_aa64mmfr2_el1_sys_val) = read_sanitised_ftr_reg(SYS_ID_AA64MMFR2_EL1);
  2010		kvm_nvhe_sym(__icache_flags) = __icache_flags;
> 2011		kvm_nvhe_sym(smccc_trng_available) = smccc_trng_available;
  2012	
  2013		ret = create_hyp_mappings(addr, addr + hyp_mem_size, PAGE_HYP);
  2014		if (ret)
  2015			return ret;
  2016	
  2017		ret = init_stage2_iommu();
  2018		if (ret < 0)
  2019			return ret;
  2020	
  2021		ret = do_pkvm_init(hyp_va_bits, (enum kvm_iommu_driver)ret);
  2022		if (ret)
  2023			return ret;
  2024	
  2025		free_hyp_pgds();
  2026	
  2027		return 0;
  2028	}
  2029	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
