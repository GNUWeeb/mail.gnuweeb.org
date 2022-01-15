Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id sOIRKa0F42HAjwUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 15 Jan 2022 17:34:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 885C8C167E;
	Sat, 15 Jan 2022 17:34:35 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=NrWKP9t4;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gnuweeb.org (Postfix) with ESMTPS id 03F64C1718
 for <gwml@gnuweeb.org>; Sat, 15 Jan 2022 17:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642268073; x=1673804073;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MEEHnOBYspsqd3iaGNTwi7jGqelHVRK4zyFKxECcOo4=;
 b=NrWKP9t4+L3ku3SqITAK0aYqp/DjjctlUY2tR9PDuEuNMYX9OZJToo40
 DMHNCsM8qcULARhaTZuLZkKxsmHHI9cs8ArcFdoC+l7LWVfm9MT1ISCB+
 992NP3QbpWoGIMfNAzRmu14dLliXa/i1Kcd0kpBX+Na4BBR351R8hfpRh
 nGW6QAkAlceLJsYGhS2z18q1MQ+lp2TGoPnnjxh6R0EJgGF035/c4jBIp
 sucj3IozrU8tKZ3lWjTkynm8H2vlDgMupXbQZZNgPHn9596dPz+mgqISf
 YctJVEkNPmjRjqvhtmECTHCMNsiUtVuQL/OtyRtcwoQTvBeIV/yIppgrQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10228"; a="330777129"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="330777129"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2022 09:34:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="692601970"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Jan 2022 09:34:28 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n8mwe-000A9i-73; Sat, 15 Jan 2022 17:34:28 +0000
Date: Sun, 16 Jan 2022 01:34:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Justin M. Forbes" <jforbes@fedoraproject.org>
Subject: [ammarfaizi2-block:crng/random/master 1/2] aarch64-linux-ld:
 Unexpected GOT/PLT entries detected!
Message-ID: <202201160152.1zZeXMni-lkp@intel.com>
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
Cc: "Jason A. Donenfeld" <zx2c4@kernel.org>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block crng/random/master
head:   55a3130a6888d74fb1b6d26793dbe2c994ff4b7f
commit: 7c82c3237147bd1447bb760009b17c9bee4c91e9 [1/2] lib/crypto: add prompts back to crypto libraries
config: arm64-randconfig-r016-20220115 (https://download.01.org/0day-ci/archive/20220116/202201160152.1zZeXMni-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/7c82c3237147bd1447bb760009b17c9bee4c91e9
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block crng/random/master
        git checkout 7c82c3237147bd1447bb760009b17c9bee4c91e9
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> aarch64-linux-ld: Unexpected GOT/PLT entries detected!
>> aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: lib/crypto/libchacha.o: in function `crypto_xor_cpy':
>> libchacha.c:(.text+0x8): undefined reference to `__crypto_xor'
   aarch64-linux-ld: lib/crypto/chacha20poly1305.o: in function `crypto_xor':
>> chacha20poly1305.c:(.text+0x580): undefined reference to `__crypto_xor'
   aarch64-linux-ld: lib/crypto/chacha20poly1305.o: in function `crypto_memneq.constprop.0':
>> chacha20poly1305.c:(.text+0x5b0): undefined reference to `__crypto_memneq'
   aarch64-linux-ld: lib/crypto/chacha20poly1305.o: in function `chacha20poly1305_crypt_sg_inplace':
>> chacha20poly1305.c:(.text+0x7e4): undefined reference to `scatterwalk_map_and_copy'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for CRYPTO_ALGAPI
   Depends on CRYPTO
   Selected by
   - CRYPTO_LIB_CHACHA_GENERIC
   Selected by
   - CRYPTO_AEAD && CRYPTO
   - CRYPTO_SKCIPHER && CRYPTO
   - CRYPTO_HASH && CRYPTO
   - CRYPTO_RNG && CRYPTO
   - CRYPTO_AKCIPHER && CRYPTO
   - CRYPTO_KPP && CRYPTO
   - CRYPTO_AES && CRYPTO
   - CRYPTO_CAMELLIA && CRYPTO
   - CRYPTO_DES && CRYPTO
   - CRYPTO_FCRYPT && CRYPTO
   - CRYPTO_SERPENT && CRYPTO
   - CRYPTO_SM4 && CRYPTO
   - CRYPTO_DEFLATE && CRYPTO
   - CRYPTO_LZO && CRYPTO
   - CRYPTO_842 && CRYPTO
   - CRYPTO_LZ4 && CRYPTO
   - CRYPTO_LZ4HC && CRYPTO
   - CRYPTO_DEV_HISI_SEC && CRYPTO && CRYPTO_HW && (ARM64 || COMPILE_TEST && HAS_IOMEM

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
