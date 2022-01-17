Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 4LuYAkrk5WFa5wUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 21:48:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id B9BF9C16A3;
	Mon, 17 Jan 2022 21:48:56 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=hPBI4vUe;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gnuweeb.org (Postfix) with ESMTPS id 45036C1685
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 21:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642456134; x=1673992134;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=DBeO6aDiIEQG/4PRcF+TRJQpRxMi0Jc+fiRJum1lmsQ=;
 b=hPBI4vUeQRrs4507ggADtfAQpQJGIKh9UIvToXGjAIRNVLd8wSX7e29W
 AvxjS7le1ubsezZY8fOQN/ceJ/Ykeu7ZqJiWWZnjmutGPPQGTx5yG4Mvl
 w/2MDCWJtK+gZmxV3RCZvIi7ThiFIU5KCq7E4j3FDBiG6pekN57mWbSC8
 hF6kH6nbXzJkereVlXdUn/Ot3v25wyYDP48nbpAk+UDxXh3LH5q+NyksJ
 8FwB5dWzIBQZV1saXtpD2UFkTLQJdIflXPnEBCoPljBGsui/za6JhkCh+
 Bxmr7RBMl2lfMtT9IByhHzF0rA4lN8Flf4y1MfEwLlSwgNtqapjBXu5OF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="331046617"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="331046617"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 13:48:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="476768406"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 17 Jan 2022 13:48:49 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9Zrt-000BtY-Au; Mon, 17 Jan 2022 21:48:49 +0000
Date: Tue, 18 Jan 2022 05:48:20 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 14/24]
 fs/netfs/read_helper.c:979:14: warning: variable 'folio' is uninitialized
 when used here
Message-ID: <202201180514.gVYTloyy-lkp@intel.com>
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
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block dhowells/linux-fs/netfs-lib
head:   e450b62f32df4384c141a6a382811b3fe5723bad
commit: e6b340ed3634bb80396afb564c499eebdeff601f [14/24] netfs: Use a buffer in netfs_read_request and add pages to it
config: x86_64-randconfig-a001-20220117 (https://download.01.org/0day-ci/archive/20220118/202201180514.gVYTloyy-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 5f782d25a742302d25ef3c8b84b54f7483c2deb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/e6b340ed3634bb80396afb564c499eebdeff601f
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout e6b340ed3634bb80396afb564c499eebdeff601f
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash fs/netfs/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/netfs/read_helper.c:979:14: warning: variable 'folio' is uninitialized when used here [-Wuninitialized]
                           folio_put(folio);
                                     ^~~~~
   fs/netfs/read_helper.c:928:21: note: initialize the variable 'folio' to silence this warning
           struct folio *folio;
                              ^
                               = NULL
   1 warning generated.


vim +/folio +979 fs/netfs/read_helper.c

   943	
   944		ret = netfs_rreq_add_folios_to_buffer(rreq, want_index, have_index - 1,
   945						      gfp_mask);
   946		if (ret < 0)
   947			return ret;
   948		have_folios += have_index - want_index;
   949	
   950		ret = netfs_rreq_add_folios_to_buffer(rreq, have_index + have_folios,
   951						      want_index + want_folios - 1,
   952						      gfp_mask);
   953		if (ret < 0)
   954			return ret;
   955	
   956		/* Transfer the folios proposed by the VM into the buffer and take refs
   957		 * on them.  The locks will be dropped in netfs_rreq_unlock().
   958		 */
   959		if (ractl) {
   960			while ((folio = readahead_folio(ractl))) {
   961				folio_get(folio);
   962				if (folio == keep)
   963					folio_get(folio);
   964				ret = xa_insert_set_mark(&rreq->buffer,
   965							 folio_index(folio), folio,
   966							 XA_MARK_0, gfp_mask);
   967				if (ret < 0) {
   968					if (folio != keep)
   969						folio_unlock(folio);
   970					folio_put(folio);
   971					return ret;
   972				}
   973			}
   974		} else {
   975			folio_get(keep);
   976			ret = xa_insert_set_mark(&rreq->buffer, keep->index, keep,
   977						 XA_MARK_0, gfp_mask);
   978			if (ret < 0) {
 > 979				folio_put(folio);
   980				return ret;
   981			}
   982		}
   983		return 0;
   984	}
   985	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
