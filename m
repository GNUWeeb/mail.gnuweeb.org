Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 4O/tI7q75WEw4gUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 18:55:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 7427CC2AA5;
	Mon, 17 Jan 2022 18:55:52 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=WeyuVnjN;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gnuweeb.org (Postfix) with ESMTPS id 900F3C1718
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 18:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642445749; x=1673981749;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=4IVBn3VBpSTCwm/PlAbYzceTp9lxnrViHwu6vuzhxp0=;
 b=WeyuVnjNXoje18y8Kj1lu9wtypGvWz5LiKVBIDNE9Tfo1B//uCUUXcJs
 2cOcZeEAA+Ck9NOiQ0fYMAPmH1lroyMQ+yresl4WNhKVHRnBB2EyLkccM
 F6uc6/+5trJQ+5Lt1tvZ69CqKxKjE1RFylcmM06WRcHKqvYX2+iGYdy+9
 RaBv1tj7rXMI+u9cRlKGaHArbX/quke9kP6ZGcZe86EbBSTGc9Byvyy7L
 NsfAPjiUEujlx3qKNOniY8gCA1ASUkUNgG8URPymw5+6sXPjw1B6W1EYB
 NwK7cXxiiY4TbSNsGGCItC8F98clbssiVxUvJoc2Q3BYJAktajL4sRDtM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244874920"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="244874920"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 10:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="560440123"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Jan 2022 10:55:45 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9XAO-000Bmf-O6; Mon, 17 Jan 2022 18:55:44 +0000
Date: Tue, 18 Jan 2022 02:54:44 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 20/24]
 fs/fscache/stats.c:100: undefined reference to `netfs_stats_show'
Message-ID: <202201180238.MoCstGyZ-lkp@intel.com>
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block dhowells/linux-fs/netfs-lib
head:   12617e48874cc7e301b04f65b22b762cca3aea01
commit: d775438577aaab8808eaf4cfb2963d941a439b8b [20/24] netfs, fscache: Make netfslib depend on fscache
config: i386-randconfig-a013-20220117 (https://download.01.org/0day-ci/archive/20220118/202201180238.MoCstGyZ-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/d775438577aaab8808eaf4cfb2963d941a439b8b
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout d775438577aaab8808eaf4cfb2963d941a439b8b
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: fs/fscache/stats.o: in function `fscache_stats_show':
>> fs/fscache/stats.c:100: undefined reference to `netfs_stats_show'


vim +100 fs/fscache/stats.c

8e7a867bb7309f David Howells 2021-10-20   51  
1e1236b841166f David Howells 2021-10-20   52  /*
1e1236b841166f David Howells 2021-10-20   53   * display the general statistics
1e1236b841166f David Howells 2021-10-20   54   */
1e1236b841166f David Howells 2021-10-20   55  int fscache_stats_show(struct seq_file *m, void *v)
1e1236b841166f David Howells 2021-10-20   56  {
1e1236b841166f David Howells 2021-10-20   57  	seq_puts(m, "FS-Cache statistics\n");
7f3283aba39a0f David Howells 2021-10-20   58  	seq_printf(m, "Cookies: n=%d v=%d vcol=%u voom=%u\n",
7f3283aba39a0f David Howells 2021-10-20   59  		   atomic_read(&fscache_n_cookies),
62ab63352350e8 David Howells 2021-10-20   60  		   atomic_read(&fscache_n_volumes),
62ab63352350e8 David Howells 2021-10-20   61  		   atomic_read(&fscache_n_volumes_collision),
62ab63352350e8 David Howells 2021-10-20   62  		   atomic_read(&fscache_n_volumes_nomem)
62ab63352350e8 David Howells 2021-10-20   63  		   );
1e1236b841166f David Howells 2021-10-20   64  
7f3283aba39a0f David Howells 2021-10-20   65  	seq_printf(m, "Acquire: n=%u ok=%u oom=%u\n",
7f3283aba39a0f David Howells 2021-10-20   66  		   atomic_read(&fscache_n_acquires),
7f3283aba39a0f David Howells 2021-10-20   67  		   atomic_read(&fscache_n_acquires_ok),
7f3283aba39a0f David Howells 2021-10-20   68  		   atomic_read(&fscache_n_acquires_oom));
7f3283aba39a0f David Howells 2021-10-20   69  
12bb21a29c19aa David Howells 2021-10-20   70  	seq_printf(m, "LRU    : n=%u exp=%u rmv=%u drp=%u at=%ld\n",
12bb21a29c19aa David Howells 2021-10-20   71  		   atomic_read(&fscache_n_cookies_lru),
12bb21a29c19aa David Howells 2021-10-20   72  		   atomic_read(&fscache_n_cookies_lru_expired),
12bb21a29c19aa David Howells 2021-10-20   73  		   atomic_read(&fscache_n_cookies_lru_removed),
12bb21a29c19aa David Howells 2021-10-20   74  		   atomic_read(&fscache_n_cookies_lru_dropped),
12bb21a29c19aa David Howells 2021-10-20   75  		   timer_pending(&fscache_cookie_lru_timer) ?
12bb21a29c19aa David Howells 2021-10-20   76  		   fscache_cookie_lru_timer.expires - jiffies : 0);
12bb21a29c19aa David Howells 2021-10-20   77  
d24af13e2e2358 David Howells 2021-10-20   78  	seq_printf(m, "Invals : n=%u\n",
d24af13e2e2358 David Howells 2021-10-20   79  		   atomic_read(&fscache_n_invalidates));
d24af13e2e2358 David Howells 2021-10-20   80  
16a96bdf92d5af David Howells 2021-10-20   81  	seq_printf(m, "Updates: n=%u rsz=%u rsn=%u\n",
16a96bdf92d5af David Howells 2021-10-20   82  		   atomic_read(&fscache_n_updates),
16a96bdf92d5af David Howells 2021-10-20   83  		   atomic_read(&fscache_n_resizes),
16a96bdf92d5af David Howells 2021-10-20   84  		   atomic_read(&fscache_n_resizes_null));
7f3283aba39a0f David Howells 2021-10-20   85  
7f3283aba39a0f David Howells 2021-10-20   86  	seq_printf(m, "Relinqs: n=%u rtr=%u drop=%u\n",
7f3283aba39a0f David Howells 2021-10-20   87  		   atomic_read(&fscache_n_relinquishes),
7f3283aba39a0f David Howells 2021-10-20   88  		   atomic_read(&fscache_n_relinquishes_retire),
7f3283aba39a0f David Howells 2021-10-20   89  		   atomic_read(&fscache_n_relinquishes_dropped));
7f3283aba39a0f David Howells 2021-10-20   90  
9f08ebc3438baa David Howells 2021-10-22   91  	seq_printf(m, "NoSpace: nwr=%u ncr=%u cull=%u\n",
3929eca769b5a2 David Howells 2021-10-21   92  		   atomic_read(&fscache_n_no_write_space),
9f08ebc3438baa David Howells 2021-10-22   93  		   atomic_read(&fscache_n_no_create_space),
9f08ebc3438baa David Howells 2021-10-22   94  		   atomic_read(&fscache_n_culled));
3929eca769b5a2 David Howells 2021-10-21   95  
8e7a867bb7309f David Howells 2021-10-20   96  	seq_printf(m, "IO     : rd=%u wr=%u\n",
8e7a867bb7309f David Howells 2021-10-20   97  		   atomic_read(&fscache_n_read),
8e7a867bb7309f David Howells 2021-10-20   98  		   atomic_read(&fscache_n_write));
8e7a867bb7309f David Howells 2021-10-20   99  
1e1236b841166f David Howells 2021-10-20 @100  	netfs_stats_show(m);

:::::: The code at line 100 was first introduced by commit
:::::: 1e1236b841166f1d2daf36fdf6bb3e656bc5f5ca fscache: Introduce new driver

:::::: TO: David Howells <dhowells@redhat.com>
:::::: CC: David Howells <dhowells@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
