Return-Path: <mailman-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id Dw5gFqyC12FMHwQAav/0+A
	(envelope-from <mailman-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:00:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 31B5FC17D1;
	Fri,  7 Jan 2022 00:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513644;
	bh=SUbZOp4sCqQucAVepMxuFMc/c6rQW3xry0lajJCrrRM=;
	h=Subject:From:To:Date:List-Id:From;
	b=G0CVZ18pCKWWhULjc7Wj0gMnTMT0fLewwTHANSlwHVGyQBoxoY/zE2eMZxojNKUeT
	 yFIXaj8oSd4mdE3KD2P/sXcOGcqzugC9fbMwjO1Pv5QNan+CxG9RhoIGQb05QUZc5G
	 bV/tYaXArGZ2ewocdylQWQjyANKZl5XY6R8Xx8k7s23g2vTVlsXnY5+t0qXoH8+ef6
	 9dqqMxveZqsmjmo+w3aJoix9gi2j+hGGTkrhJzomEumd3uRIJ18PjDqToIrz0PnAkh
	 kD1EDCGsC71AiQjzDb2XftKp2rpLVrIqrOSnhESxljccEo87b+R4FKwGB96ym7/1yv
	 vaSLAnMS6b6Ng==
X-Original-To: gwml-owner@gnuweeb.org
Delivered-To: gwml-owner@gnuweeb.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by gnuweeb.org (Postfix) with ESMTP id 8863AC17D8
 for <gwml-owner@gnuweeb.org>; Fri,  7 Jan 2022 00:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513634;
 bh=SUbZOp4sCqQucAVepMxuFMc/c6rQW3xry0lajJCrrRM=;
 h=Subject:From:To:Date:List-Id:From;
 b=AUgJRDCcUoFT1yugG4Sqy9ZlbUuaVXF6Hm+77+sFfM93jaS5O5kQla4U75Bv1YOqY
 OBZ6FXbC5/XgTCSa0ooS+kuDFh8JRVKQxmAd62o/selnr3bX9r6WNL/ml7Qe4cimep
 5xWHva/T1foLnx+YgOl8hvie2eN8xBEK2nPIKoKwQnPtn7x6jE6V5rxYXhy0lHiIoX
 qjpJU1qxWjghtxs+CWtJZTgTElc61u+bbAYZqcPbbWO6j03yvxlliLqPxWsOt451hb
 OvxjKk/ENecprarXEiKjS1yKOPd+Ujlz5o7zwVQVAPCjwxoavHy7W0nq8mJFMz9ltq
 a8TamfEAVdRYQ==
Subject: GWML post from ammarfaizi2@gnuweeb.org requires approval
From: gwml-owner@gnuweeb.org
To: gwml-owner@gnuweeb.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6006468755422849093=="
Message-ID: <mailman.5.1641513628.764.gwml@gnuweeb.org>
Date: Fri, 07 Jan 2022 00:00:28 +0000
Precedence: list
X-BeenThere: gwml@gnuweeb.org
X-Mailman-Version: 2.1.29
List-Id: GNU/Weeb Mailing List <gwml.gnuweeb.org>
X-List-Administrivia: yes
Errors-To: mailman-bounces@gnuweeb.org
Sender: "GWML" <mailman-bounces@gnuweeb.org>

--===============6006468755422849093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

As list administrator, your authorization is requested for the
following mailing list posting:

    List:    GWML@gnuweeb.org
    From:    ammarfaizi2@gnuweeb.org
    Subject: [RFC PATCH v4 1/3] io_uring: Rename `io_{send,recv}` to `io_{sendto,recvfrom}`
    Reason:  Too many recipients to the message

At your convenience, visit:

    https://gwml.gnuweeb.org/admindb/gwml
        
to approve or deny the request.

--===============6006468755422849093==
Content-Type: message/rfc822
MIME-Version: 1.0

Return-Path: <ammarfaizi2@gnuweeb.org>
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
Cc: Ammar Faizi <ammarfaizi2@gnuweeb.org>,
	io-uring Mailing List <io-uring@vger.kernel.org>,
	netdev Mailing List <netdev@vger.kernel.org>,
	GNU/Weeb Mailing List <gwml@gnuweeb.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Pavel Begunkov <asml.silence@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nugra <richiisei@gmail.com>,
	Praveen Kumar <kpraveen.lkml@gmail.com>,
	Ammar Faizi <ammarfaizi2@gmail.com>
Subject: [RFC PATCH v4 1/3] io_uring: Rename `io_{send,recv}` to `io_{sendto,recvfrom}`
Date: Fri,  7 Jan 2022 07:00:03 +0700
Message-Id: <20220107000006.1194026-2-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
References: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


--===============6006468755422849093==
Content-Type: message/rfc822
MIME-Version: 1.0

Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: confirm 6435d502b0662c22edf126199b70fda6f0950887
Sender: gwml-request@gnuweeb.org
From: gwml-request@gnuweeb.org
Date: Fri, 07 Jan 2022 00:00:28 +0000
Message-ID: <mailman.4.1641513628.764.gwml@gnuweeb.org>

If you reply to this message, keeping the Subject: header intact,
Mailman will discard the held message.  Do this if the message is
spam.  If you reply to this message and include an Approved: header
with the list password in it, the message will be approved for posting
to the list.  The Approved: header can also appear in the first line
of the body of the reply.
--===============6006468755422849093==--
