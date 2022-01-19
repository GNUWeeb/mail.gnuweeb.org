Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id O8e3G8SI52FmHQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 03:43:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id C0E92C0087;
	Wed, 19 Jan 2022 03:42:58 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Zmb8aFR9;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gnuweeb.org (Postfix) with ESMTPS id 9AC34C0087
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 03:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642563774; x=1674099774;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=NAwBp31wWDOCorwPE8XIM9cOF+iPiy27m7wAtH+IrUQ=;
 b=Zmb8aFR9O2eWAofGugzoIlzRup+Yi/6nXlXuLxhxzhPkwmbXCveyhMpW
 4UbNWzHgw/55VNhmu7kP5XowyVZz/1IrasvFlQtFayoyyCADM/I8lLRka
 x3EBx7N2kfUbTVAVOj9L7Dj3K+k7NL8CMxZ8oTBmQG5uEakcDD/n2d9Vq
 hLVGdesHZWe7L9KWaiKMpw8uzVdlmbLN+3qJ7dYDMCXv39lUq0zpLwNZl
 dhVVuT7nW3Rnp+Rt9pjyeRi/W7tVUFIpzYGrVGBw8TCkOtm7hmeUmgxXI
 FjGhBIKFFKIpLNgXKqPECmpjz5W3N2owX/sxMJ2NG1dbmteHaOjyl9Z4n w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245170734"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="245170734"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 19:42:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="518015993"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 18 Jan 2022 19:42:15 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nA1rT-000DDM-5u; Wed, 19 Jan 2022 03:42:15 +0000
Date: Wed, 19 Jan 2022 11:41:42 +0800
From: kernel test robot <lkp@intel.com>
To: Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [ammarfaizi2-block:palmer/linux/riscv-sv48 7/9]
 arch/riscv/mm/init.c:48:11-16: WARNING: conversion to bool not needed here
Message-ID: <202201191124.6Gmmz1ir-lkp@intel.com>
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
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block palmer/linux/riscv-sv48
head:   d87f3297c62644624bcb8efcb519a2e28d684b45
commit: dee563c628683ce1fab7d0267ad96fc7d8503965 [7/9] riscv: Implement sv48 support
config: riscv-randconfig-c004-20220117 (https://download.01.org/0day-ci/archive/20220119/202201191124.6Gmmz1ir-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 11.2.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cocci warnings: (new ones prefixed by >>)
>> arch/riscv/mm/init.c:48:11-16: WARNING: conversion to bool not needed here

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
