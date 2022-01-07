Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id UHb9E/A52GE/NwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 13:02:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 88A78C17CA;
	Fri,  7 Jan 2022 13:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641560558;
	bh=aevzeYP+NSd+5x0j2YBSAQ79mtJOu6MRiP4mGtI0eyo=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=hPpy4foVg8zqsHGWOEYDB5oZJLoESCLeEitnOLr3YhFO/qnGYW5s2cXKs7xGIv34q
	 iZNPH+78J9nLqwJMgSs73xM2Qe1+wluoKVGTUz7quhi4rBpqrLg1lD1G9e13DWXCG0
	 ftn5fCyvg9rfukYkhUaaLMyQzl0JI2TYczmbq0j04zjTrX375hjKvtxeoxutwIIdl2
	 WH9BvE+2EoromaoQH7y0YaN7TQgtLWQ+yMqcjcUzsSBNneM5bhVUOvRAF8jAl9/EKl
	 NY/KToqBCeeJEaqogBPwu2mN5g5A2mvlpM1hvJSJxhte2S8aMElJ4YPXQrbM5PHoU3
	 qus9DZMOCbQ8A==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id EAC23C1802;
 Fri,  7 Jan 2022 13:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641560551;
 bh=6Qymrh9obeq4yNN83F9D+/EoYY3hE5HOgw+1pgrdx2M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G0APWIERkF4pN9A03eoP7yZzm472Woyt3lX+g/VIt+B4e9QGFKHUmdF/xkem5cEJs
 B/U/j+mtVo+YNs5WJr8J/DGFSfZKvVqXHw8KFRouAmW/8ZSNF1XeUhVlq0Q5Qa+Mn4
 0LDZDozeVPsy4Kdo9yx93N++d12gpLSBchXal8rQNnGP2CMK/VJ2ruNhjP9mNX8WTt
 M+R5ufBRMYmSeh8UDgwhaNlip1weCRBNZuVhFeCkc2f1vMZ0wWT9AlVPKScnUav5+o
 S1lAgXTtGKUvyggFq7WkYsu5zMQEonf8tubTVcmhzJghzjESQwvTAeLq+sjnFsVlgP
 S6/yy8KmS7S0g==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH liburing 3/3] test/socket-rw-offset: Fix UB,
 accessing dead object
Date: Fri,  7 Jan 2022 20:02:18 +0700
Message-Id: <20220107130218.1238910-4-ammarfaizi2@gnuweeb.org>
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
Fixes: 03be3e4fbddd491ef0426b6f9c9085a168acc1c4 ("Add test case for socket read with offset == -1")
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
 test/socket-rw-offset.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/test/socket-rw-offset.c b/test/socket-rw-offset.c
index fe6ace3..987b6c9 100644
--- a/test/socket-rw-offset.c
+++ b/test/socket-rw-offset.c
@@ -27,6 +27,7 @@ int main(int argc, char *argv[])
 	int32_t recv_s0;
 	int32_t val = 1;
 	struct sockaddr_in addr;
+	struct iovec iov_r[1], iov_w[1];
 
 	if (argc > 1)
 		return 0;
@@ -108,27 +109,23 @@ int main(int argc, char *argv[])
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
 
-		io_uring_prep_readv(sqe, p_fd[0], iov, 1, -1);
+		io_uring_prep_readv(sqe, p_fd[0], iov_r, 1, -1);
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
