Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id CIJ0Fclf5GFKvAUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 16 Jan 2022 18:11:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 9C83FC16FF;
	Sun, 16 Jan 2022 18:11:19 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=RkPjwr+M;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gnuweeb.org (Postfix) with ESMTPS id 8FA61C1696
 for <gwml@gnuweeb.org>; Sun, 16 Jan 2022 18:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642356677; x=1673892677;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=BI/kSRsR+AC4ZYLXLbuKliItqJFlMvu1oqx1oEPBFzs=;
 b=RkPjwr+MryzQj8p4RCahArCht4I098k6IAv/iVQ9NtJ6ymYjRmIuxgmA
 jccAPwzjvu2oOzt3kb/DNd4uy+prfngdmgcm33ZTmja7i47R6WisZoUEW
 WeUrFZbShvOeT0bj2yFuALnmLJ8BdgPPOltjmqL1Mj7f19dwCYboKrdz4
 c5NT7cEbIfGu3CAc33hN6+9cN9g/OT1KJczwhO/MsMXxeBbVQlhppa1kl
 gC/oVRy07CqNrWEoZIdNyYPz/limSBlVxz5ibeI70QXIbGiAugYmrPcwp
 h8vLVDbYeVZ1YjpeXPGXjqaY896mEvtkufRMo7FI2PBW3SjI4roUqlyjo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10228"; a="242065190"
X-IronPort-AV: E=Sophos;i="5.88,293,1635231600"; d="scan'208";a="242065190"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2022 10:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,293,1635231600"; d="scan'208";a="671351376"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jan 2022 10:11:13 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n99zk-000Atw-AD; Sun, 16 Jan 2022 18:11:12 +0000
Date: Mon, 17 Jan 2022 02:10:34 +0800
From: kernel test robot <lkp@intel.com>
To: Axel Rasmussen <axelrasmussen@google.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android12-5.4
 6517/9999] fs/userfaultfd.c:1519:9: warning: variable 'ioctls_out' set but
 not used
Message-ID: <202201170247.Cir3moOM-lkp@intel.com>
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
 linux-kernel@vger.kernel.org, Peter Xu <peterx@redhat.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Lokesh Gidra <lokeshgidra@google.com>, kbuild-all@lists.01.org,
 Andrew Morton <akpm@linux-foundation.org>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Axel,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android12-5.4
head:   bdf17ba628090156b539b1474eb5c636eeaf571b
commit: b69f713e60d03ae448e5c9fd92e5b0b193dea7be [6517/9999] BACKPORT: FROMGIT: userfaultfd: add UFFDIO_CONTINUE ioctl
config: x86_64-randconfig-a012 (https://download.01.org/0day-ci/archive/20220117/202201170247.Cir3moOM-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project c63a3175c2947e8c1a2d3bbe16a8586600705c54)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/b69f713e60d03ae448e5c9fd92e5b0b193dea7be
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android12-5.4
        git checkout b69f713e60d03ae448e5c9fd92e5b0b193dea7be
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/userfaultfd.c:1519:9: warning: variable 'ioctls_out' set but not used [-Wunused-but-set-variable]
                   __u64 ioctls_out;
                         ^
   1 warning generated.


vim +/ioctls_out +1519 fs/userfaultfd.c

  1311	
  1312	static int userfaultfd_register(struct userfaultfd_ctx *ctx,
  1313					unsigned long arg)
  1314	{
  1315		struct mm_struct *mm = ctx->mm;
  1316		struct vm_area_struct *vma, *prev, *cur;
  1317		int ret;
  1318		struct uffdio_register uffdio_register;
  1319		struct uffdio_register __user *user_uffdio_register;
  1320		unsigned long vm_flags, new_flags;
  1321		bool found;
  1322		bool basic_ioctls;
  1323		unsigned long start, end, vma_end;
  1324	
  1325		user_uffdio_register = (struct uffdio_register __user *) arg;
  1326	
  1327		ret = -EFAULT;
  1328		if (copy_from_user(&uffdio_register, user_uffdio_register,
  1329				   sizeof(uffdio_register)-sizeof(__u64)))
  1330			goto out;
  1331	
  1332		ret = -EINVAL;
  1333		if (!uffdio_register.mode)
  1334			goto out;
  1335		if (uffdio_register.mode & ~UFFD_API_REGISTER_MODES)
  1336			goto out;
  1337		vm_flags = 0;
  1338		if (uffdio_register.mode & UFFDIO_REGISTER_MODE_MISSING)
  1339			vm_flags |= VM_UFFD_MISSING;
  1340		if (uffdio_register.mode & UFFDIO_REGISTER_MODE_WP) {
  1341			vm_flags |= VM_UFFD_WP;
  1342			/*
  1343			 * FIXME: remove the below error constraint by
  1344			 * implementing the wprotect tracking mode.
  1345			 */
  1346			ret = -EINVAL;
  1347			goto out;
  1348		}
  1349		if (uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR) {
  1350	#ifndef CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
  1351			goto out;
  1352	#endif
  1353			vm_flags |= VM_UFFD_MINOR;
  1354		}
  1355	
  1356		ret = validate_range(mm, &uffdio_register.range.start,
  1357				     uffdio_register.range.len);
  1358		if (ret)
  1359			goto out;
  1360	
  1361		start = uffdio_register.range.start;
  1362		end = start + uffdio_register.range.len;
  1363	
  1364		ret = -ENOMEM;
  1365		if (!mmget_not_zero(mm))
  1366			goto out;
  1367	
  1368		down_write(&mm->mmap_sem);
  1369		if (!mmget_still_valid(mm))
  1370			goto out_unlock;
  1371		vma = find_vma_prev(mm, start, &prev);
  1372		if (!vma)
  1373			goto out_unlock;
  1374	
  1375		/* check that there's at least one vma in the range */
  1376		ret = -EINVAL;
  1377		if (vma->vm_start >= end)
  1378			goto out_unlock;
  1379	
  1380		/*
  1381		 * If the first vma contains huge pages, make sure start address
  1382		 * is aligned to huge page size.
  1383		 */
  1384		if (is_vm_hugetlb_page(vma)) {
  1385			unsigned long vma_hpagesize = vma_kernel_pagesize(vma);
  1386	
  1387			if (start & (vma_hpagesize - 1))
  1388				goto out_unlock;
  1389		}
  1390	
  1391		/*
  1392		 * Search for not compatible vmas.
  1393		 */
  1394		found = false;
  1395		basic_ioctls = false;
  1396		for (cur = vma; cur && cur->vm_start < end; cur = cur->vm_next) {
  1397			cond_resched();
  1398	
  1399			BUG_ON(!!cur->vm_userfaultfd_ctx.ctx ^
  1400			       !!(cur->vm_flags & __VM_UFFD_FLAGS));
  1401	
  1402			/* check not compatible vmas */
  1403			ret = -EINVAL;
  1404			if (!vma_can_userfault(cur, vm_flags))
  1405				goto out_unlock;
  1406	
  1407			/*
  1408			 * UFFDIO_COPY will fill file holes even without
  1409			 * PROT_WRITE. This check enforces that if this is a
  1410			 * MAP_SHARED, the process has write permission to the backing
  1411			 * file. If VM_MAYWRITE is set it also enforces that on a
  1412			 * MAP_SHARED vma: there is no F_WRITE_SEAL and no further
  1413			 * F_WRITE_SEAL can be taken until the vma is destroyed.
  1414			 */
  1415			ret = -EPERM;
  1416			if (unlikely(!(cur->vm_flags & VM_MAYWRITE)))
  1417				goto out_unlock;
  1418	
  1419			/*
  1420			 * If this vma contains ending address, and huge pages
  1421			 * check alignment.
  1422			 */
  1423			if (is_vm_hugetlb_page(cur) && end <= cur->vm_end &&
  1424			    end > cur->vm_start) {
  1425				unsigned long vma_hpagesize = vma_kernel_pagesize(cur);
  1426	
  1427				ret = -EINVAL;
  1428	
  1429				if (end & (vma_hpagesize - 1))
  1430					goto out_unlock;
  1431			}
  1432	
  1433			/*
  1434			 * Check that this vma isn't already owned by a
  1435			 * different userfaultfd. We can't allow more than one
  1436			 * userfaultfd to own a single vma simultaneously or we
  1437			 * wouldn't know which one to deliver the userfaults to.
  1438			 */
  1439			ret = -EBUSY;
  1440			if (cur->vm_userfaultfd_ctx.ctx &&
  1441			    cur->vm_userfaultfd_ctx.ctx != ctx)
  1442				goto out_unlock;
  1443	
  1444			/*
  1445			 * Note vmas containing huge pages
  1446			 */
  1447			if (is_vm_hugetlb_page(cur))
  1448				basic_ioctls = true;
  1449	
  1450			found = true;
  1451		}
  1452		BUG_ON(!found);
  1453	
  1454		if (vma->vm_start < start)
  1455			prev = vma;
  1456	
  1457		ret = 0;
  1458		do {
  1459			cond_resched();
  1460	
  1461			BUG_ON(!vma_can_userfault(vma, vm_flags));
  1462			BUG_ON(vma->vm_userfaultfd_ctx.ctx &&
  1463			       vma->vm_userfaultfd_ctx.ctx != ctx);
  1464			WARN_ON(!(vma->vm_flags & VM_MAYWRITE));
  1465	
  1466			/*
  1467			 * Nothing to do: this vma is already registered into this
  1468			 * userfaultfd and with the right tracking mode too.
  1469			 */
  1470			if (vma->vm_userfaultfd_ctx.ctx == ctx &&
  1471			    (vma->vm_flags & vm_flags) == vm_flags)
  1472				goto skip;
  1473	
  1474			if (vma->vm_start > start)
  1475				start = vma->vm_start;
  1476			vma_end = min(end, vma->vm_end);
  1477	
  1478			new_flags = (vma->vm_flags & ~__VM_UFFD_FLAGS) | vm_flags;
  1479			prev = vma_merge(mm, prev, start, vma_end, new_flags,
  1480					 vma->anon_vma, vma->vm_file, vma->vm_pgoff,
  1481					 vma_policy(vma),
  1482					 ((struct vm_userfaultfd_ctx){ ctx }),
  1483					 vma_get_anon_name(vma));
  1484			if (prev) {
  1485				vma = prev;
  1486				goto next;
  1487			}
  1488			if (vma->vm_start < start) {
  1489				ret = split_vma(mm, vma, start, 1);
  1490				if (ret)
  1491					break;
  1492			}
  1493			if (vma->vm_end > end) {
  1494				ret = split_vma(mm, vma, end, 0);
  1495				if (ret)
  1496					break;
  1497			}
  1498		next:
  1499			/*
  1500			 * In the vma_merge() successful mprotect-like case 8:
  1501			 * the next vma was merged into the current one and
  1502			 * the current one has not been updated yet.
  1503			 */
  1504			vma->vm_flags = new_flags;
  1505			vma->vm_userfaultfd_ctx.ctx = ctx;
  1506	
  1507			if (is_vm_hugetlb_page(vma) && uffd_disable_huge_pmd_share(vma))
  1508				hugetlb_unshare_all_pmds(vma);
  1509	
  1510		skip:
  1511			prev = vma;
  1512			start = vma->vm_end;
  1513			vma = vma->vm_next;
  1514		} while (vma && vma->vm_start < end);
  1515	out_unlock:
  1516		up_write(&mm->mmap_sem);
  1517		mmput(mm);
  1518		if (!ret) {
> 1519			__u64 ioctls_out;
  1520	
  1521			ioctls_out = basic_ioctls ? UFFD_API_RANGE_IOCTLS_BASIC :
  1522			    UFFD_API_RANGE_IOCTLS;
  1523	
  1524			/* CONTINUE ioctl is only supported for MINOR ranges. */
  1525			if (!(uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR))
  1526				ioctls_out &= ~((__u64)1 << _UFFDIO_CONTINUE);
  1527	
  1528			/*
  1529			 * Now that we scanned all vmas we can already tell
  1530			 * userland which ioctls methods are guaranteed to
  1531			 * succeed on this range.
  1532			 */
  1533			if (put_user(basic_ioctls ? UFFD_API_RANGE_IOCTLS_BASIC :
  1534				     UFFD_API_RANGE_IOCTLS,
  1535				     &user_uffdio_register->ioctls))
  1536				ret = -EFAULT;
  1537		}
  1538	out:
  1539		return ret;
  1540	}
  1541	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
