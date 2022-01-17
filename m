Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id AJvDMvIA5mGu6wUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 23:51:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 76000C2AA7;
	Mon, 17 Jan 2022 23:51:13 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=YQ2C9E0V;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gnuweeb.org (Postfix) with ESMTPS id 098F4C165E
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 23:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642463470; x=1673999470;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=W/OuCgoqu37a7VgbzR2DZsid0yUDKtKBAyBhCX5zKGg=;
 b=YQ2C9E0VUgSZUrSb1Dnecg0JFbs02zON4JUWjGGybq42vKMdJkX3hvDk
 mLLWymvuUHID5katXePHhru3OitZerQ58/NjOuyHdysotvZmevTWBhBzI
 tVIbDez2Uyg+FFpLS49hwBZ4TRqHsDcvbtKkMjSuEyPqK9kj6rnv/FRl2
 bO8em9dny3iClwkvel3WQSURH0/aZ/D+5bNXnDrwhPeijzQYVWeYUTs5N
 AjjjCZo5RWeQDIOmTGqhFIJ6eBk93wk5rO3/kOrwk8bVOV6GBNFEqO7RP
 Spc3QaalSUf83X4AO6rS8nWEJ2HtOhwL27svu4ATBkZfsYXeh7KXt2Nwy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="242265758"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="242265758"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 15:50:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="560491132"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Jan 2022 15:50:54 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9bm1-000ByZ-TG; Mon, 17 Jan 2022 23:50:53 +0000
Date: Tue, 18 Jan 2022 07:50:07 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 21/24]
 fs/netfs/read_helper.c:971:14: warning: variable 'folio' is uninitialized
 when used here
Message-ID: <202201180713.iy4mum5Q-lkp@intel.com>
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
commit: 814cca7df840c441b1ac007bcb3eb8bfaeacb13f [21/24] cifs: Support fscache rewrite
config: arm-s3c2410_defconfig (https://download.01.org/0day-ci/archive/20220118/202201180713.iy4mum5Q-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 5f782d25a742302d25ef3c8b84b54f7483c2deb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/ammarfaizi2/linux-block/commit/814cca7df840c441b1ac007bcb3eb8bfaeacb13f
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout 814cca7df840c441b1ac007bcb3eb8bfaeacb13f
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash fs/netfs/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/netfs/read_helper.c:971:14: warning: variable 'folio' is uninitialized when used here [-Wuninitialized]
                           folio_put(folio);
                                     ^~~~~
   fs/netfs/read_helper.c:920:21: note: initialize the variable 'folio' to silence this warning
           struct folio *folio;
                              ^
                               = NULL
   fs/netfs/read_helper.c:1267:7: error: implicit declaration of function 'netfs_is_cache_enabled' [-Werror,-Wimplicit-function-declaration]
           if (!netfs_is_cache_enabled(ctx) &&
                ^
   1 warning and 1 error generated.


vim +/folio +971 fs/netfs/read_helper.c

e6b340ed3634bb David Howells 2021-07-09  935  
e6b340ed3634bb David Howells 2021-07-09  936  	ret = netfs_rreq_add_folios_to_buffer(rreq, want_index, have_index - 1,
e6b340ed3634bb David Howells 2021-07-09  937  					      gfp_mask);
e6b340ed3634bb David Howells 2021-07-09  938  	if (ret < 0)
e6b340ed3634bb David Howells 2021-07-09  939  		return ret;
e6b340ed3634bb David Howells 2021-07-09  940  	have_folios += have_index - want_index;
e6b340ed3634bb David Howells 2021-07-09  941  
e6b340ed3634bb David Howells 2021-07-09  942  	ret = netfs_rreq_add_folios_to_buffer(rreq, have_index + have_folios,
e6b340ed3634bb David Howells 2021-07-09  943  					      want_index + want_folios - 1,
e6b340ed3634bb David Howells 2021-07-09  944  					      gfp_mask);
e6b340ed3634bb David Howells 2021-07-09  945  	if (ret < 0)
e6b340ed3634bb David Howells 2021-07-09  946  		return ret;
e6b340ed3634bb David Howells 2021-07-09  947  
e6b340ed3634bb David Howells 2021-07-09  948  	/* Transfer the folios proposed by the VM into the buffer and take refs
e6b340ed3634bb David Howells 2021-07-09  949  	 * on them.  The locks will be dropped in netfs_rreq_unlock().
e6b340ed3634bb David Howells 2021-07-09  950  	 */
e6b340ed3634bb David Howells 2021-07-09  951  	if (ractl) {
e6b340ed3634bb David Howells 2021-07-09  952  		while ((folio = readahead_folio(ractl))) {
e6b340ed3634bb David Howells 2021-07-09  953  			folio_get(folio);
e6b340ed3634bb David Howells 2021-07-09  954  			if (folio == keep)
e6b340ed3634bb David Howells 2021-07-09  955  				folio_get(folio);
e6b340ed3634bb David Howells 2021-07-09  956  			ret = xa_insert_set_mark(&rreq->buffer,
e6b340ed3634bb David Howells 2021-07-09  957  						 folio_index(folio), folio,
e6b340ed3634bb David Howells 2021-07-09  958  						 XA_MARK_0, gfp_mask);
e6b340ed3634bb David Howells 2021-07-09  959  			if (ret < 0) {
e6b340ed3634bb David Howells 2021-07-09  960  				if (folio != keep)
e6b340ed3634bb David Howells 2021-07-09  961  					folio_unlock(folio);
e6b340ed3634bb David Howells 2021-07-09  962  				folio_put(folio);
e6b340ed3634bb David Howells 2021-07-09  963  				return ret;
e6b340ed3634bb David Howells 2021-07-09  964  			}
e6b340ed3634bb David Howells 2021-07-09  965  		}
e6b340ed3634bb David Howells 2021-07-09  966  	} else {
e6b340ed3634bb David Howells 2021-07-09  967  		folio_get(keep);
e6b340ed3634bb David Howells 2021-07-09  968  		ret = xa_insert_set_mark(&rreq->buffer, keep->index, keep,
e6b340ed3634bb David Howells 2021-07-09  969  					 XA_MARK_0, gfp_mask);
e6b340ed3634bb David Howells 2021-07-09  970  		if (ret < 0) {
e6b340ed3634bb David Howells 2021-07-09 @971  			folio_put(folio);
e6b340ed3634bb David Howells 2021-07-09  972  			return ret;
e6b340ed3634bb David Howells 2021-07-09  973  		}
e6b340ed3634bb David Howells 2021-07-09  974  	}
e6b340ed3634bb David Howells 2021-07-09  975  	return 0;
e6b340ed3634bb David Howells 2021-07-09  976  }
e6b340ed3634bb David Howells 2021-07-09  977  

:::::: The code at line 971 was first introduced by commit
:::::: e6b340ed3634bb80396afb564c499eebdeff601f netfs: Use a buffer in netfs_read_request and add pages to it

:::::: TO: David Howells <dhowells@redhat.com>
:::::: CC: David Howells <dhowells@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
