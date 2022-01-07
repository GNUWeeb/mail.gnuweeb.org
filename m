Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id kBG6DeSC12HFHwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:01:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 6CF3EC17DA;
	Fri,  7 Jan 2022 00:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513697;
	bh=thm1+YZ6OPxbg86e8eD4IJi8OzZcvh8TtvjlG2TvapU=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=IHh78kefu5xpv13+M8McLjjjk8ELFxIJG5eQEZsaS+uI45aCvQK666N8igPk367fK
	 Yhh4hHdAPivyZnFaKwIQvVzrSiCDwZWqNGUXQQ3R1ErdNqJqUn90tKBqmH4ZLUQINx
	 G8mQyyPXgWW6xFwV2AxIr1rhGT0Ynu1yNDMAxjvw8KK4Lhd/XBmPng4g/rc4GJdWG/
	 hXn9zdNH9e6L+FsvE/M3kLJokYTk0vwHgCj3ez1Z9DboZ4sA4MmB+XnlOcOEWuZLDb
	 +0cgg5KqI4Gaa7p07FqCcImzEA7DBkv0frzxUpjU0tqdlnndSiUdMVRFPeXxCgwNUk
	 IqYwEbjXBfukw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id E4084C1662;
 Fri,  7 Jan 2022 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513623;
 bh=zVcijoVrqichYyAtJLimzaz4WltQzNvqW5+uBLx1moE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jonuSsvKid7aFWo09ULcE9X/Ivakjju7B86QHHyLkURJK0RFHNUVvZ0cTMpZB5WpN
 Y4jpBIUuLajgMDhxVEraQe3eFfEUkv+6/gnBv3hh0HZ/5ECMNdfS12E6GTDnsI7QhT
 SHGNcihvMpC+toWsMr5MIva02CRP7Pb3FsQ7mhQEUHn+mn45r3kAMlRLbnoLUevtzH
 DOxXhq8b0GDQnNJv7ppT8v+ueilNy+kI5ADcspCsqja6K5rxR2vK8e0rFUWIBnUgtQ
 U4Rbia8DLXHJP50TFs7UF15PZhWBy6Wk2X13aJVekFBCzsdvB3P4P90aW38U5s0adE
 KN5nkG7Qtrs+w==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [RFC PATCH v4 1/3] io_uring: Rename `io_{send, recv}` to `io_{sendto,
 recvfrom}`
Date: Fri,  7 Jan 2022 07:00:03 +0700
Message-Id: <20220107000006.1194026-2-ammarfaizi2@gnuweeb.org>
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

Currently we can perform `send` and `recv` via io_uring. And now, we
are going to add `sendto` and `recvfrom` support for io_uring.

Note that:
Calling `send(fd, buf, len, flags)` is equivalent to calling
`sendto(fd, buf, len, flags, NULL, 0)`. Therefore, `sendto`
is a superset of `send`.

Calling `recv(fd, buf, len, flags)` is equivalent to calling
`recvfrom(fd, buf, len, flags, NULL, NULL)`. Therefore, `recvfrom`
is a superset of `recv`.

As such, let's direct the current supported `IORING_OP_{SEND,RECV}` to
`io_{sendto,recvfrom}`. These functions will also be used for
`IORING_OP_{SENDTO,RECVFROM}` operation in the next patches.

Cc: Nugra <richiisei@gmail.com>
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---

v4:
  - Rebase the work (sync with "for-next" branch in Jens' tree).

v3:
  - Fix build error when CONFIG_NET is undefined for PATCH 1/3. I
    tried to fix it in PATCH 3/3, but it should be fixed in PATCH 1/3,
    otherwise it breaks the build in PATCH 1/3.

v2:
  - Added Nugra to CC list (tester).

---
---
 fs/io_uring.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/io_uring.c b/fs/io_uring.c
index d5da4a898fe8..5e45e4d6969c 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -4947,7 +4947,7 @@ static int io_sendmsg(struct io_kiocb *req, unsigned int issue_flags)
 	return 0;
 }
 
-static int io_send(struct io_kiocb *req, unsigned int issue_flags)
+static int io_sendto(struct io_kiocb *req, unsigned int issue_flags)
 {
 	struct io_sr_msg *sr = &req->sr_msg;
 	struct msghdr msg;
@@ -5173,7 +5173,7 @@ static int io_recvmsg(struct io_kiocb *req, unsigned int issue_flags)
 	return 0;
 }
 
-static int io_recv(struct io_kiocb *req, unsigned int issue_flags)
+static int io_recvfrom(struct io_kiocb *req, unsigned int issue_flags)
 {
 	struct io_buffer *kbuf;
 	struct io_sr_msg *sr = &req->sr_msg;
@@ -5381,8 +5381,8 @@ IO_NETOP_PREP_ASYNC(sendmsg);
 IO_NETOP_PREP_ASYNC(recvmsg);
 IO_NETOP_PREP_ASYNC(connect);
 IO_NETOP_PREP(accept);
-IO_NETOP_FN(send);
-IO_NETOP_FN(recv);
+IO_NETOP_FN(sendto);
+IO_NETOP_FN(recvfrom);
 #endif /* CONFIG_NET */
 
 struct io_poll_table {
@@ -6710,13 +6710,13 @@ static int io_issue_sqe(struct io_kiocb *req, unsigned int issue_flags)
 		ret = io_sendmsg(req, issue_flags);
 		break;
 	case IORING_OP_SEND:
-		ret = io_send(req, issue_flags);
+		ret = io_sendto(req, issue_flags);
 		break;
 	case IORING_OP_RECVMSG:
 		ret = io_recvmsg(req, issue_flags);
 		break;
 	case IORING_OP_RECV:
-		ret = io_recv(req, issue_flags);
+		ret = io_recvfrom(req, issue_flags);
 		break;
 	case IORING_OP_TIMEOUT:
 		ret = io_timeout(req, issue_flags);
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
