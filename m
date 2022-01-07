Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id CLTbOuU52GFpNwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 13:02:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 8B438C170F;
	Fri,  7 Jan 2022 13:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641560548;
	bh=zFRZbqvzLAAlcQelOchfOMr7vt/pWClty+/N39iCUqI=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=ZoaLsDpWVAoANN+/BOP1z8ksMqpXhXdFaWlCg24/DyzY4iEObw5n+jwGQldgeKs35
	 QwTROpj64IpU+o1M9XFxAmkRmgd2fApxSHCwXxFriktyFkJ8gA8gHOEqbjpOuw63g0
	 rXXmQpFFs8n5xBqgZKxKfByYLKuq7bumfg1tnWdZptLrwNF22N0qSS4adEWpGIFP9/
	 IU1D0s98yOCRkzXDFWaRTUUv5AUbMgDy/3piV/kmLUA7ZZPaz200QZz5V1T1IJhAAB
	 A0L/SzLozc9JJNzZu1jt2obHaEiGtDbNvRoOWacfqLqyR3882me5jbb8eX753qVCTi
	 5tUMojcPfIX7Q==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 92778C17F2;
 Fri,  7 Jan 2022 13:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641560547;
 bh=+u4pKlYPYt1PipEjrDT7r8Ze8KmQqAXhDupoPACiK3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WmPvt5TQOcW6rYp+Bk0Kmq7NLA94wPid8Y3COV7rUhCybGDkpA5k5lXprjPEZHqKz
 mM0dYSRHJKy+8I5hPbc0RN35t0dzVOPl94weNKak2Bc1lH3z8Wvx1JX/aFoTOHXzPI
 RnTwzgd1f83a7WplOu5ZIlEcLZ9S1aHvIK/9FLjVT1d+SQ5B6mo+TxNiP8akdP6n/1
 1jWa2lAmae2HbitST+pCQ+DeSGJUBoUr2yJh54LRRPpX4N7MD7jzJNw/DcnSePOhZn
 6kps8bAiJViSw8xdxBwx09SLx6z8NxtaBzYnvbBpb+juc5qPCHf5ZaFDfJZgW6phFh
 WpZUiw+BhgMzQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH liburing 1/3] test/socket-rw-eagain: Fix UB,
 accessing dead object
Date: Fri,  7 Jan 2022 20:02:16 +0700
Message-Id: <20220107130218.1238910-2-ammarfaizi2@gnuweeb.org>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>,
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
Fixes: 76e3b7921fee98a5627cd270628b6a5160d3857d ("Add nonblock empty socket read test")
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 test/socket-rw-eagain.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/test/socket-rw-eagain.c b/test/socket-rw-eagain.c
index 9854e00..2d6a817 100644
--- a/test/socket-rw-eagain.c
+++ b/test/socket-rw-eagain.c
@@ -25,6 +25,7 @@ int main(int argc, char *argv[])
 	int32_t recv_s0;
 	int32_t val = 1;
 	struct sockaddr_in addr;
+	struct iovec iov_r[1], iov_w[1];
 
 	if (argc > 1)
 		return 0;
@@ -105,28 +106,24 @@ int main(int argc, char *argv[])
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
 		sqe->user_data = 1;
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
 		sqe->user_data = 2;
 	}
 
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
