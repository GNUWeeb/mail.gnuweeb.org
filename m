Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id IP0XKmuG52FVGwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 03:32:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 8D48EC2AEB;
	Wed, 19 Jan 2022 03:32:57 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=af6BE4q3;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gnuweeb.org (Postfix) with ESMTPS id 8FC96C2AA3
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 03:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642563166; x=1674099166;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NWb6o10YkMR7sZLMPrRdvgZA0dRx9dnvTEsr5v2wEKM=;
 b=af6BE4q3gm12vZqjEAmFQW6B1FVs14Enq7T3DzIK15svXrRxxZKMMuQ8
 0rmqsFKfaFj2puY6WhMV1LJtaSTqIuhkExpYRjucffj/EimDBjCBvalUZ
 hY2LIfZ60xiPFuyqpiPA2VaT+hzxIXQov9AxKxtns5s/iHkHYBFcuqehx
 ksoDSqOMZJ9gxVVVsvvIOd8fEU9SzUXrvB4n7+A4hS1Jq+Mz7YnHhaW9A
 mQQL3wQfYnCmiNvNv8wv3axvJf6sxHLAgP5+WsyybYpP3yoViT4MjaDMo
 lpOZawtNAyz80U0Z9eSSHjQmRPNFcFahpdIR0SB15RlrL01WAujiHpYnb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="242535779"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="242535779"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 19:32:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="595267684"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2022 19:32:15 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nA1hm-000DCi-TM; Wed, 19 Jan 2022 03:32:14 +0000
Date: Wed, 19 Jan 2022 11:31:22 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [ammarfaizi2-block:palmer/linux/riscv-sv48 7/9] WARNING: modpost:
 vmlinux.o(.text+0xb1ae): Section mismatch in reference from the function
 pt_ops_set_early() to the function .init.text:alloc_pte_early()
Message-ID: <202201191139.HXrwZv5w-lkp@intel.com>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block palmer/linux/riscv-sv48
head:   d87f3297c62644624bcb8efcb519a2e28d684b45
commit: dee563c628683ce1fab7d0267ad96fc7d8503965 [7/9] riscv: Implement sv48 support
config: riscv-randconfig-r042-20220116 (https://download.01.org/0day-ci/archive/20220119/202201191139.HXrwZv5w-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project c10cbb243cafc0cf42c3e922cb29183279444432)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/ammarfaizi2/linux-block/commit/dee563c628683ce1fab7d0267ad96fc7d8503965
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block palmer/linux/riscv-sv48
        git checkout dee563c628683ce1fab7d0267ad96fc7d8503965
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

>> WARNING: modpost: vmlinux.o(.text+0xb1ae): Section mismatch in reference from the function pt_ops_set_early() to the function .init.text:alloc_pte_early()
The function pt_ops_set_early() references
the function __init alloc_pte_early().
This is often because pt_ops_set_early lacks a __init
annotation or the annotation of alloc_pte_early is wrong.
--
>> WARNING: modpost: vmlinux.o(.text+0xb1f8): Section mismatch in reference from the function pt_ops_set_late() to the function .init.text:alloc_pte_late()
The function pt_ops_set_late() references
the function __init alloc_pte_late().
This is often because pt_ops_set_late lacks a __init
annotation or the annotation of alloc_pte_late is wrong.

Note: the below error/warnings can be found in parent commit:
<< WARNING: modpost: vmlinux.o(.text+0xb1ae): Section mismatch in reference from the function pt_ops_set_early() to the variable .init.data:_pt_ops.1
<< WARNING: modpost: vmlinux.o(.text+0xb208): Section mismatch in reference from the function pt_ops_set_late() to the variable .init.data:_pt_ops.1
<< WARNING: modpost: vmlinux.o(.text+0xb1ae): Section mismatch in reference from the function pt_ops_set_early() to the variable .init.data:_pt_ops.1
<< WARNING: modpost: vmlinux.o(.text+0xb208): Section mismatch in reference from the function pt_ops_set_late() to the variable .init.data:_pt_ops.1

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
