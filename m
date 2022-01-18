Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id qHohIKIT52GUDQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 18 Jan 2022 19:23:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 3416DC1601;
	Tue, 18 Jan 2022 19:23:13 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=iEbTMLgj;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gnuweeb.org (Postfix) with ESMTPS id 0F902C1601
 for <gwml@gnuweeb.org>; Tue, 18 Jan 2022 19:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642533791; x=1674069791;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=fam4jN08KIoBl1JR2iTduOH2dhjyiiVlYfvy4wb1B8c=;
 b=iEbTMLgjGTo9nGEkY6YfmWun+Tsi2psKIQwjYsWzEC4yX3zfQ/zsQQ8d
 YN9MpkiLTWsRZ3QDvEJoOMJXD9aI3aM0f9MjK3lcBGs4P/EnRfJkg+Wke
 HLyx4zgQPig5mbDe8v1YlIMxmZH7S7ayRWrqGWPyj/L7xe/oif++aPquK
 hlhFFIFhRQWNOlqDjpYRNnS435HlUjwye54Xbm5CnOeBoiIgg+TBp7TGZ
 LP2qRbVXN0yXytLAj4obJ9YB1aUamU1jrFYLWSgotxC5oxiLYIkEuc5tj
 Cm27FKgAik1JID/+xCcvI9DNCBPJXoua6lfZdTP/tafmBXrLTQh1oQkLY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="225570955"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="225570955"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 11:23:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="625612298"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2022 11:23:06 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9u4P-000Ct0-Es; Tue, 18 Jan 2022 19:23:05 +0000
Date: Wed, 19 Jan 2022 03:22:20 +0800
From: kernel test robot <lkp@intel.com>
To: David Howells <dhowells@redhat.com>
Subject: [ammarfaizi2-block:dhowells/linux-fs/netfs-lib 19/23] ld:
 fs/cifs/file.o:undefined reference to `netfs_invalidatepage'
Message-ID: <202201190316.hRrB5y0R-lkp@intel.com>
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
head:   e229088c2bc0ba29fdff1bc737506aed6ec50581
commit: eab3170e20c001ee23073a8705db22713b529c21 [19/23] netfs: Provide invalidatepage and releasepage calls
config: x86_64-kexec (https://download.01.org/0day-ci/archive/20220119/202201190316.hRrB5y0R-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/eab3170e20c001ee23073a8705db22713b529c21
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block dhowells/linux-fs/netfs-lib
        git checkout eab3170e20c001ee23073a8705db22713b529c21
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> ld: fs/cifs/file.o:(.rodata+0x288): undefined reference to `netfs_invalidatepage'
>> ld: fs/cifs/file.o:(.rodata+0x290): undefined reference to `netfs_releasepage'
   ld: fs/cifs/file.o:(.rodata+0x348): undefined reference to `netfs_invalidatepage'
   ld: fs/cifs/file.o:(.rodata+0x350): undefined reference to `netfs_releasepage'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
