Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id F3eHNew52GEbOAQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 13:02:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 306FDC17F2;
	Fri,  7 Jan 2022 13:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641560556;
	bh=x30iPU90alVlS63XoWTM9jSd48DKerwSyseaQY4nZuU=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=TTo/LTF3SwQge3NE0BeBLC41EdYcPSKXdMBkWzkxnWkybH9lx8UYdgINidEXryphw
	 94SCgfZirrONpgPi5NmLpnUn0S+85eLT0KwNYt13YGx0hVbFIGiRrvUdCRBnrX4+Dy
	 rPD8nDZLh5EBUpPAE0e3tbZp0DU3fdIeEyGRKMk3lfvzUjYWXPdbyQ1dVQviqWyDY3
	 m8ogE9LtdnoIPHxrr4nA0zECEP8LftD9xdpTp24dhvt+DYiHIgHqL9E4YN5u7Zdupv
	 dgqIYdbsat2BDR3n37AePpBMq4bw6U3iVPsTnAOo6VNU4kmytZLK9vrViZm0LIYQu8
	 PZB32l/E5j4BA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 713A2C17FC;
 Fri,  7 Jan 2022 13:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641560549;
 bh=jxiUZwLzhvAtVVYmpsCory4e6DnzuQhhApnmwUn+hpo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=azNWke3Aja+fX58XjIK8bFDH7L4RL4Rn9pKOy2nGFEH99IB/RPNcl8qVBO+T1nY8F
 dDdSDhCARBUty7LDcdS+bC7l4tu2GRvf9C6knBPQ98XpVE9uAL7cc9bKZG9mbf7eYY
 jbHopARx4zC4d7IpZDoB9a6+wqFNTs2JTxsg422sQ+JVeVEFbIw6cq6X/y0pfa7OWY
 k9cvF0ibib+RLgP0IO+z+pi6tAWJonGLUMEgHEi5TbP0N/1Boo7AaRrBtMtDcghkkY
 Im3GPVDGb3tcnhPk+LZcljy7Zs17VMjSvp1rAry11MFoiGH5RQTce0NS9PVJ6Pt2hJ
 hVpkW9iWunybQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH liburing 2/3] test/socket-rw: Fix UB, accessing dead object
Date: Fri,  7 Jan 2022 20:02:17 +0700
Message-Id: <20220107130218.1238910-3-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107130218.1238910-1-ammarfaizi2@gnuweeb.org>
References: <20220107130218.1238910-1-ammarfaizi2@gnuweeb.org>
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
Cc: Hrvoje Zeba <zeba.hrvoje@gmail.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 io-uring Mailing List <io-uring@vger.kernel.org>,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Dereference to a local variable that has been out of its scope is
undefined behavior, it may contain garbage or the compiler may
reuse it for other local variables.

Fix this by moving the struct iov variable declarations so their
lifetime is extended.

Cc: Jens Axboe <axboe@kernel.dk>
Cc: Hrvoje Zeba <zeba.hrvoje@gmail.com>
Fixes: 79ba71a4881fb1cd300520553d7285b3c5ee1293 ("Add deadlock socket read/write test case")
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 test/socket-rw.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/test/socket-rw.c b/test/socket-rw.c
index 5afd14d..4fbf032 100644
--- a/test/socket-rw.c
+++ b/test/socket-rw.c
@@ -27,6 +27,7 @@ int main(int argc, char *argv[])
 	int32_t recv_s0;
 	int32_t val = 1;
 	struct sockaddr_in addr;
+	struct iovec iov_r[1], iov_w[1];
 
 	if (argc > 1)
 		return 0;
@@ -103,27 +104,23 @@ int main(int argc, char *argv[])
 	char send_buff[128];
 
 	{
-		struct iovec iov[1];
-
-		iov[0].iov_base = recv_buff;
-		iov[0].iov_len = sizeof(recv_buff);
+		iov_r[0].iov_base = recv_buff;
+		iov_r[0].iov_len = sizeof(recv_buff);
 
 		struct io_uring_sqe* sqe = io_uring_get_sqe(&m_io_uring);
 		assert(sqe != NULL);
 
-		io_uring_prep_readv(sqe, p_fd[0], iov, 1, 0);
+		io_uring_prep_readv(sqe, p_fd[0], iov_r, 1, 0);
 	}
 
 	{
-		struct iovec iov[1];
-
-		iov[0].iov_base = send_buff;
-		iov[0].iov_len = sizeof(send_buff);
+		iov_w[0].iov_base = send_buff;
+		iov_w[0].iov_len = sizeof(send_buff);
 
 		struct io_uring_sqe* sqe = io_uring_get_sqe(&m_io_uring);
 		assert(sqe != NULL);
 
-		io_uring_prep_writev(sqe, p_fd[1], iov, 1, 0);
+		io_uring_prep_writev(sqe, p_fd[1], iov_w, 1, 0);
 	}
 
 	ret = io_uring_submit_and_wait(&m_io_uring, 2);
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
