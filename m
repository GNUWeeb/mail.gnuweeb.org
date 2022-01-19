Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 4KqRFcJk52GTFgYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 01:09:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id A09B2C2B11;
	Wed, 19 Jan 2022 01:09:20 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=dgCNtYvR;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gnuweeb.org (Postfix) with ESMTPS id 3EC93C1684
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 01:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642554557; x=1674090557;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=qphGsRZ1eEdu6G+GVckRqHRadxtNK4s5NKzxeYKgM7o=;
 b=dgCNtYvR28vRgUFe1Wp5ldjmtX6/qqb0SKojPRBPl9ADiqs9eVO9aK1k
 rGr6C0RER773DLgXj8vIW9YJIesQyFrccZcc8wiVk/5kuxAOvCo9z1cWD
 p/ux0NkAwObRDalmyGHkex/X+0WW7W0z6bm0nn42XBtG+b73RKZOYXEFV
 5rHfNGyTQ7NQojYJYRGhKieRA6ud5SDPfcgU9smxgdH6qUMZWMNo7EYbN
 YcbqowWRrHqOxjJqqZCUIMgQ9kMbFei3HYPbP22pqAy2KUmNOXjkmfJUq
 73+uuxLDh2SYEq0WMDzlMucf6k4Miyt3HCsN/blOjnFFMlLv4UpJXikVJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="308296341"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="308296341"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 17:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="622338022"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2022 17:09:13 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9zTM-000D6G-ER; Wed, 19 Jan 2022 01:09:12 +0000
Date: Wed, 19 Jan 2022 09:09:10 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [ammarfaizi2-block:palmer/linux/riscv-sv48 1/9]
 arch/riscv/include/asm/pgtable-64.h:69:9: error: use of undeclared
 identifier 'PTRS_PER_PGD'
Message-ID: <202201190958.fitxHfBp-lkp@intel.com>
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
commit: 86168d52ec671f83f5b6e7f49adfd90ee2f12f23 [1/9] riscv: Move KASAN mapping next to the kernel mapping
config: riscv-randconfig-r042-20220118 (https://download.01.org/0day-ci/archive/20220119/202201190958.fitxHfBp-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project c10cbb243cafc0cf42c3e922cb29183279444432)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/ammarfaizi2/linux-block/commit/86168d52ec671f83f5b6e7f49adfd90ee2f12f23
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block palmer/linux/riscv-sv48
        git checkout 86168d52ec671f83f5b6e7f49adfd90ee2f12f23
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv prepare

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv/kernel/asm-offsets.c:10:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   In file included from arch/riscv/include/asm/pgtable.h:95:
>> arch/riscv/include/asm/pgtable-64.h:69:9: error: use of undeclared identifier 'PTRS_PER_PGD'
           return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
                  ^
   include/asm-generic/memory_model.h:53:21: note: expanded from macro 'pfn_to_page'
   #define pfn_to_page __pfn_to_page
                       ^
   include/asm-generic/memory_model.h:25:29: note: expanded from macro '__pfn_to_page'
   #define __pfn_to_page(pfn)      (vmemmap + (pfn))
                                    ^
   arch/riscv/include/asm/pgtable.h:63:34: note: expanded from macro 'vmemmap'
   #define vmemmap         ((struct page *)VMEMMAP_START)
                                           ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   arch/riscv/include/asm/pgtable.h:29:41: note: expanded from macro 'VMALLOC_START'
   #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
                                           ^
   arch/riscv/include/asm/pgtable.h:27:27: note: expanded from macro 'VMALLOC_SIZE'
   #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
                             ^
   arch/riscv/include/asm/page.h:40:27: note: expanded from macro 'KERN_VIRT_SIZE'
   #define KERN_VIRT_SIZE          ((PTRS_PER_PGD / 2 * PGDIR_SIZE) / 2)
                                     ^
   1 error generated.
   make[2]: *** [scripts/Makefile.build:121: arch/riscv/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1197: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:219: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/PTRS_PER_PGD +69 arch/riscv/include/asm/pgtable-64.h

07037db5d479f9 Palmer Dabbelt 2017-07-10  66  
8ad8b72721d0f0 Nick Hu        2020-01-06  67  static inline struct page *pud_page(pud_t pud)
8ad8b72721d0f0 Nick Hu        2020-01-06  68  {
8ad8b72721d0f0 Nick Hu        2020-01-06 @69  	return pfn_to_page(pud_val(pud) >> _PAGE_PFN_SHIFT);
8ad8b72721d0f0 Nick Hu        2020-01-06  70  }
8ad8b72721d0f0 Nick Hu        2020-01-06  71  

:::::: The code at line 69 was first introduced by commit
:::::: 8ad8b72721d0f07fa02dbe71f901743f9c71c8e6 riscv: Add KASAN support

:::::: TO: Nick Hu <nickhu@andestech.com>
:::::: CC: Palmer Dabbelt <palmerdabbelt@google.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
