Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id lAgdFDzS2GF7SQQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 23:52:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 637B1C204A;
	Fri,  7 Jan 2022 23:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641599546;
	bh=Ac4MH0pW1g+1tBJp371AnPbyTIpWpEdleEKWTH0Laas=;
	h=From:To:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=ON9ALK3b4VxA8hJiH8mfXEUijKZ+5lF1rPZ2JXrZEMah8HNPk+FPo3aQqsB8oavx1
	 kw4cxlhOw47PmvqrFoatozYTMP6Wk1xEptk0n0kvgoRkctUjm0bRrKxwLLDj4Xamqe
	 ijE7lwzzNc3Lz4vs3vsZbvn8gvbODznKpm8X5cSiTOV8FtqXDC98fvHrFwQh44+18C
	 /LuUlwTfFCMQfrFVttHutjCjVywxOh3UhNT91SPYHjYYfRLe0pQu5Sgm8Zvz8SEwqp
	 RBgFvhEcYI1BhzCfpA8mtNbBL4cpaN3VxvnSgm0xwUlb9AM5pseXDL7t0K1741+5PO
	 j9LMMIGHkMu4g==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 366E2C17A2;
 Fri,  7 Jan 2022 23:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641599544;
 bh=ca4bX+EcjyR4n5K34jrDY96jKXArWt9Pb9enQ9ZUt30=;
 h=From:To:Cc:Subject:Date:From;
 b=lMaBAnZKc8oFO48pca8fTMa0E7HcYQI2bq5HHBxr75synNX2PmFJc3LU713f6Wu5J
 ti4tCjC4BvGXUgqSdZRc8yj4F7jwMDjynErfWpfs7qRCfVNWQONZeGA+L+b0khUWzZ
 cFFEzts9RR3Y9den/EVbfD9KF4mbtsGwEnvjMUxlU/VYkI4PG/ikTlVzhmIzDkQkUI
 K1ZYRITPUd9q5v3R8jjw1E+A82FWYOZraSDJfn6+wHwGb/KqkJ8rCAzf7z/X74tm1K
 wWFQn0TlWrdaO2ppFPp3QaxsmLvBKIkpWUWELnkGHADkSIh8u62GZ37JT0xMFDKs1w
 sW1Qbzdxq15dw==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>
Subject: [PATCH v1 0/3] x86-64 entry documentation and clean up
Date: Sat,  8 Jan 2022 06:52:07 +0700
Message-Id: <20220107235210.1339168-1-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
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
Cc: x86-ml <x86@kernel.org>, GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 lkml <linux-kernel@vger.kernel.org>, Ammar Faizi <ammarfaizi2@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi,

There are 3 patches in this series.

1) Trivial clean up in entry_64.S.
2) Add comment about registers on exit in entry_64.S.
3) Add documentation about registers on entry and exit.

(2) and (3) are based on the discussion we had at:

  https://lore.kernel.org/lkml/alpine.LSU.2.20.2110131601000.26294@wotan.suse.de/

This series is based on commit:

  24556728c305886b8bb05bf2ac7e20cf7db3e314 ("Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm")

Thanks!

Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
Ammar Faizi (3):
  x86/entry/64: Clean up spaces after instruction
  x86/entry/64: Add info about registers on exit
  Documentation: x86-64: Document registers on entry and exit

 Documentation/x86/entry_64.rst | 47 ++++++++++++++++++++++++++++++++++
 arch/x86/entry/entry_64.S      | 27 ++++++++++++++-----
 2 files changed, 67 insertions(+), 7 deletions(-)


base-commit: 24556728c305886b8bb05bf2ac7e20cf7db3e314
-- 
Ammar Faizi

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
