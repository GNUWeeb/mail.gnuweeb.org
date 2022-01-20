Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 6A0EBlWq6WH9YgYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Thu, 20 Jan 2022 18:30:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 67337C2B6A;
	Thu, 20 Jan 2022 18:30:43 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20210112 header.b=IEVUxE7c;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41]) by gnuweeb.org (Postfix) with ESMTPS id 8C068BFB83
 for <gwml@gnuweeb.org>; Thu, 20 Jan 2022 18:30:40 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id p7so8024248iod.2
 for <gwml@gnuweeb.org>; Thu, 20 Jan 2022 10:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hs+eYAP4l3yJ1sRUgicNQKF4hhUGfTUy2AbPqekozFY=;
 b=IEVUxE7cuMIkC/aO3CCIYz+Z3OU2Td/p8tbkpwK6SsvEVxTme1VHOYr0lnjaaLzp6R
 lm74aJPObOU19/KUyrtzby1n5gpkqAMexsG2gsr6xJNJmUFJTG436AOrhFjOp1p4b6pO
 3PHtJ37LsB/eDCc+/Bq1rd8qeFXxlARAwbnQMYLHnaBYtMYAQC8lyotpMaduP1/HUbzA
 XqLHn3zwVa7eVvQXCZXnGgXVMInV4wxILeNLVS78bHxf/YU8rzoqAmHSXgB6ag+Mg/co
 p5MPPUkh+4UOivQxU0dtMScye9wIM/RBiP4mN53W+9DmwX4OwrI8EqXxQoRwK+hgmy/F
 b4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hs+eYAP4l3yJ1sRUgicNQKF4hhUGfTUy2AbPqekozFY=;
 b=C0602UStdxrKnu6AYw2Nym63x/9GurlsuARZEqb9FcLRLDBMOaZWJtThFqb5QKuXdK
 N2nr3mCsEydJOCNHLjX9CMTBlItKuCkRnn1De0OYrVtebkCqcQzEa8xADFbOnsrpvC9P
 qj7EMKRYokcaD0IcqEBEmkpn8IdXm5f9NfkvKK+Yoe6KVefqMVGZcphKyfzpOZd+OG0K
 bCjx98y0psI5YlgcgIHz6EK6Dgq9NvIHs/ME4w7EGm9PPUyzMWyG/PelPKDGaParD1kK
 lCs+SUE7+IJ3Hm/3dinBsi4mdLFE4RY0s5e2Vh00yZZZI5oOXqp71K9ryqrClLqefcvW
 +GFw==
X-Gm-Message-State: AOAM533aQmN25UOpkTJ/5hPWgVd1FHYLqaCvQrOos+2qmSlkb0J8Weor
 l/D2oQyzwR8Aznj/uhpsgDalMCWKnulXm2F0JuMVJA==
X-Google-Smtp-Source: ABdhPJyr+tlbX7UkGBqTCzNtOy7f+uDOqthvnVosd+bU9AdF7PGi3b3EeWEOCGTRCxV0uUyIvCxaTyvRX/hdKMNu2/I=
X-Received: by 2002:a02:6289:: with SMTP id d131mr25740jac.61.1642703438055;
 Thu, 20 Jan 2022 10:30:38 -0800 (PST)
MIME-Version: 1.0
References: <202201170247.Cir3moOM-lkp@intel.com>
 <CAJHvVchPpphLefKEOy_C6+0xrGtA3mNCBzQZ3j2i2RgXX3arXQ@mail.gmail.com>
 <CAJuCfpFEfAxtgCfTU=0Ry6g6c-O4OJypGyE-0M+Ce0TKVSAYqA@mail.gmail.com>
 <CAJHvVciZpSBcQDbqbvwbToo5s2_Q5H2sfr=QAb9UBBWpnD5X-w@mail.gmail.com>
 <CA+EESO7aBYCC2YyW1cCM+ZAdSFhmgAFzv=F832CJLB8R1F=QLQ@mail.gmail.com>
 <CAJHvVciCtcFu9Ep-KJhu1vzn92Oeqf2rFXMw=aKb=0BuMGd4Ww@mail.gmail.com>
 <CA+EESO7byiqapss_tY5mgVd2g8kkXLtLGsSpcnswN3Bw=WVjFA@mail.gmail.com>
In-Reply-To: <CA+EESO7byiqapss_tY5mgVd2g8kkXLtLGsSpcnswN3Bw=WVjFA@mail.gmail.com>
From: Axel Rasmussen <axelrasmussen@google.com>
Date: Thu, 20 Jan 2022 10:30:02 -0800
Message-ID: <CAJHvVciRagsKfgdKcDFcrUtJCA+OujsWPzJb0WriE80VSHT4Ew@mail.gmail.com>
Subject: Re: [ammarfaizi2-block:google/android/kernel/common/android12-5.4
 6517/9999] fs/userfaultfd.c:1519:9: warning: variable 'ioctls_out' set but
 not used
To: Lokesh Gidra <lokeshgidra@google.com>
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 llvm@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>,
 Peter Xu <peterx@redhat.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Kalesh Singh <kaleshsingh@google.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suren Baghdasaryan <surenb@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On Thu, Jan 20, 2022 at 10:16 AM Lokesh Gidra <lokeshgidra@google.com> wrote:
>
> Thanks a lot for confirming. I hope I have not screwed up like this
> anywhere else.

No worries!

For what it's worth, I don't think this is *that* bad of a bug for
Android. It would mean, if we were using userfaultfd's feature
detection, we might mistakenly think UFFDIO_CONTINUE was not
available. But since Android has more direct control over userspace +
kernel than arbitrary Linux systems, I suspect your userspace code
doesn't really rely on the feature detection userfaultfd itself
provides? So, it may have not actually mattered to us in practice
anyway.

Still better to be fully correct. ;) But, could have been worse.

>
> On Thu, Jan 20, 2022 at 10:15 AM Axel Rasmussen
> <axelrasmussen@google.com> wrote:
> >
> > On Wed, Jan 19, 2022 at 2:11 PM Lokesh Gidra <lokeshgidra@google.com> wrote:
> > >
> > > On Wed, Jan 19, 2022 at 2:03 PM Axel Rasmussen <axelrasmussen@google.com> wrote:
> > > >
> > > > On Wed, Jan 19, 2022 at 1:19 PM Suren Baghdasaryan <surenb@google.com> wrote:
> > > > >
> > > > > On Wed, Jan 19, 2022 at 12:39 PM Axel Rasmussen
> > > > > <axelrasmussen@google.com> wrote:
> > > > > >
> > > > > > Lokesh, I only spent a few moments looking, but my suspicion is that
> > > > > > this is the result of an incomplete backport of these patches to the
> > > > > > Android kernel?
> > > > > >
> > > > > > The UFFDIO_CONTINUE patches introduced ioctls_out since the
> > > > > > computation of it got more complicated, and those same patches also
> > > > > > modified the put_user() on line 1533 here to use ioctls_out. I think
> > > > > > Android backported the first part, but left out the second?
> > > > >
> > > > > The backport https://android-review.googlesource.com/c/kernel/common/+/1652718
> > > > > looks like a mixture of
> > > > > 14819305e09fe4 ("userfaultfd: wp: declare _UFFDIO_WRITEPROTECT
> > > > > conditionally") and f619147104c8 ("userfaultfd: add UFFDIO_CONTINUE
> > > > > ioctl").
> > > > > Not sure why it was done this way, maybe to minimize code changes
> > > > > while backporting.
> > > > > Simplest fix is probably to add __maybe_unused to ioctls_out declaration.
> > > >
> > > > Unfortunately, that doesn't quite do it. That would fix the warning,
> > > > but the code in the original e-mail is still wrong: we incorrectly
> > > > don't report the _UFFDIO_CONTINUE bit, unless we use the value we
> > > > computed in ioctls_out.
> > >
> > > Apologies for the screw up. Actually, since 5.4 kernel didn't already
> > > have UFFD_WRITE_PROTECT feature and neither was I interested in it, so
> > > I attempted to only backport UFFDIO_CONTINUE feature and there
> > > mistakenly missed this one out.
> > >
> > > Axel, wouldn't doing what Peter did in the following patch the right
> > > thing to do?
> > > https://lore.kernel.org/lkml/20200220163112.11409-18-peterx@redhat.com/
> > >
> > > Basically:
> > >
> > > - if (put_user(basic_ioctls ? UFFD_API_RANGE_IOCTLS_BASIC :
> > > -     UFFD_API_RANGE_IOCTLS,
> > > -     &user_uffdio_register->ioctls))
> > > + if (put_user(ioctls_out, &user_uffdio_register->ioctls))
> >
> > Exactly right, that's the solution. And, I believe Kalesh has now
> > applied exactly that to the Android tree here:
> > https://android-review.googlesource.com/c/kernel/common/+/1955138 - so
> > once that's merged, we can consider this fixed.
> >
> > >
> > >
> > > >
> > > > >
> > > > > >
> > > > > > On Sun, Jan 16, 2022 at 10:11 AM kernel test robot <lkp@intel.com> wrote:
> > > > > > >
> > > > > > > Hi Axel,
> > > > > > >
> > > > > > > FYI, the error/warning still remains.
> > > > > > >
> > > > > > > tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android12-5.4
> > > > > > > head:   bdf17ba628090156b539b1474eb5c636eeaf571b
> > > > > > > commit: b69f713e60d03ae448e5c9fd92e5b0b193dea7be [6517/9999] BACKPORT: FROMGIT: userfaultfd: add UFFDIO_CONTINUE ioctl
> > > > > > > config: x86_64-randconfig-a012 (https://download.01.org/0day-ci/archive/20220117/202201170247.Cir3moOM-lkp@intel.com/config)
> > > > > > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project c63a3175c2947e8c1a2d3bbe16a8586600705c54)
> > > > > > > reproduce (this is a W=1 build):
> > > > > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > > > >         chmod +x ~/bin/make.cross
> > > > > > >         # https://github.com/ammarfaizi2/linux-block/commit/b69f713e60d03ae448e5c9fd92e5b0b193dea7be
> > > > > > >         git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
> > > > > > >         git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android12-5.4
> > > > > > >         git checkout b69f713e60d03ae448e5c9fd92e5b0b193dea7be
> > > > > > >         # save the config file to linux build tree
> > > > > > >         mkdir build_dir
> > > > > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash
> > > > > > >
> > > > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > > >
> > > > > > > All warnings (new ones prefixed by >>):
> > > > > > >
> > > > > > > >> fs/userfaultfd.c:1519:9: warning: variable 'ioctls_out' set but not used [-Wunused-but-set-variable]
> > > > > > >                    __u64 ioctls_out;
> > > > > > >                          ^
> > > > > > >    1 warning generated.
> > > > > > >
> > > > > > >
> > > > > > > vim +/ioctls_out +1519 fs/userfaultfd.c
> > > > > > >
> > > > > > >   1311
> > > > > > >   1312  static int userfaultfd_register(struct userfaultfd_ctx *ctx,
> > > > > > >   1313                                  unsigned long arg)
> > > > > > >   1314  {
> > > > > > >   1315          struct mm_struct *mm = ctx->mm;
> > > > > > >   1316          struct vm_area_struct *vma, *prev, *cur;
> > > > > > >   1317          int ret;
> > > > > > >   1318          struct uffdio_register uffdio_register;
> > > > > > >   1319          struct uffdio_register __user *user_uffdio_register;
> > > > > > >   1320          unsigned long vm_flags, new_flags;
> > > > > > >   1321          bool found;
> > > > > > >   1322          bool basic_ioctls;
> > > > > > >   1323          unsigned long start, end, vma_end;
> > > > > > >   1324
> > > > > > >   1325          user_uffdio_register = (struct uffdio_register __user *) arg;
> > > > > > >   1326
> > > > > > >   1327          ret = -EFAULT;
> > > > > > >   1328          if (copy_from_user(&uffdio_register, user_uffdio_register,
> > > > > > >   1329                             sizeof(uffdio_register)-sizeof(__u64)))
> > > > > > >   1330                  goto out;
> > > > > > >   1331
> > > > > > >   1332          ret = -EINVAL;
> > > > > > >   1333          if (!uffdio_register.mode)
> > > > > > >   1334                  goto out;
> > > > > > >   1335          if (uffdio_register.mode & ~UFFD_API_REGISTER_MODES)
> > > > > > >   1336                  goto out;
> > > > > > >   1337          vm_flags = 0;
> > > > > > >   1338          if (uffdio_register.mode & UFFDIO_REGISTER_MODE_MISSING)
> > > > > > >   1339                  vm_flags |= VM_UFFD_MISSING;
> > > > > > >   1340          if (uffdio_register.mode & UFFDIO_REGISTER_MODE_WP) {
> > > > > > >   1341                  vm_flags |= VM_UFFD_WP;
> > > > > > >   1342                  /*
> > > > > > >   1343                   * FIXME: remove the below error constraint by
> > > > > > >   1344                   * implementing the wprotect tracking mode.
> > > > > > >   1345                   */
> > > > > > >   1346                  ret = -EINVAL;
> > > > > > >   1347                  goto out;
> > > > > > >   1348          }
> > > > > > >   1349          if (uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR) {
> > > > > > >   1350  #ifndef CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
> > > > > > >   1351                  goto out;
> > > > > > >   1352  #endif
> > > > > > >   1353                  vm_flags |= VM_UFFD_MINOR;
> > > > > > >   1354          }
> > > > > > >   1355
> > > > > > >   1356          ret = validate_range(mm, &uffdio_register.range.start,
> > > > > > >   1357                               uffdio_register.range.len);
> > > > > > >   1358          if (ret)
> > > > > > >   1359                  goto out;
> > > > > > >   1360
> > > > > > >   1361          start = uffdio_register.range.start;
> > > > > > >   1362          end = start + uffdio_register.range.len;
> > > > > > >   1363
> > > > > > >   1364          ret = -ENOMEM;
> > > > > > >   1365          if (!mmget_not_zero(mm))
> > > > > > >   1366                  goto out;
> > > > > > >   1367
> > > > > > >   1368          down_write(&mm->mmap_sem);
> > > > > > >   1369          if (!mmget_still_valid(mm))
> > > > > > >   1370                  goto out_unlock;
> > > > > > >   1371          vma = find_vma_prev(mm, start, &prev);
> > > > > > >   1372          if (!vma)
> > > > > > >   1373                  goto out_unlock;
> > > > > > >   1374
> > > > > > >   1375          /* check that there's at least one vma in the range */
> > > > > > >   1376          ret = -EINVAL;
> > > > > > >   1377          if (vma->vm_start >= end)
> > > > > > >   1378                  goto out_unlock;
> > > > > > >   1379
> > > > > > >   1380          /*
> > > > > > >   1381           * If the first vma contains huge pages, make sure start address
> > > > > > >   1382           * is aligned to huge page size.
> > > > > > >   1383           */
> > > > > > >   1384          if (is_vm_hugetlb_page(vma)) {
> > > > > > >   1385                  unsigned long vma_hpagesize = vma_kernel_pagesize(vma);
> > > > > > >   1386
> > > > > > >   1387                  if (start & (vma_hpagesize - 1))
> > > > > > >   1388                          goto out_unlock;
> > > > > > >   1389          }
> > > > > > >   1390
> > > > > > >   1391          /*
> > > > > > >   1392           * Search for not compatible vmas.
> > > > > > >   1393           */
> > > > > > >   1394          found = false;
> > > > > > >   1395          basic_ioctls = false;
> > > > > > >   1396          for (cur = vma; cur && cur->vm_start < end; cur = cur->vm_next) {
> > > > > > >   1397                  cond_resched();
> > > > > > >   1398
> > > > > > >   1399                  BUG_ON(!!cur->vm_userfaultfd_ctx.ctx ^
> > > > > > >   1400                         !!(cur->vm_flags & __VM_UFFD_FLAGS));
> > > > > > >   1401
> > > > > > >   1402                  /* check not compatible vmas */
> > > > > > >   1403                  ret = -EINVAL;
> > > > > > >   1404                  if (!vma_can_userfault(cur, vm_flags))
> > > > > > >   1405                          goto out_unlock;
> > > > > > >   1406
> > > > > > >   1407                  /*
> > > > > > >   1408                   * UFFDIO_COPY will fill file holes even without
> > > > > > >   1409                   * PROT_WRITE. This check enforces that if this is a
> > > > > > >   1410                   * MAP_SHARED, the process has write permission to the backing
> > > > > > >   1411                   * file. If VM_MAYWRITE is set it also enforces that on a
> > > > > > >   1412                   * MAP_SHARED vma: there is no F_WRITE_SEAL and no further
> > > > > > >   1413                   * F_WRITE_SEAL can be taken until the vma is destroyed.
> > > > > > >   1414                   */
> > > > > > >   1415                  ret = -EPERM;
> > > > > > >   1416                  if (unlikely(!(cur->vm_flags & VM_MAYWRITE)))
> > > > > > >   1417                          goto out_unlock;
> > > > > > >   1418
> > > > > > >   1419                  /*
> > > > > > >   1420                   * If this vma contains ending address, and huge pages
> > > > > > >   1421                   * check alignment.
> > > > > > >   1422                   */
> > > > > > >   1423                  if (is_vm_hugetlb_page(cur) && end <= cur->vm_end &&
> > > > > > >   1424                      end > cur->vm_start) {
> > > > > > >   1425                          unsigned long vma_hpagesize = vma_kernel_pagesize(cur);
> > > > > > >   1426
> > > > > > >   1427                          ret = -EINVAL;
> > > > > > >   1428
> > > > > > >   1429                          if (end & (vma_hpagesize - 1))
> > > > > > >   1430                                  goto out_unlock;
> > > > > > >   1431                  }
> > > > > > >   1432
> > > > > > >   1433                  /*
> > > > > > >   1434                   * Check that this vma isn't already owned by a
> > > > > > >   1435                   * different userfaultfd. We can't allow more than one
> > > > > > >   1436                   * userfaultfd to own a single vma simultaneously or we
> > > > > > >   1437                   * wouldn't know which one to deliver the userfaults to.
> > > > > > >   1438                   */
> > > > > > >   1439                  ret = -EBUSY;
> > > > > > >   1440                  if (cur->vm_userfaultfd_ctx.ctx &&
> > > > > > >   1441                      cur->vm_userfaultfd_ctx.ctx != ctx)
> > > > > > >   1442                          goto out_unlock;
> > > > > > >   1443
> > > > > > >   1444                  /*
> > > > > > >   1445                   * Note vmas containing huge pages
> > > > > > >   1446                   */
> > > > > > >   1447                  if (is_vm_hugetlb_page(cur))
> > > > > > >   1448                          basic_ioctls = true;
> > > > > > >   1449
> > > > > > >   1450                  found = true;
> > > > > > >   1451          }
> > > > > > >   1452          BUG_ON(!found);
> > > > > > >   1453
> > > > > > >   1454          if (vma->vm_start < start)
> > > > > > >   1455                  prev = vma;
> > > > > > >   1456
> > > > > > >   1457          ret = 0;
> > > > > > >   1458          do {
> > > > > > >   1459                  cond_resched();
> > > > > > >   1460
> > > > > > >   1461                  BUG_ON(!vma_can_userfault(vma, vm_flags));
> > > > > > >   1462                  BUG_ON(vma->vm_userfaultfd_ctx.ctx &&
> > > > > > >   1463                         vma->vm_userfaultfd_ctx.ctx != ctx);
> > > > > > >   1464                  WARN_ON(!(vma->vm_flags & VM_MAYWRITE));
> > > > > > >   1465
> > > > > > >   1466                  /*
> > > > > > >   1467                   * Nothing to do: this vma is already registered into this
> > > > > > >   1468                   * userfaultfd and with the right tracking mode too.
> > > > > > >   1469                   */
> > > > > > >   1470                  if (vma->vm_userfaultfd_ctx.ctx == ctx &&
> > > > > > >   1471                      (vma->vm_flags & vm_flags) == vm_flags)
> > > > > > >   1472                          goto skip;
> > > > > > >   1473
> > > > > > >   1474                  if (vma->vm_start > start)
> > > > > > >   1475                          start = vma->vm_start;
> > > > > > >   1476                  vma_end = min(end, vma->vm_end);
> > > > > > >   1477
> > > > > > >   1478                  new_flags = (vma->vm_flags & ~__VM_UFFD_FLAGS) | vm_flags;
> > > > > > >   1479                  prev = vma_merge(mm, prev, start, vma_end, new_flags,
> > > > > > >   1480                                   vma->anon_vma, vma->vm_file, vma->vm_pgoff,
> > > > > > >   1481                                   vma_policy(vma),
> > > > > > >   1482                                   ((struct vm_userfaultfd_ctx){ ctx }),
> > > > > > >   1483                                   vma_get_anon_name(vma));
> > > > > > >   1484                  if (prev) {
> > > > > > >   1485                          vma = prev;
> > > > > > >   1486                          goto next;
> > > > > > >   1487                  }
> > > > > > >   1488                  if (vma->vm_start < start) {
> > > > > > >   1489                          ret = split_vma(mm, vma, start, 1);
> > > > > > >   1490                          if (ret)
> > > > > > >   1491                                  break;
> > > > > > >   1492                  }
> > > > > > >   1493                  if (vma->vm_end > end) {
> > > > > > >   1494                          ret = split_vma(mm, vma, end, 0);
> > > > > > >   1495                          if (ret)
> > > > > > >   1496                                  break;
> > > > > > >   1497                  }
> > > > > > >   1498          next:
> > > > > > >   1499                  /*
> > > > > > >   1500                   * In the vma_merge() successful mprotect-like case 8:
> > > > > > >   1501                   * the next vma was merged into the current one and
> > > > > > >   1502                   * the current one has not been updated yet.
> > > > > > >   1503                   */
> > > > > > >   1504                  vma->vm_flags = new_flags;
> > > > > > >   1505                  vma->vm_userfaultfd_ctx.ctx = ctx;
> > > > > > >   1506
> > > > > > >   1507                  if (is_vm_hugetlb_page(vma) && uffd_disable_huge_pmd_share(vma))
> > > > > > >   1508                          hugetlb_unshare_all_pmds(vma);
> > > > > > >   1509
> > > > > > >   1510          skip:
> > > > > > >   1511                  prev = vma;
> > > > > > >   1512                  start = vma->vm_end;
> > > > > > >   1513                  vma = vma->vm_next;
> > > > > > >   1514          } while (vma && vma->vm_start < end);
> > > > > > >   1515  out_unlock:
> > > > > > >   1516          up_write(&mm->mmap_sem);
> > > > > > >   1517          mmput(mm);
> > > > > > >   1518          if (!ret) {
> > > > > > > > 1519                  __u64 ioctls_out;
> > > > > > >   1520
> > > > > > >   1521                  ioctls_out = basic_ioctls ? UFFD_API_RANGE_IOCTLS_BASIC :
> > > > > > >   1522                      UFFD_API_RANGE_IOCTLS;
> > > > > > >   1523
> > > > > > >   1524                  /* CONTINUE ioctl is only supported for MINOR ranges. */
> > > > > > >   1525                  if (!(uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR))
> > > > > > >   1526                          ioctls_out &= ~((__u64)1 << _UFFDIO_CONTINUE);
> > > > > > >   1527
> > > > > > >   1528                  /*
> > > > > > >   1529                   * Now that we scanned all vmas we can already tell
> > > > > > >   1530                   * userland which ioctls methods are guaranteed to
> > > > > > >   1531                   * succeed on this range.
> > > > > > >   1532                   */
> > > > > > >   1533                  if (put_user(basic_ioctls ? UFFD_API_RANGE_IOCTLS_BASIC :
> > > > > > >   1534                               UFFD_API_RANGE_IOCTLS,
> > > > > > >   1535                               &user_uffdio_register->ioctls))
> > > > > > >   1536                          ret = -EFAULT;
> > > > > > >   1537          }
> > > > > > >   1538  out:
> > > > > > >   1539          return ret;
> > > > > > >   1540  }
> > > > > > >   1541
> > > > > > >
> > > > > > > ---
> > > > > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > > > > >
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
