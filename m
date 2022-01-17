Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id iAsNBab55WEv6gUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Mon, 17 Jan 2022 23:20:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D5477C1718;
	Mon, 17 Jan 2022 23:20:03 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=KVchxafB;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gnuweeb.org (Postfix) with ESMTPS id 242CAC16A3
 for <gwml@gnuweeb.org>; Mon, 17 Jan 2022 23:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642461601; x=1673997601;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Z8SFnS14Ws1uI9msm3xogohlM5/v43CKlc3O/8rmaBE=;
 b=KVchxafBJiQs1x8sTkf+Z9/vVIOq7js7Yet/Y6hT6bcXc10Bp+13Oqs3
 mixvTjERAnWrCvxPWOUs5aywuxQHZRQHP+73yIQB1+R1ByrLAGxLDQN5n
 gtu4r/A96LrsEXaeo9eO1k9q4ssQ6GjMOHVoIaqlRA/Fhy3OQt0VPwXPL
 kK3lsL6rgPLiNG6sNqLc0yCG9zBUfVu2jpzQ5gKB4lOcqgZBSb0AOpdoE
 vqTSzg2NoyfipPbKJvCcZh/a9+/7BeMWVtTDeP4/Tn7wt8aMZy7zBX7fQ
 Md9MnYp3TpqsDme4IsFuW2OHBM5KwVwzy9XPrkpTtfpFLzddEgsEYr2sz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243528777"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="243528777"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 15:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="517553577"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 17 Jan 2022 15:19:54 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9bI1-000BxE-BN; Mon, 17 Jan 2022 23:19:53 +0000
Date: Tue, 18 Jan 2022 07:19:40 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 11/24]
 fs/ceph/addr.c:1744:1: warning: unused label 'out_put_folio'
Message-ID: <202201180732.hDR9RuNW-lkp@intel.com>
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
commit: 11d90ed519237baca31d841a9a64fecdbc932f5a [11/24] ceph: Uninline the data on a file opened for writing
config: x86_64-randconfig-a006-20220117 (https://download.01.org/0day-ci/archive/20220118/202201180732.hDR9RuNW-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 5f782d25a742302d25ef3c8b84b54f7483c2deb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/11d90ed519237baca31d841a9a64fecdbc932f5a
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout 11d90ed519237baca31d841a9a64fecdbc932f5a
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash fs/ceph/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ceph/addr.c:1744:1: warning: unused label 'out_put_folio' [-Wunused-label]
   out_put_folio:
   ^~~~~~~~~~~~~~
   1 warning generated.


vim +/out_put_folio +1744 fs/ceph/addr.c

  1645	
  1646	int ceph_uninline_data(struct file *file)
  1647	{
  1648		struct inode *inode = file_inode(file);
  1649		struct ceph_inode_info *ci = ceph_inode(inode);
  1650		struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
  1651		struct ceph_osd_request *req;
  1652		struct folio *folio = NULL;
  1653		struct page *pages[1];
  1654		u64 len, inline_version;
  1655		int err = 0;
  1656	
  1657		folio = read_mapping_folio(inode->i_mapping, 0, file);
  1658		if (IS_ERR(folio)) {
  1659			err = PTR_ERR(folio);
  1660			goto out;
  1661		}
  1662	
  1663		spin_lock(&ci->i_ceph_lock);
  1664		inline_version = ci->i_inline_version;
  1665		spin_unlock(&ci->i_ceph_lock);
  1666	
  1667		dout("uninline_data %p %llx.%llx inline_version %llu\n",
  1668		     inode, ceph_vinop(inode), inline_version);
  1669	
  1670		if (inline_version == 1 || /* initial version, no data */
  1671		    inline_version == CEPH_INLINE_NONE)
  1672			goto out_unlock;
  1673	
  1674		len = i_size_read(inode);
  1675		if (len > folio_size(folio))
  1676			len = folio_size(folio);
  1677	
  1678		req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
  1679					    ceph_vino(inode), 0, &len, 0, 1,
  1680					    CEPH_OSD_OP_CREATE, CEPH_OSD_FLAG_WRITE,
  1681					    NULL, 0, 0, false);
  1682		if (IS_ERR(req)) {
  1683			err = PTR_ERR(req);
  1684			goto out_unlock;
  1685		}
  1686	
  1687		req->r_mtime = inode->i_mtime;
  1688		err = ceph_osdc_start_request(&fsc->client->osdc, req, false);
  1689		if (!err)
  1690			err = ceph_osdc_wait_request(&fsc->client->osdc, req);
  1691		ceph_osdc_put_request(req);
  1692		if (err < 0)
  1693			goto out_unlock;
  1694	
  1695		req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
  1696					    ceph_vino(inode), 0, &len, 1, 3,
  1697					    CEPH_OSD_OP_WRITE, CEPH_OSD_FLAG_WRITE,
  1698					    NULL, ci->i_truncate_seq,
  1699					    ci->i_truncate_size, false);
  1700		if (IS_ERR(req)) {
  1701			err = PTR_ERR(req);
  1702			goto out_unlock;
  1703		}
  1704	
  1705		pages[0] = folio_page(folio, 0);
  1706		osd_req_op_extent_osd_data_pages(req, 1, pages, len, 0, false, false);
  1707	
  1708		{
  1709			__le64 xattr_buf = cpu_to_le64(inline_version);
  1710			err = osd_req_op_xattr_init(req, 0, CEPH_OSD_OP_CMPXATTR,
  1711						    "inline_version", &xattr_buf,
  1712						    sizeof(xattr_buf),
  1713						    CEPH_OSD_CMPXATTR_OP_GT,
  1714						    CEPH_OSD_CMPXATTR_MODE_U64);
  1715			if (err)
  1716				goto out_put_req;
  1717		}
  1718	
  1719		{
  1720			char xattr_buf[32];
  1721			int xattr_len = snprintf(xattr_buf, sizeof(xattr_buf),
  1722						 "%llu", inline_version);
  1723			err = osd_req_op_xattr_init(req, 2, CEPH_OSD_OP_SETXATTR,
  1724						    "inline_version",
  1725						    xattr_buf, xattr_len, 0, 0);
  1726			if (err)
  1727				goto out_put_req;
  1728		}
  1729	
  1730		req->r_mtime = inode->i_mtime;
  1731		err = ceph_osdc_start_request(&fsc->client->osdc, req, false);
  1732		if (!err)
  1733			err = ceph_osdc_wait_request(&fsc->client->osdc, req);
  1734	
  1735		ceph_update_write_metrics(&fsc->mdsc->metric, req->r_start_latency,
  1736					  req->r_end_latency, len, err);
  1737	
  1738	out_put_req:
  1739		ceph_osdc_put_request(req);
  1740		if (err == -ECANCELED)
  1741			err = 0;
  1742	out_unlock:
  1743		folio_unlock(folio);
> 1744	out_put_folio:
  1745		folio_put(folio);
  1746	out:
  1747		dout("uninline_data %p %llx.%llx inline_version %llu = %d\n",
  1748		     inode, ceph_vinop(inode), inline_version, err);
  1749		return err;
  1750	}
  1751	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
