Return-Path: <mailman-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id qBKkFK2C12ExHwQAav/0+A
	(envelope-from <mailman-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:00:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 44B42C17D7;
	Fri,  7 Jan 2022 00:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513645;
	bh=wWrNuXdgihJSaGcz4yuCxvkhqEm6iI9YXyKn6uEPKXk=;
	h=Subject:From:To:Date:List-Id:From;
	b=EbjRYWv0/SD/wjYkKGj9FsPOAbKo7HOTYaJkfGNkkaNwo9FW0sJNTw3m3Et384mDZ
	 rWprmYeVmrt2jLRWUR+asM+Ql0uAU3Z6Xh0nDkh+T6SNxnGeDtw968B2rE4Qd4VHHX
	 vLpmeutoeDDTuj7mC+jB6qUiCpQ2KHYfNpo8d9IW37EHQlcd3CUXjJgnSfOX3T7qme
	 3juzqKMAad53rlHK9T+KTKc0g89W/1P2wD0bgKRwunOO1Gv0IKeJ35SLZmaED8f1aX
	 av9e/0xEOMXFMAZKmBME91RXb7E802/PdBvtvjlXQsjesyeYZOkN+QEeisedVG709o
	 vMlHHXhGPVqFw==
X-Original-To: gwml-owner@gnuweeb.org
Delivered-To: gwml-owner@gnuweeb.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by gnuweeb.org (Postfix) with ESMTP id 2EA03C17CD
 for <gwml-owner@gnuweeb.org>; Fri,  7 Jan 2022 00:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513639;
 bh=wWrNuXdgihJSaGcz4yuCxvkhqEm6iI9YXyKn6uEPKXk=;
 h=Subject:From:To:Date:List-Id:From;
 b=ZOaWDay9WMVjF1MNi9876j6Sufrfqzy/Yfia86J5rDvc6a561Uy7lE8PqgscAUBpx
 dvoayHQNdO2XRQg2fvruEtFCF2LwPeH6wwc27yq+pl7HXEfVMQUj0b9mradX8ZXuJ+
 GGLjf9G+83FDaiUJMGNhM2M1We+VssxI6I0rdl3jR0+1YEyv8Gs9A7bwO4NrGowpR/
 1HO2lJyX7t+ww5hDnI+eqrpZTFewtKCV4wC8AtqtE8YUEGfhu7iFkVxpzNUHoh8Eau
 jX0guhKi7pFKdSLAF39t/9y1VC/fX8Ade5HoquofkyD/fpu8CYxwOp88NchEXqxQtR
 PL/8VCcfEjYaw==
Subject: GWML post from ammarfaizi2@gnuweeb.org requires approval
From: gwml-owner@gnuweeb.org
To: gwml-owner@gnuweeb.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1821010705121967344=="
Message-ID: <mailman.8.1641513628.764.gwml@gnuweeb.org>
Date: Fri, 07 Jan 2022 00:00:28 +0000
Precedence: list
X-BeenThere: gwml@gnuweeb.org
X-Mailman-Version: 2.1.29
List-Id: GNU/Weeb Mailing List <gwml.gnuweeb.org>
X-List-Administrivia: yes
Errors-To: mailman-bounces@gnuweeb.org
Sender: "GWML" <mailman-bounces@gnuweeb.org>

--===============1821010705121967344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

As list administrator, your authorization is requested for the
following mailing list posting:

    List:    GWML@gnuweeb.org
    From:    ammarfaizi2@gnuweeb.org
    Subject: [RFC PATCH v4 2/3] net: Make `move_addr_to_user()` be a non static function
    Reason:  Too many recipients to the message

At your convenience, visit:

    https://gwml.gnuweeb.org/admindb/gwml
        
to approve or deny the request.

--===============1821010705121967344==
Content-Type: message/rfc822
MIME-Version: 1.0

Return-Path: <ammarfaizi2@gnuweeb.org>
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
Subject: [RFC PATCH v4 2/3] net: Make `move_addr_to_user()` be a non static function
Date: Fri,  7 Jan 2022 07:00:04 +0700
Message-Id: <20220107000006.1194026-3-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
References: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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


--===============1821010705121967344==
Content-Type: message/rfc822
MIME-Version: 1.0

Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: confirm e03c395622c2f0d4cf90e77aa9640a8eb514ffc2
Sender: gwml-request@gnuweeb.org
From: gwml-request@gnuweeb.org
Date: Fri, 07 Jan 2022 00:00:28 +0000
Message-ID: <mailman.7.1641513628.764.gwml@gnuweeb.org>

If you reply to this message, keeping the Subject: header intact,
Mailman will discard the held message.  Do this if the message is
spam.  If you reply to this message and include an Approved: header
with the list password in it, the message will be approved for posting
to the list.  The Approved: header can also appear in the first line
of the body of the reply.
--===============1821010705121967344==--
