Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id yvQGHcAr62EkmwYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 21 Jan 2022 21:55:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id C4F27C2BBD;
	Fri, 21 Jan 2022 21:55:10 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=ATeF8mPF;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gnuweeb.org (Postfix) with ESMTPS id BC82CC17FD
 for <gwml@gnuweeb.org>; Fri, 21 Jan 2022 21:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642802109; x=1674338109;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=odjErul01LuRoq3MAZFyzxnv1wVV0pZHWYwVRTIDD1o=;
 b=ATeF8mPFhi2J2QW/SdNLrWbCHV48T2UgpypDhGKtbCnCgGlcPCEJt+DF
 WM6D7yQmkZRbrutddl+Pneo+uqVLERGvvQBgER8bUebDobnGMw07ilfgX
 aox4540huCWbyh6BBZOAqxHw8S8masIsgAqLa74PXg2R6oFvcblI9tYac
 iJTjiXXoHWuFMNiB5z3tPPIHm2uQ+RiwySuFanAvx48BC+LyJGm7pjPtc
 kHQdP9CvC2MSTWVICrMcI6tpnAr7MXUK+k6bW05znnfXtqG0HbDOrnNkl
 5ATDyMBmcqohqqhI8i9f8HgFYsGGOSw7HIJlURmNtsU0F5xc1duR9Cq9f A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226426716"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="226426716"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 13:55:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="765830352"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jan 2022 13:55:05 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB1s8-000Fhu-Gs; Fri, 21 Jan 2022 21:55:04 +0000
Date: Sat, 22 Jan 2022 05:54:05 +0800
From: kernel test robot <lkp@intel.com>
To: Lina Iyer <ilina@codeaurora.org>
Subject: [ammarfaizi2-block:google/android/kernel/common/android-4.19-stable
 178/9999] kernel/power/qos.c:306:5: warning: stack frame size (32888)
 exceeds limit (2048) in 'pm_qos_update_target'
Message-ID: <202201220526.BqkgP2rt-lkp@intel.com>
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
Cc: Suren Baghdasaryan <surenb@google.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Lina,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android-4.19-stable
head:   90a691fca4c2525068d9908ac203e9f09e4e33c0
commit: 723feab600f71b3104a10de5b372bd1d9adf5943 [178/9999] ANDROID: GKI: QoS: Enhance framework to support cpu/irq specific QoS requests
config: x86_64-randconfig-a016 (https://download.01.org/0day-ci/archive/20220122/202201220526.BqkgP2rt-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 7b3d30728816403d1fd73cc5082e9fb761262bce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/723feab600f71b3104a10de5b372bd1d9adf5943
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android-4.19-stable
        git checkout 723feab600f71b3104a10de5b372bd1d9adf5943
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash kernel/power/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> kernel/power/qos.c:306:5: warning: stack frame size (32888) exceeds limit (2048) in 'pm_qos_update_target' [-Wframe-larger-than]
   int pm_qos_update_target(struct pm_qos_constraints *c, struct plist_node *node,
       ^
   1 warning generated.
   kernel/power/qos.c:630: warning: Function parameter or member 'new_value' not described in 'pm_qos_update_request'
   kernel/power/qos.c:630: warning: Excess function parameter 'value' description in 'pm_qos_update_request'


vim +/pm_qos_update_target +306 kernel/power/qos.c

723feab600f71b kernel/power/qos.c     Lina Iyer           2014-05-21  294  
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  295  /**
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  296   * pm_qos_update_target - manages the constraints list and calls the notifiers
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  297   *  if needed
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  298   * @c: constraints data struct
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  299   * @node: request to add to the list, to update or to remove
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  300   * @action: action to take on the constraints list
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  301   * @value: value of the request to add or update
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  302   *
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  303   * This function returns 1 if the aggregated constraint value has changed, 0
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  304   *  otherwise.
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  305   */
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25 @306  int pm_qos_update_target(struct pm_qos_constraints *c, struct plist_node *node,
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  307  			 enum pm_qos_req_action action, int value)
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  308  {
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  309  	unsigned long flags;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  310  	int prev_value, curr_value, new_value;
2d984ad132a87c kernel/power/qos.c     Rafael J. Wysocki   2014-02-11  311  	int ret;
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  312  
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  313  	spin_lock_irqsave(&pm_qos_lock, flags);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  314  	prev_value = pm_qos_get_value(c);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  315  	if (value == PM_QOS_DEFAULT_VALUE)
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  316  		new_value = c->default_value;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  317  	else
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  318  		new_value = value;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  319  
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  320  	switch (action) {
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  321  	case PM_QOS_REMOVE_REQ:
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  322  		plist_del(node, &c->list);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  323  		break;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  324  	case PM_QOS_UPDATE_REQ:
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  325  		/*
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  326  		 * to change the list, we atomically remove, reinit
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  327  		 * with new value and add, then see if the extremal
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  328  		 * changed
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  329  		 */
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  330  		plist_del(node, &c->list);
fe43e2ce526979 kernel/power/qos.c     Gustavo A. R. Silva 2018-03-30  331  		/* fall through */
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  332  	case PM_QOS_ADD_REQ:
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  333  		plist_node_init(node, new_value);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  334  		plist_add(node, &c->list);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  335  		break;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  336  	default:
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  337  		/* no action */
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  338  		;
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  339  	}
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  340  
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  341  	curr_value = pm_qos_get_value(c);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  342  	pm_qos_set_value(c, curr_value);
723feab600f71b kernel/power/qos.c     Lina Iyer           2014-05-21  343  	pm_qos_set_value_for_cpus(c);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  344  
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  345  	spin_unlock_irqrestore(&pm_qos_lock, flags);
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  346  
247e9ee034b044 kernel/power/qos.c     Sahara              2013-06-21  347  	trace_pm_qos_update_target(action, prev_value, curr_value);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  348  	if (prev_value != curr_value) {
2d984ad132a87c kernel/power/qos.c     Rafael J. Wysocki   2014-02-11  349  		ret = 1;
2d984ad132a87c kernel/power/qos.c     Rafael J. Wysocki   2014-02-11  350  		if (c->notifiers)
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  351  			blocking_notifier_call_chain(c->notifiers,
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  352  						     (unsigned long)curr_value,
5f279845f9d684 kernel/pm_qos_params.c James Bottomley     2010-07-19  353  						     NULL);
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  354  	} else {
2d984ad132a87c kernel/power/qos.c     Rafael J. Wysocki   2014-02-11  355  		ret = 0;
abe98ec2d86279 kernel/power/qos.c     Jean Pihet          2011-08-25  356  	}
2d984ad132a87c kernel/power/qos.c     Rafael J. Wysocki   2014-02-11  357  	return ret;
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  358  }
d82b35186eaa81 kernel/pm_qos_params.c Mark Gross          2008-02-04  359  

:::::: The code at line 306 was first introduced by commit
:::::: abe98ec2d86279fe821c9051003a0abc43444f15 PM QoS: Generalize and export constraints management code

:::::: TO: Jean Pihet <j-pihet@ti.com>
:::::: CC: Rafael J. Wysocki <rjw@sisk.pl>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
