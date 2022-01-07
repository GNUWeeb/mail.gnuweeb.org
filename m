Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id YNXhJOWC12HCHwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:01:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id DF60CC17D4;
	Fri,  7 Jan 2022 00:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513697;
	bh=LI4sFgIrsFwQyCyFNRtUOOj826zqQbRBS4KA1zYu4kA=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=H5WdVk1909Odr4Z9C7vT0QQTx2HF0QT0MM5d+DG5AIwNMVy5aM/qEb9+solKaYR/H
	 qFKES/QwQASFYqCdAHv0YjKReX3AXATI52h+zMrjLP4dR1cRhOZ+cZiwgc0NpE3T7+
	 MShzup0HKlA+K0CBaaOSGaD+ojc1xl//2BE9C5GnK+7EfbUt9OhicsfAigF4HHFbkj
	 DxuUFQ2n59vcbDkESWIxESz565g428N/k35spF2FZ1b2uf2FgacmjGcfK4wTA2G3ci
	 u3LPPAMjjYYtMlTZniK2oFLSkd2XMHYRwceRryvZ6IrdBYvEd/umFxz9/SXVVuwFRT
	 MyNwieITq9Gkw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 575FCC17B7;
 Fri,  7 Jan 2022 00:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513623;
 bh=WzZ3THiNZ134dV91EsO3hDKhoOTzDcbFpG9HFQHAhJk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HGsgKQxjkRKN8/+wDKpCyl7VHvQLMo5iNUpPpDlWMeZRMTh/CSPkwIIrR5dsMEH2f
 rKfvWHjFwTTwx/FKloWxxN3VFy/NEEmuuUOfSpC5yuuclzri1x8LarrNe4AuFSdywc
 34dHqjfoynxVeMXKjxV7Z7r70lM9/uNO89YsgalZWnoKGXPgzwShioXDbsW6qKXFqb
 MviLqisFAesc3rRyRrBzCFL0X6SXiTkbO37Vg7353gh2/HdolQypeNkVs+aYhaKSsM
 KD2fFiUqoinaY6csLzxDjDucFCDRQqf2Dqm2HuPhW+GGOliYVkaW1vQeVLgrEWGZ4Q
 G6dz0GD16cI8g==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [RFC PATCH v4 2/3] net: Make `move_addr_to_user()` be a non static
 function
Date: Fri,  7 Jan 2022 07:00:04 +0700
Message-Id: <20220107000006.1194026-3-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
References: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 07 Jan 2022 00:01:34 +0000
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>,
 netdev Mailing List <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 io-uring Mailing List <io-uring@vger.kernel.org>,
 Praveen Kumar <kpraveen.lkml@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Nugra <richiisei@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Pavel Begunkov <asml.silence@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

In order to add recvfrom support for io_uring, we need to call
`move_addr_to_user()` from fs/io_uring.c.

This makes `move_addr_to_user()` be a non static function so we can
call it from io_uring.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: Nugra <richiisei@gmail.com>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---

v4:
  * No changes *

v3:
  * No changes *

v2:
  - Added Nugra to CC list (tester).

---
---
 include/linux/socket.h | 2 ++
 net/socket.c           | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/socket.h b/include/linux/socket.h
index 8ef26d89ef49..0d0bc1ace50c 100644
--- a/include/linux/socket.h
+++ b/include/linux/socket.h
@@ -371,6 +371,8 @@ struct ucred {
 #define IPX_TYPE	1
 
 extern int move_addr_to_kernel(void __user *uaddr, int ulen, struct sockaddr_storage *kaddr);
+extern int move_addr_to_user(struct sockaddr_storage *kaddr, int klen,
+			     void __user *uaddr, int __user *ulen);
 extern int put_cmsg(struct msghdr*, int level, int type, int len, void *data);
 
 struct timespec64;
diff --git a/net/socket.c b/net/socket.c
index 7f64a6eccf63..af521d351c8a 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -267,8 +267,8 @@ int move_addr_to_kernel(void __user *uaddr, int ulen, struct sockaddr_storage *k
  *	specified. Zero is returned for a success.
  */
 
-static int move_addr_to_user(struct sockaddr_storage *kaddr, int klen,
-			     void __user *uaddr, int __user *ulen)
+int move_addr_to_user(struct sockaddr_storage *kaddr, int klen,
+		      void __user *uaddr, int __user *ulen)
 {
 	int err;
 	int len;
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
