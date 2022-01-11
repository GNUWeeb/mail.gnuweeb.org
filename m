Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id OLWFKhON3WGn4AQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 11 Jan 2022 13:58:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 11957C2A8C;
	Tue, 11 Jan 2022 13:58:42 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=EjsanauK;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gnuweeb.org (Postfix) with ESMTPS id A3A84C15E8;
 Tue, 11 Jan 2022 13:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641909519; x=1673445519;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=f7VTQ/fBRbP2X+3+jEUu8UswIhvQ4dqM9qV2Lc0tVqs=;
 b=EjsanauKPYWCt1Xd/dFVTq5Ct8gJTzSTJ+tqrW1mmpl4xLIZqVVHszem
 QMzpFOVJN6voJwQil8XQ4fcZ0CYBwEh0Kt+tb+ZYsuLGZeP4aoucMcWXY
 KQsnJB3gQUpeJg9lNlCxBDuji7WkMpplrd1FtV/LmG79gj8X0ZdtOUumX
 W4vWO8ZGoVm3+7fQlsAWwwSdIK07Lsp5BJaoisefqig2gE1PD/q7koAo6
 6GrrdFNJJnUTVXcnnn0ClN1+FV8PztP012+vMcqO58sh638oz+6zEbRRd
 o2lP69pOiq1dyz/gkTNcBR0QYzn72+cZiiF8KUXoLxppfRJS1+PPne2ty A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="223470224"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="223470224"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 05:58:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474537770"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 Jan 2022 05:58:25 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n7HfN-0004us-0A; Tue, 11 Jan 2022 13:58:25 +0000
Date: Tue, 11 Jan 2022 21:57:40 +0800
From: kernel test robot <lkp@intel.com>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [ammarfaizi2-block:testing/x86-fixes] BUILD SUCCESS
 d5bf2b316d4245f0e34dfd7f419d6d8547eb30b0
Message-ID: <61dd8cd4.0GVkagQ9JeqGPpBd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree/branch: https://github.com/ammarfaizi2/linux-block testing/x86-fixes
branch HEAD: d5bf2b316d4245f0e34dfd7f419d6d8547eb30b0  x86/delay: Fix the wrong asm constraint in `delay_loop()`

elapsed time: 981m

configs tested: 112
configs skipped: 160

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220111
sh                           se7750_defconfig
arm                          badge4_defconfig
m68k                           sun3_defconfig
sh                                  defconfig
powerpc                      ep88xc_defconfig
arm                        mini2440_defconfig
sh                            migor_defconfig
m68k                                defconfig
sh                         microdev_defconfig
arm                          iop32x_defconfig
sh                            titan_defconfig
arm                           stm32_defconfig
powerpc                       ppc64_defconfig
arm                        multi_v7_defconfig
m68k                         apollo_defconfig
arm                       aspeed_g5_defconfig
arm                        cerfcube_defconfig
um                               alldefconfig
arm                  randconfig-c002-20220111
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220111
x86_64                        randconfig-c007
riscv                randconfig-c006-20220111
powerpc              randconfig-c003-20220111
i386                          randconfig-c001
mips                 randconfig-c004-20220111
s390                 randconfig-c005-20220111
arm                  colibri_pxa300_defconfig
mips                          malta_defconfig
arm                          ep93xx_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     akebono_defconfig
powerpc                     kilauea_defconfig
powerpc                          g5_defconfig
arm                         hackkit_defconfig
powerpc                   lite5200b_defconfig
riscv                             allnoconfig
arm                          ixp4xx_defconfig
riscv                          rv32_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
