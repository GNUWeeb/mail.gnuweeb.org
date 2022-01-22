Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id kcBkChJr62EZpQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 22 Jan 2022 02:25:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 3D544C1650;
	Sat, 22 Jan 2022 02:25:20 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=WW1Ecjnw;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gnuweeb.org (Postfix) with ESMTPS id 1F26ABFC4A
 for <gwml@gnuweeb.org>; Sat, 22 Jan 2022 02:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642818318; x=1674354318;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ifd/q530DUzw9JrlA4BF+8VoxcOijWnt+dyb2nWjLvE=;
 b=WW1Ecjnw8sLhQJb9QfcyKZj6MMdBrX/E1pnz/put3u9jTJb4lZtNLUiM
 iY3Evupt+9BMuyuj+/WN1MBy7dS66m80oTWDRCj4YgVhJ0BKqVROdLubF
 l5g+riTEsCl4HqfHbNw2ZsP4DXuojRbuXfNsECrK3pf96SUHr+d0511SX
 +i73NjG1flADOZ62WWbBqqjd1WEoBFhOk7jTP1z9L+Do8bGLaKzQxTuAK
 QpjrDTwV/gVcTXkGrAV340pJurkxXd2VxKm5pCvyTw8diX6KRev0eMw2M
 miuBTeWASAAFKX5sRar8+A3TfmdSsldy323InM2Iz4kppk03vFOIHg4On Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="306500104"
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="306500104"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 18:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,307,1635231600"; d="scan'208";a="562080991"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 18:25:13 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB65Y-000Fui-RB; Sat, 22 Jan 2022 02:25:12 +0000
Date: Sat, 22 Jan 2022 10:24:42 +0800
From: kernel test robot <lkp@intel.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android-4.19-stable
 346/9999] drivers/nvmem/core.c:347:5: warning: no previous prototype for
 'nvmem_add_cells'
Message-ID: <202201221032.qQ2lBxEQ-lkp@intel.com>
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
Cc: Will McVicker <willmcvicker@google.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Bartosz,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android-4.19-stable
head:   90a691fca4c2525068d9908ac203e9f09e4e33c0
commit: e96a10625581a499e8a4218ef504f3f53918408b [346/9999] UPSTREAM: nvmem: add support for cell info
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20220122/202201221032.qQ2lBxEQ-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/e96a10625581a499e8a4218ef504f3f53918408b
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android-4.19-stable
        git checkout e96a10625581a499e8a4218ef504f3f53918408b
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/nvmem/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/nvmem/core.c:347:5: warning: no previous prototype for 'nvmem_add_cells' [-Wmissing-prototypes]
     347 | int nvmem_add_cells(struct nvmem_device *nvmem,
         |     ^~~~~~~~~~~~~~~


vim +/nvmem_add_cells +347 drivers/nvmem/core.c

eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  337  
b3db17e4b864e46 Andrew Lunn         2018-05-11  338  /**
b3db17e4b864e46 Andrew Lunn         2018-05-11  339   * nvmem_add_cells() - Add cell information to an nvmem device
b3db17e4b864e46 Andrew Lunn         2018-05-11  340   *
b3db17e4b864e46 Andrew Lunn         2018-05-11  341   * @nvmem: nvmem device to add cells to.
b3db17e4b864e46 Andrew Lunn         2018-05-11  342   * @info: nvmem cell info to add to the device
b3db17e4b864e46 Andrew Lunn         2018-05-11  343   * @ncells: number of cells in info
b3db17e4b864e46 Andrew Lunn         2018-05-11  344   *
b3db17e4b864e46 Andrew Lunn         2018-05-11  345   * Return: 0 or negative error code on failure.
b3db17e4b864e46 Andrew Lunn         2018-05-11  346   */
b3db17e4b864e46 Andrew Lunn         2018-05-11 @347  int nvmem_add_cells(struct nvmem_device *nvmem,
b3db17e4b864e46 Andrew Lunn         2018-05-11  348  		    const struct nvmem_cell_info *info,
b3db17e4b864e46 Andrew Lunn         2018-05-11  349  		    int ncells)
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  350  {
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  351  	struct nvmem_cell **cells;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  352  	int i, rval;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  353  
b3db17e4b864e46 Andrew Lunn         2018-05-11  354  	cells = kcalloc(ncells, sizeof(*cells), GFP_KERNEL);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  355  	if (!cells)
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  356  		return -ENOMEM;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  357  
b3db17e4b864e46 Andrew Lunn         2018-05-11  358  	for (i = 0; i < ncells; i++) {
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  359  		cells[i] = kzalloc(sizeof(**cells), GFP_KERNEL);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  360  		if (!cells[i]) {
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  361  			rval = -ENOMEM;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  362  			goto err;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  363  		}
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  364  
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  365  		rval = nvmem_cell_info_to_nvmem_cell(nvmem, &info[i], cells[i]);
287980e49ffc0f6 Arnd Bergmann       2016-05-27  366  		if (rval) {
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  367  			kfree(cells[i]);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  368  			goto err;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  369  		}
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  370  
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  371  		nvmem_cell_add(cells[i]);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  372  	}
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  373  
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  374  	/* remove tmp array */
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  375  	kfree(cells);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  376  
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  377  	return 0;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  378  err:
dfdf141429f0895 Rasmus Villemoes    2016-02-08  379  	while (i--)
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  380  		nvmem_cell_drop(cells[i]);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  381  
dfdf141429f0895 Rasmus Villemoes    2016-02-08  382  	kfree(cells);
dfdf141429f0895 Rasmus Villemoes    2016-02-08  383  
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  384  	return rval;
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  385  }
b3db17e4b864e46 Andrew Lunn         2018-05-11  386  EXPORT_SYMBOL_GPL(nvmem_add_cells);
eace75cfdcf7d99 Srinivas Kandagatla 2015-07-27  387  

:::::: The code at line 347 was first introduced by commit
:::::: b3db17e4b864e46ad150ebef69c0e0130a1c5fca drivers: nvmem: Export nvmem_add_cells()

:::::: TO: Andrew Lunn <andrew@lunn.ch>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
