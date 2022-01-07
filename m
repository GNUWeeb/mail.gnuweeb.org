Return-Path: <mailman-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id sMBTGK2C12EjHwQAav/0+A
	(envelope-from <mailman-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:00:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 54E43C17CB;
	Fri,  7 Jan 2022 00:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513645;
	bh=cW03PZCfnt3DWQ7pZAdsjzfiMkxWlrYus6fsKGUkH7w=;
	h=Subject:From:To:Date:List-Id:From;
	b=V4ebTBSuCmSn7MJx1Q82p76frthzLK6HMowwqfMALBaR3F0AsX65TftFpyncQD2GA
	 sZI41P2wMOrl9C0EceyvLhEROtr1PQyfOZZbm5Nja/N/NT2J4n7CB1GBMAZ39AIM6Q
	 FbenH//HqCOBexJHom5L45FYy5b+5mGIFAlfmP9MvLUG7x68eEM43DQf3txvBCDeyL
	 XNe5nkIItXNc4r5+68xAZn/W/U8KiCIf2a2vc7tul+jXhKpykyBZkZnlFvzg65LNx9
	 9EWeNLkkMDK2YDlC+8LNQOJdJ/L2GPjv390EAcX6YT6x7n3Nw2E7NnRni8yo0eX+7A
	 4rNnehilU9TVg==
X-Original-To: gwml-owner@gnuweeb.org
Delivered-To: gwml-owner@gnuweeb.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by gnuweeb.org (Postfix) with ESMTP id BCCB2C17D5
 for <gwml-owner@gnuweeb.org>; Fri,  7 Jan 2022 00:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513643;
 bh=cW03PZCfnt3DWQ7pZAdsjzfiMkxWlrYus6fsKGUkH7w=;
 h=Subject:From:To:Date:List-Id:From;
 b=Dodqw6/KVUo2rd4FuNB+F/gPtMei7ydCdVhRM5nWDfStMNWhgcOFCrjs7+5W66XE1
 25K7XedABJFodXaZurKtreXjFfhVyNiEeyAyIQ5ZmNQh6iwY0tbZ8DVDg2VoXELpPY
 8cKq9Eo8XJQtKHBE0QB7yoGc6DAZ314+u6bc0GjekduUoor3d2hUJQ8QksDpB9lU/T
 rLfPxi9eU3w5ZA8/cRppxjraUf3eIKnBzJSlUa2MrzayTEijzWTOIClz3iU4SWLJJj
 UOR5tATae9SPIOlbo6oEhymHUttKQh4fidTcrkKoZp/iAG3LbfAfXdtnd02CZrkTWG
 INzcX0k4t8e9g==
Subject: GWML post from ammarfaizi2@gnuweeb.org requires approval
From: gwml-owner@gnuweeb.org
To: gwml-owner@gnuweeb.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4977295921610578206=="
Message-ID: <mailman.11.1641513629.764.gwml@gnuweeb.org>
Date: Fri, 07 Jan 2022 00:00:29 +0000
Precedence: list
X-BeenThere: gwml@gnuweeb.org
X-Mailman-Version: 2.1.29
List-Id: GNU/Weeb Mailing List <gwml.gnuweeb.org>
X-List-Administrivia: yes
Errors-To: mailman-bounces@gnuweeb.org
Sender: "GWML" <mailman-bounces@gnuweeb.org>

--===============4977295921610578206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

As list administrator, your authorization is requested for the
following mailing list posting:

    List:    GWML@gnuweeb.org
    From:    ammarfaizi2@gnuweeb.org
    Subject: [RFC PATCH v4 3/3] io_uring: Add `sendto(2)` and `recvfrom(2)` support
    Reason:  Too many recipients to the message

At your convenience, visit:

    https://gwml.gnuweeb.org/admindb/gwml
        
to approve or deny the request.

--===============4977295921610578206==
Content-Type: message/rfc822
MIME-Version: 1.0

Return-Path: <ammarfaizi2@gnuweeb.org>
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
	by gnuweeb.org (Postfix) with ESMTPSA id 4D5EDC17CA;
	Fri,  7 Jan 2022 00:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513624;
	bh=bRprzljkPdXWkVklApgZ3wCc6hsKMQVhUVm66yb3UGk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IRxBEifU7kf4wNbMoU141NsmXy3CgcTRmH+QDd2MtAIcParZhn9wUExL1K8eWFsJy
	 mkYpwROow3dkvJqD5zWq0fJRQsiGZq3JZj7EWgGaNUrvgXU9v/2mOzJopKYXvHdwp3
	 JNnALREg38kNiOqNBUK431jxvpcto8r/LkjOSD+nCB3vQBFK8HCjLOxswKpca1uqWO
	 SDZWaw3MhHz7iwvV3fhMw21rLwGnaTCjfVkuIJm7OjMbbC2W8ySgXPRqNMKKxr3SGZ
	 rvdiVRsVrezKnRz+xPElYd4zL4w554wS3rN6I4yuNcsuQBqjz1b5TF2lsQNuaUJpQg
	 4o4HfWGLHvgxQ==
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
Subject: [RFC PATCH v4 3/3] io_uring: Add `sendto(2)` and `recvfrom(2)` support
Date: Fri,  7 Jan 2022 07:00:05 +0700
Message-Id: <20220107000006.1194026-4-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
References: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds sendto(2) and recvfrom(2) support for io_uring.

New opcodes:
  IORING_OP_SENDTO
  IORING_OP_RECVFROM

Cc: Nugra <richiisei@gmail.com>
Cc: Praveen Kumar <kpraveen.lkml@gmail.com>
Link: https://github.com/axboe/liburing/issues/397
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---

v4:
  - Rebase the work (sync with "for-next" branch in Jens' tree).

  - Remove Tested-by tag from Nugra as this patch changes.

  - (Address Praveen's comment) Zero `sendto_addr_len` and
    `recvfrom_addr_len` on prep when the `req->opcode` is not
    `IORING_OP_{SENDTO,RECVFROM}`.

v3:
  - Fix build error when CONFIG_NET is undefined should be done in
    the first patch, not this patch.

  - Add Tested-by tag from Nugra.

v2:
  - In `io_recvfrom()`, mark the error check of `move_addr_to_user()`
    call as unlikely.

  - Fix build error when CONFIG_NET is undefined.

  - Added Nugra to CC list (tester).

---
---
 fs/io_uring.c                 | 82 +++++++++++++++++++++++++++++++++--
 include/uapi/linux/io_uring.h |  5 ++-
 2 files changed, 82 insertions(+), 5 deletions(-)

diff --git a/fs/io_uring.c b/fs/io_uring.c
index 5e45e4d6969c..3c85dd0d50b4 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -574,7 +574,15 @@ struct io_sr_msg {
 	union {
 		struct compat_msghdr __user	*umsg_compat;
 		struct user_msghdr __user	*umsg;
-		void __user			*buf;
+
+		struct {
+			void __user		*buf;
+			struct sockaddr __user	*addr;
+			union {
+				int		sendto_addr_len;
+				int __user	*recvfrom_addr_len;
+			};
+		};
 	};
 	int				msg_flags;
 	int				bgid;
@@ -1105,6 +1113,19 @@ static const struct io_op_def io_op_defs[] = {
 	[IORING_OP_MKDIRAT] = {},
 	[IORING_OP_SYMLINKAT] = {},
 	[IORING_OP_LINKAT] = {},
+	[IORING_OP_SENDTO] = {
+		.needs_file		= 1,
+		.unbound_nonreg_file	= 1,
+		.pollout		= 1,
+		.audit_skip		= 1,
+	},
+	[IORING_OP_RECVFROM] = {
+		.needs_file		= 1,
+		.unbound_nonreg_file	= 1,
+		.pollin			= 1,
+		.buffer_select		= 1,
+		.audit_skip		= 1,
+	},
 };
 
 /* requests with any of those set should undergo io_disarm_next() */
@@ -4890,12 +4911,25 @@ static int io_sendmsg_prep(struct io_kiocb *req, const struct io_uring_sqe *sqe)
 	if (unlikely(req->ctx->flags & IORING_SETUP_IOPOLL))
 		return -EINVAL;
 
+	/*
+	 * For IORING_OP_SEND{,TO}, the assignment to @sr->umsg
+	 * is equivalent to an assignment to @sr->buf.
+	 */
 	sr->umsg = u64_to_user_ptr(READ_ONCE(sqe->addr));
+
 	sr->len = READ_ONCE(sqe->len);
 	sr->msg_flags = READ_ONCE(sqe->msg_flags) | MSG_NOSIGNAL;
 	if (sr->msg_flags & MSG_DONTWAIT)
 		req->flags |= REQ_F_NOWAIT;
 
+	if (req->opcode == IORING_OP_SENDTO) {
+		sr->addr = u64_to_user_ptr(READ_ONCE(sqe->addr2));
+		sr->sendto_addr_len = READ_ONCE(sqe->addr3);
+	} else {
+		sr->addr = (struct sockaddr __user *) NULL;
+		sr->sendto_addr_len = 0;
+	}
+
 #ifdef CONFIG_COMPAT
 	if (req->ctx->compat)
 		sr->msg_flags |= MSG_CMSG_COMPAT;
@@ -4949,6 +4983,7 @@ static int io_sendmsg(struct io_kiocb *req, unsigned int issue_flags)
 
 static int io_sendto(struct io_kiocb *req, unsigned int issue_flags)
 {
+	struct sockaddr_storage address;
 	struct io_sr_msg *sr = &req->sr_msg;
 	struct msghdr msg;
 	struct iovec iov;
@@ -4965,10 +5000,20 @@ static int io_sendto(struct io_kiocb *req, unsigned int issue_flags)
 	if (unlikely(ret))
 		return ret;
 
-	msg.msg_name = NULL;
+
 	msg.msg_control = NULL;
 	msg.msg_controllen = 0;
-	msg.msg_namelen = 0;
+	if (sr->addr) {
+		ret = move_addr_to_kernel(sr->addr, sr->sendto_addr_len,
+					  &address);
+		if (unlikely(ret < 0))
+			goto fail;
+		msg.msg_name = (struct sockaddr *) &address;
+		msg.msg_namelen = sr->sendto_addr_len;
+	} else {
+		msg.msg_name = NULL;
+		msg.msg_namelen = 0;
+	}
 
 	flags = req->sr_msg.msg_flags;
 	if (issue_flags & IO_URING_F_NONBLOCK)
@@ -4983,6 +5028,7 @@ static int io_sendto(struct io_kiocb *req, unsigned int issue_flags)
 			return -EAGAIN;
 		if (ret == -ERESTARTSYS)
 			ret = -EINTR;
+fail:
 		req_set_fail(req);
 	}
 	__io_req_complete(req, issue_flags, ret, 0);
@@ -5101,13 +5147,26 @@ static int io_recvmsg_prep(struct io_kiocb *req, const struct io_uring_sqe *sqe)
 	if (unlikely(req->ctx->flags & IORING_SETUP_IOPOLL))
 		return -EINVAL;
 
+	/*
+	 * For IORING_OP_RECV{,FROM}, the assignment to @sr->umsg
+	 * is equivalent to an assignment to @sr->buf.
+	 */
 	sr->umsg = u64_to_user_ptr(READ_ONCE(sqe->addr));
+
 	sr->len = READ_ONCE(sqe->len);
 	sr->bgid = READ_ONCE(sqe->buf_group);
 	sr->msg_flags = READ_ONCE(sqe->msg_flags) | MSG_NOSIGNAL;
 	if (sr->msg_flags & MSG_DONTWAIT)
 		req->flags |= REQ_F_NOWAIT;
 
+	if (req->opcode == IORING_OP_RECVFROM) {
+		sr->addr = u64_to_user_ptr(READ_ONCE(sqe->addr2));
+		sr->recvfrom_addr_len = u64_to_user_ptr(READ_ONCE(sqe->addr3));
+	} else {
+		sr->addr = (struct sockaddr __user *) NULL;
+		sr->recvfrom_addr_len = (int __user *) NULL;
+	}
+
 #ifdef CONFIG_COMPAT
 	if (req->ctx->compat)
 		sr->msg_flags |= MSG_CMSG_COMPAT;
@@ -5183,6 +5242,7 @@ static int io_recvfrom(struct io_kiocb *req, unsigned int issue_flags)
 	struct iovec iov;
 	unsigned flags;
 	int ret, min_ret = 0;
+	struct sockaddr_storage address;
 	bool force_nonblock = issue_flags & IO_URING_F_NONBLOCK;
 
 	sock = sock_from_file(req->file);
@@ -5200,9 +5260,10 @@ static int io_recvfrom(struct io_kiocb *req, unsigned int issue_flags)
 	if (unlikely(ret))
 		goto out_free;
 
-	msg.msg_name = NULL;
+	msg.msg_name = sr->addr ? (struct sockaddr *) &address : NULL;
 	msg.msg_control = NULL;
 	msg.msg_controllen = 0;
+	/* We assume all kernel code knows the size of sockaddr_storage */
 	msg.msg_namelen = 0;
 	msg.msg_iocb = NULL;
 	msg.msg_flags = 0;
@@ -5214,6 +5275,15 @@ static int io_recvfrom(struct io_kiocb *req, unsigned int issue_flags)
 		min_ret = iov_iter_count(&msg.msg_iter);
 
 	ret = sock_recvmsg(sock, &msg, flags);
+	if (ret >= 0 && sr->addr != NULL) {
+		int tmp;
+
+		tmp = move_addr_to_user(&address, msg.msg_namelen, sr->addr,
+					sr->recvfrom_addr_len);
+		if (unlikely(tmp < 0))
+			ret = tmp;
+	}
+
 out_free:
 	if (ret < min_ret) {
 		if (ret == -EAGAIN && force_nonblock)
@@ -6452,9 +6522,11 @@ static int io_req_prep(struct io_kiocb *req, const struct io_uring_sqe *sqe)
 	case IORING_OP_SYNC_FILE_RANGE:
 		return io_sfr_prep(req, sqe);
 	case IORING_OP_SENDMSG:
+	case IORING_OP_SENDTO:
 	case IORING_OP_SEND:
 		return io_sendmsg_prep(req, sqe);
 	case IORING_OP_RECVMSG:
+	case IORING_OP_RECVFROM:
 	case IORING_OP_RECV:
 		return io_recvmsg_prep(req, sqe);
 	case IORING_OP_CONNECT:
@@ -6709,12 +6781,14 @@ static int io_issue_sqe(struct io_kiocb *req, unsigned int issue_flags)
 	case IORING_OP_SENDMSG:
 		ret = io_sendmsg(req, issue_flags);
 		break;
+	case IORING_OP_SENDTO:
 	case IORING_OP_SEND:
 		ret = io_sendto(req, issue_flags);
 		break;
 	case IORING_OP_RECVMSG:
 		ret = io_recvmsg(req, issue_flags);
 		break;
+	case IORING_OP_RECVFROM:
 	case IORING_OP_RECV:
 		ret = io_recvfrom(req, issue_flags);
 		break;
diff --git a/include/uapi/linux/io_uring.h b/include/uapi/linux/io_uring.h
index 787f491f0d2a..a58cde19b4d0 100644
--- a/include/uapi/linux/io_uring.h
+++ b/include/uapi/linux/io_uring.h
@@ -60,7 +60,8 @@ struct io_uring_sqe {
 		__s32	splice_fd_in;
 		__u32	file_index;
 	};
-	__u64	__pad2[2];
+	__u64	addr3;
+	__u64	__pad2[1];
 };
 
 enum {
@@ -143,6 +144,8 @@ enum {
 	IORING_OP_MKDIRAT,
 	IORING_OP_SYMLINKAT,
 	IORING_OP_LINKAT,
+	IORING_OP_SENDTO,
+	IORING_OP_RECVFROM,
 
 	/* this goes last, obviously */
 	IORING_OP_LAST,
-- 
2.32.0


--===============4977295921610578206==
Content-Type: message/rfc822
MIME-Version: 1.0

Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: confirm ca224d5fa35fbe06f97340ac4d075f770ea93dcb
Sender: gwml-request@gnuweeb.org
From: gwml-request@gnuweeb.org
Date: Fri, 07 Jan 2022 00:00:29 +0000
Message-ID: <mailman.10.1641513629.764.gwml@gnuweeb.org>

If you reply to this message, keeping the Subject: header intact,
Mailman will discard the held message.  Do this if the message is
spam.  If you reply to this message and include an Approved: header
with the list password in it, the message will be approved for posting
to the list.  The Approved: header can also appear in the first line
of the body of the reply.
--===============4977295921610578206==--
