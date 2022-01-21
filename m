Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id kB9CKUQR62FIlwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 21 Jan 2022 20:02:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 9CB7AC2BB1;
	Fri, 21 Jan 2022 20:02:10 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=kFx+DoI6;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gnuweeb.org (Postfix) with ESMTPS id 013D0BFB83
 for <gwml@gnuweeb.org>; Fri, 21 Jan 2022 20:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642795328; x=1674331328;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=tcaUOdQvwJzJ7+SHpCEZOvyeJ4DqQF/v5vadTiYlz1w=;
 b=kFx+DoI6amtSTqWB+u/IY2iDiE07Uqw3VHuqyZqIofAlWIU5QRLpHEdK
 9UIQkoIr627mDDIfOv6hY2P/6kqndmFahbmO2EdTYjHkFL79H7kPsgkct
 +Dl2OkIHIXY1pO5jEoq5aQKyouUZqRxU1XSvcD55Q0hX4jDBvDkUwIfve
 4yZrIGBTuWGY6oE9zXTsLm4jYXNgl3Whlt6Fck+c6EKph32pY9kk0kHb+
 GomXqqcbYTBw9VrDPFvchtxACymhO2aQfn5QD2NWP7PR1SgZyLk9zda1P
 6oBdn4aFxQ5vXACiXdICGi6fW5x8wUfJ068FwG8Zj3WYHAO8E+WS10F6Z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226410073"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="226410073"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 12:02:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="478358015"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Jan 2022 12:02:03 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB06k-000Fcl-IS; Fri, 21 Jan 2022 20:02:02 +0000
Date: Sat, 22 Jan 2022 04:01:51 +0800
From: kernel test robot <lkp@intel.com>
To: Saravana Kannan <saravanak@google.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android-4.19-stable
 64/9999] drivers/clk/clk.c:3145:5: warning: no previous prototype for
 'clk_set_flags'
Message-ID: <202201220318.8Dmp8LoU-lkp@intel.com>
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
Cc: Taniya Das <tdas@codeaurora.org>, GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Shefali Jain <shefjain@codeaurora.org>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@codeaurora.org>,
 David Dai <daidavid1@codeaurora.org>, linux-kernel@vger.kernel.org,
 kbuild-all@lists.01.org, Deepak Katragadda <dkatraga@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Saravana,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android-4.19-stable
head:   90a691fca4c2525068d9908ac203e9f09e4e33c0
commit: 3179a1a38d96f565a2229b9244285c6abf62b10a [64/9999] ANDROID: GKI: clk: Add support for voltage voting
config: x86_64-randconfig-a011 (https://download.01.org/0day-ci/archive/20220122/202201220318.8Dmp8LoU-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/3179a1a38d96f565a2229b9244285c6abf62b10a
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android-4.19-stable
        git checkout 3179a1a38d96f565a2229b9244285c6abf62b10a
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/clk/ drivers/nvmem/ kernel/power/ kernel/sched/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/clk/clk.c: In function 'clk_update_vdd':
   drivers/clk/clk.c:624:24: warning: variable 'ignore' set but not used [-Wunused-but-set-variable]
     624 |  int level, rc = 0, i, ignore;
         |                        ^~~~~~
   drivers/clk/clk.c: At top level:
>> drivers/clk/clk.c:3145:5: warning: no previous prototype for 'clk_set_flags' [-Wmissing-prototypes]
    3145 | int clk_set_flags(struct clk *clk, unsigned long flags)
         |     ^~~~~~~~~~~~~
>> drivers/clk/clk.c:3157:6: warning: no previous prototype for 'clk_debug_print_hw' [-Wmissing-prototypes]
    3157 | void clk_debug_print_hw(struct clk_core *clk, struct seq_file *f)
         |      ^~~~~~~~~~~~~~~~~~
   drivers/clk/clk.c:4257: warning: Function parameter or member 'dev' not described in 'devm_clk_unregister'
   drivers/clk/clk.c:4455: warning: Function parameter or member 'get_hw' not described in 'of_clk_provider'


vim +/clk_set_flags +3145 drivers/clk/clk.c

  3144	
> 3145	int clk_set_flags(struct clk *clk, unsigned long flags)
  3146	{
  3147		if (!clk)
  3148			return 0;
  3149	
  3150		if (!clk->core->ops->set_flags)
  3151			return -EINVAL;
  3152	
  3153		return clk->core->ops->set_flags(clk->core->hw, flags);
  3154	}
  3155	EXPORT_SYMBOL_GPL(clk_set_flags);
  3156	
> 3157	void clk_debug_print_hw(struct clk_core *clk, struct seq_file *f)
  3158	{
  3159	}
  3160	EXPORT_SYMBOL(clk_debug_print_hw);
  3161	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
