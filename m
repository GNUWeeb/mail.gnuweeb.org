Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id yL/8G7y75WEC4wUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 18:55:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 5C1B2C2AA3;
	Mon, 17 Jan 2022 18:55:53 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=hryRB9RY;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gnuweeb.org (Postfix) with ESMTPS id 7A924C2AA7
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 18:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642445751; x=1673981751;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ZM2XHMed555QqYiAsyiZlPsS6Y1GbSKroXHhQpZmjIE=;
 b=hryRB9RY4+Fv8256lm2vOYco2vEw3oF7DEDDnwjkAaF49qcI4r3kSxLy
 JbJ0tIJHeh0QOG3OHy9oS+8cyVW53tBPuEAgNJCNOSuzzDDx0F/GjoLoJ
 M63hC08+zeXq8YPUR8gptxNnwRytNmjdKTw5U5RilsMJ7Rl5cxhzHfITx
 olfD7Ww27ZJLvHnt8wFg//CkpwwPcvoL+aJSY+daGXoDzhvmB45IJwJCr
 o67iC5H7xV8muNPOxj8VSghFD9Yu8eP9jyP3+El7Cet1lFtFOKJHirZbp
 zE2fY+7FUWo/kVuPncxpMQEBDw6opH2Nm7Goba5V8PByufS5vRCUL5glM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244874924"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="244874924"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 10:55:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="560440125"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Jan 2022 10:55:45 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9XAO-000Bmk-PE; Mon, 17 Jan 2022 18:55:44 +0000
Date: Tue, 18 Jan 2022 02:54:46 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 21/24]
 fs/netfs/read_helper.c:1267:7: error: implicit declaration of function
 'netfs_is_cache_enabled'
Message-ID: <202201180210.aveIQZWP-lkp@intel.com>
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

Hi David,

First bad commit (maybe != root cause):

tree:   https://github.com/ammarfaizi2/linux-block dhowells/linux-fs/netfs-lib
head:   12617e48874cc7e301b04f65b22b762cca3aea01
commit: 76e2a6186d78be90874f3d45f7a41c583a0458f0 [21/24] cifs: Support fscache rewrite
config: i386-randconfig-r036-20220117 (https://download.01.org/0day-ci/archive/20220118/202201180210.aveIQZWP-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 5f782d25a742302d25ef3c8b84b54f7483c2deb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/76e2a6186d78be90874f3d45f7a41c583a0458f0
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout 76e2a6186d78be90874f3d45f7a41c583a0458f0
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash fs/netfs/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   fs/netfs/read_helper.c:971:14: warning: variable 'folio' is uninitialized when used here [-Wuninitialized]
                           folio_put(folio);
                                     ^~~~~
   fs/netfs/read_helper.c:920:21: note: initialize the variable 'folio' to silence this warning
           struct folio *folio;
                              ^
                               = NULL
>> fs/netfs/read_helper.c:1267:7: error: implicit declaration of function 'netfs_is_cache_enabled' [-Werror,-Wimplicit-function-declaration]
           if (!netfs_is_cache_enabled(ctx) &&
                ^
   1 warning and 1 error generated.


vim +/netfs_is_cache_enabled +1267 fs/netfs/read_helper.c

e1b1240c1ff5f8 David Howells 2020-09-22  1194  
e1b1240c1ff5f8 David Howells 2020-09-22  1195  /**
e1b1240c1ff5f8 David Howells 2020-09-22  1196   * netfs_write_begin - Helper to prepare for writing
e1b1240c1ff5f8 David Howells 2020-09-22  1197   * @file: The file to read from
e1b1240c1ff5f8 David Howells 2020-09-22  1198   * @mapping: The mapping to read from
e1b1240c1ff5f8 David Howells 2020-09-22  1199   * @pos: File position at which the write will begin
78525c74d9e7d1 David Howells 2021-08-11  1200   * @len: The length of the write (may extend beyond the end of the folio chosen)
78525c74d9e7d1 David Howells 2021-08-11  1201   * @aop_flags: AOP_* flags
78525c74d9e7d1 David Howells 2021-08-11  1202   * @_folio: Where to put the resultant folio
e1b1240c1ff5f8 David Howells 2020-09-22  1203   * @_fsdata: Place for the netfs to store a cookie
e1b1240c1ff5f8 David Howells 2020-09-22  1204   *
e1b1240c1ff5f8 David Howells 2020-09-22  1205   * Pre-read data for a write-begin request by drawing data from the cache if
e1b1240c1ff5f8 David Howells 2020-09-22  1206   * possible, or the netfs if not.  Space beyond the EOF is zero-filled.
e1b1240c1ff5f8 David Howells 2020-09-22  1207   * Multiple I/O requests from different sources will get munged together.  If
e1b1240c1ff5f8 David Howells 2020-09-22  1208   * necessary, the readahead window can be expanded in either direction to a
e1b1240c1ff5f8 David Howells 2020-09-22  1209   * more convenient alighment for RPC efficiency or to make storage in the cache
e1b1240c1ff5f8 David Howells 2020-09-22  1210   * feasible.
e1b1240c1ff5f8 David Howells 2020-09-22  1211   *
e1b1240c1ff5f8 David Howells 2020-09-22  1212   * The calling netfs must provide a table of operations, only one of which,
e1b1240c1ff5f8 David Howells 2020-09-22  1213   * issue_op, is mandatory.
e1b1240c1ff5f8 David Howells 2020-09-22  1214   *
e1b1240c1ff5f8 David Howells 2020-09-22  1215   * The check_write_begin() operation can be provided to check for and flush
78525c74d9e7d1 David Howells 2021-08-11  1216   * conflicting writes once the folio is grabbed and locked.  It is passed a
e1b1240c1ff5f8 David Howells 2020-09-22  1217   * pointer to the fsdata cookie that gets returned to the VM to be passed to
e1b1240c1ff5f8 David Howells 2020-09-22  1218   * write_end.  It is permitted to sleep.  It should return 0 if the request
78525c74d9e7d1 David Howells 2021-08-11  1219   * should go ahead; unlock the folio and return -EAGAIN to cause the folio to
78525c74d9e7d1 David Howells 2021-08-11  1220   * be regot; or return an error.
e1b1240c1ff5f8 David Howells 2020-09-22  1221   *
810800743d8a6f David Howells 2021-06-29  1222   * The calling netfs must initialise a netfs context contiguous to the vfs
810800743d8a6f David Howells 2021-06-29  1223   * inode before calling this.
810800743d8a6f David Howells 2021-06-29  1224   *
e1b1240c1ff5f8 David Howells 2020-09-22  1225   * This is usable whether or not caching is enabled.
e1b1240c1ff5f8 David Howells 2020-09-22  1226   */
e1b1240c1ff5f8 David Howells 2020-09-22  1227  int netfs_write_begin(struct file *file, struct address_space *mapping,
78525c74d9e7d1 David Howells 2021-08-11  1228  		      loff_t pos, unsigned int len, unsigned int aop_flags,
810800743d8a6f David Howells 2021-06-29  1229  		      struct folio **_folio, void **_fsdata)
e1b1240c1ff5f8 David Howells 2020-09-22  1230  {
e1b1240c1ff5f8 David Howells 2020-09-22  1231  	struct netfs_read_request *rreq;
810800743d8a6f David Howells 2021-06-29  1232  	struct netfs_i_context *ctx = netfs_i_context(file_inode(file ));
78525c74d9e7d1 David Howells 2021-08-11  1233  	struct folio *folio;
78525c74d9e7d1 David Howells 2021-08-11  1234  	unsigned int debug_index = 0, fgp_flags;
e1b1240c1ff5f8 David Howells 2020-09-22  1235  	pgoff_t index = pos >> PAGE_SHIFT;
e1b1240c1ff5f8 David Howells 2020-09-22  1236  	int ret;
e1b1240c1ff5f8 David Howells 2020-09-22  1237  
e1b1240c1ff5f8 David Howells 2020-09-22  1238  	DEFINE_READAHEAD(ractl, file, NULL, mapping, index);
e1b1240c1ff5f8 David Howells 2020-09-22  1239  
e1b1240c1ff5f8 David Howells 2020-09-22  1240  retry:
78525c74d9e7d1 David Howells 2021-08-11  1241  	fgp_flags = FGP_LOCK | FGP_WRITE | FGP_CREAT | FGP_STABLE;
78525c74d9e7d1 David Howells 2021-08-11  1242  	if (aop_flags & AOP_FLAG_NOFS)
78525c74d9e7d1 David Howells 2021-08-11  1243  		fgp_flags |= FGP_NOFS;
78525c74d9e7d1 David Howells 2021-08-11  1244  	folio = __filemap_get_folio(mapping, index, fgp_flags,
78525c74d9e7d1 David Howells 2021-08-11  1245  				    mapping_gfp_mask(mapping));
78525c74d9e7d1 David Howells 2021-08-11  1246  	if (!folio)
e1b1240c1ff5f8 David Howells 2020-09-22  1247  		return -ENOMEM;
e1b1240c1ff5f8 David Howells 2020-09-22  1248  
810800743d8a6f David Howells 2021-06-29  1249  	if (ctx->ops->check_write_begin) {
e1b1240c1ff5f8 David Howells 2020-09-22  1250  		/* Allow the netfs (eg. ceph) to flush conflicts. */
810800743d8a6f David Howells 2021-06-29  1251  		ret = ctx->ops->check_write_begin(file, pos, len, folio, _fsdata);
e1b1240c1ff5f8 David Howells 2020-09-22  1252  		if (ret < 0) {
0246f3e5737d0b David Howells 2021-04-06  1253  			trace_netfs_failure(NULL, NULL, ret, netfs_fail_check_write_begin);
e1b1240c1ff5f8 David Howells 2020-09-22  1254  			if (ret == -EAGAIN)
e1b1240c1ff5f8 David Howells 2020-09-22  1255  				goto retry;
e1b1240c1ff5f8 David Howells 2020-09-22  1256  			goto error;
e1b1240c1ff5f8 David Howells 2020-09-22  1257  		}
e1b1240c1ff5f8 David Howells 2020-09-22  1258  	}
e1b1240c1ff5f8 David Howells 2020-09-22  1259  
78525c74d9e7d1 David Howells 2021-08-11  1260  	if (folio_test_uptodate(folio))
78525c74d9e7d1 David Howells 2021-08-11  1261  		goto have_folio;
e1b1240c1ff5f8 David Howells 2020-09-22  1262  
2093a555c34cf6 David Howells 2021-07-09  1263  	/* If the folio is beyond the EOF, we want to clear it - unless it's
e1b1240c1ff5f8 David Howells 2020-09-22  1264  	 * within the cache granule containing the EOF, in which case we need
e1b1240c1ff5f8 David Howells 2020-09-22  1265  	 * to preload the granule.
e1b1240c1ff5f8 David Howells 2020-09-22  1266  	 */
810800743d8a6f David Howells 2021-06-29 @1267  	if (!netfs_is_cache_enabled(ctx) &&
810800743d8a6f David Howells 2021-06-29  1268  	    netfs_skip_folio_read(folio, pos, len, false)) {
e1b1240c1ff5f8 David Howells 2020-09-22  1269  		netfs_stat(&netfs_n_rh_write_zskip);
78525c74d9e7d1 David Howells 2021-08-11  1270  		goto have_folio_no_wait;
e1b1240c1ff5f8 David Howells 2020-09-22  1271  	}
e1b1240c1ff5f8 David Howells 2020-09-22  1272  
e1b1240c1ff5f8 David Howells 2020-09-22  1273  	ret = -ENOMEM;
810800743d8a6f David Howells 2021-06-29  1274  	rreq = netfs_alloc_read_request(mapping, file);
e1b1240c1ff5f8 David Howells 2020-09-22  1275  	if (!rreq)
e1b1240c1ff5f8 David Howells 2020-09-22  1276  		goto error;
78525c74d9e7d1 David Howells 2021-08-11  1277  	rreq->start		= folio_file_pos(folio);
78525c74d9e7d1 David Howells 2021-08-11  1278  	rreq->len		= folio_size(folio);
78525c74d9e7d1 David Howells 2021-08-11  1279  	rreq->no_unlock_folio	= folio_index(folio);
78525c74d9e7d1 David Howells 2021-08-11  1280  	__set_bit(NETFS_RREQ_NO_UNLOCK_FOLIO, &rreq->flags);
e1b1240c1ff5f8 David Howells 2020-09-22  1281  
32d9d354c2bb5e David Howells 2021-08-10  1282  	ret = netfs_begin_cache_operation(rreq, ctx);
726218fdc22c9b David Howells 2020-02-06  1283  	if (ret == -ENOMEM || ret == -EINTR || ret == -ERESTARTSYS)
726218fdc22c9b David Howells 2020-02-06  1284  		goto error_put;
726218fdc22c9b David Howells 2020-02-06  1285  
e1b1240c1ff5f8 David Howells 2020-09-22  1286  	netfs_stat(&netfs_n_rh_write_begin);
e1b1240c1ff5f8 David Howells 2020-09-22  1287  	trace_netfs_read(rreq, pos, len, netfs_read_trace_write_begin);
e1b1240c1ff5f8 David Howells 2020-09-22  1288  
e1b1240c1ff5f8 David Howells 2020-09-22  1289  	/* Expand the request to meet caching requirements and download
e1b1240c1ff5f8 David Howells 2020-09-22  1290  	 * preferences.
e1b1240c1ff5f8 David Howells 2020-09-22  1291  	 */
78525c74d9e7d1 David Howells 2021-08-11  1292  	ractl._nr_pages = folio_nr_pages(folio);
e1b1240c1ff5f8 David Howells 2020-09-22  1293  	netfs_rreq_expand(rreq, &ractl);
e1b1240c1ff5f8 David Howells 2020-09-22  1294  
2093a555c34cf6 David Howells 2021-07-09  1295  	/* Set up the output buffer */
2093a555c34cf6 David Howells 2021-07-09  1296  	ret = netfs_rreq_set_up_buffer(rreq, &ractl, folio,
2093a555c34cf6 David Howells 2021-07-09  1297  				       readahead_index(&ractl), readahead_count(&ractl));
2093a555c34cf6 David Howells 2021-07-09  1298  	if (ret < 0) {
78525c74d9e7d1 David Howells 2021-08-11  1299  		/* We hold the folio locks, so we can drop the references */
78525c74d9e7d1 David Howells 2021-08-11  1300  		folio_get(folio);
78525c74d9e7d1 David Howells 2021-08-11  1301  		while (readahead_folio(&ractl))
78525c74d9e7d1 David Howells 2021-08-11  1302  			;
2093a555c34cf6 David Howells 2021-07-09  1303  		goto error_put;
2093a555c34cf6 David Howells 2021-07-09  1304  	}
e1b1240c1ff5f8 David Howells 2020-09-22  1305  
2093a555c34cf6 David Howells 2021-07-09  1306  	netfs_get_read_request(rreq);
e1b1240c1ff5f8 David Howells 2020-09-22  1307  	atomic_set(&rreq->nr_rd_ops, 1);
e1b1240c1ff5f8 David Howells 2020-09-22  1308  	do {
e1b1240c1ff5f8 David Howells 2020-09-22  1309  		if (!netfs_rreq_submit_slice(rreq, &debug_index))
e1b1240c1ff5f8 David Howells 2020-09-22  1310  			break;
e1b1240c1ff5f8 David Howells 2020-09-22  1311  
e1b1240c1ff5f8 David Howells 2020-09-22  1312  	} while (rreq->submitted < rreq->len);
e1b1240c1ff5f8 David Howells 2020-09-22  1313  
e1b1240c1ff5f8 David Howells 2020-09-22  1314  	/* Keep nr_rd_ops incremented so that the ref always belongs to us, and
e1b1240c1ff5f8 David Howells 2020-09-22  1315  	 * the service code isn't punted off to a random thread pool to
e1b1240c1ff5f8 David Howells 2020-09-22  1316  	 * process.
e1b1240c1ff5f8 David Howells 2020-09-22  1317  	 */
e1b1240c1ff5f8 David Howells 2020-09-22  1318  	for (;;) {
e1b1240c1ff5f8 David Howells 2020-09-22  1319  		wait_var_event(&rreq->nr_rd_ops, atomic_read(&rreq->nr_rd_ops) == 1);
e1b1240c1ff5f8 David Howells 2020-09-22  1320  		netfs_rreq_assess(rreq, false);
e1b1240c1ff5f8 David Howells 2020-09-22  1321  		if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
e1b1240c1ff5f8 David Howells 2020-09-22  1322  			break;
e1b1240c1ff5f8 David Howells 2020-09-22  1323  		cond_resched();
e1b1240c1ff5f8 David Howells 2020-09-22  1324  	}
e1b1240c1ff5f8 David Howells 2020-09-22  1325  
e1b1240c1ff5f8 David Howells 2020-09-22  1326  	ret = rreq->error;
0246f3e5737d0b David Howells 2021-04-06  1327  	if (ret == 0 && rreq->submitted < rreq->len) {
0246f3e5737d0b David Howells 2021-04-06  1328  		trace_netfs_failure(rreq, NULL, ret, netfs_fail_short_write_begin);
e1b1240c1ff5f8 David Howells 2020-09-22  1329  		ret = -EIO;
0246f3e5737d0b David Howells 2021-04-06  1330  	}
e1b1240c1ff5f8 David Howells 2020-09-22  1331  	netfs_put_read_request(rreq, false);
e1b1240c1ff5f8 David Howells 2020-09-22  1332  	if (ret < 0)
e1b1240c1ff5f8 David Howells 2020-09-22  1333  		goto error;
e1b1240c1ff5f8 David Howells 2020-09-22  1334  
78525c74d9e7d1 David Howells 2021-08-11  1335  have_folio:
78525c74d9e7d1 David Howells 2021-08-11  1336  	ret = folio_wait_fscache_killable(folio);
e1b1240c1ff5f8 David Howells 2020-09-22  1337  	if (ret < 0)
e1b1240c1ff5f8 David Howells 2020-09-22  1338  		goto error;
78525c74d9e7d1 David Howells 2021-08-11  1339  have_folio_no_wait:
78525c74d9e7d1 David Howells 2021-08-11  1340  	*_folio = folio;
e1b1240c1ff5f8 David Howells 2020-09-22  1341  	_leave(" = 0");
e1b1240c1ff5f8 David Howells 2020-09-22  1342  	return 0;
e1b1240c1ff5f8 David Howells 2020-09-22  1343  
e1b1240c1ff5f8 David Howells 2020-09-22  1344  error_put:
e1b1240c1ff5f8 David Howells 2020-09-22  1345  	netfs_put_read_request(rreq, false);
e1b1240c1ff5f8 David Howells 2020-09-22  1346  error:
78525c74d9e7d1 David Howells 2021-08-11  1347  	folio_unlock(folio);
78525c74d9e7d1 David Howells 2021-08-11  1348  	folio_put(folio);
e1b1240c1ff5f8 David Howells 2020-09-22  1349  	_leave(" = %d", ret);
e1b1240c1ff5f8 David Howells 2020-09-22  1350  	return ret;
e1b1240c1ff5f8 David Howells 2020-09-22  1351  }
e1b1240c1ff5f8 David Howells 2020-09-22  1352  EXPORT_SYMBOL(netfs_write_begin);
5559c4bc348e31 David Howells 2021-08-20  1353  

:::::: The code at line 1267 was first introduced by commit
:::::: 810800743d8a6fd292f870720030771ec9459dcc netfs: Add a netfs inode context

:::::: TO: David Howells <dhowells@redhat.com>
:::::: CC: David Howells <dhowells@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
