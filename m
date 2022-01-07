Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id ECtRI+KC12GwHwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 00:01:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 15AB3C17D5;
	Fri,  7 Jan 2022 00:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641513697;
	bh=CA7AGZE+inF4EW4V8iwbdAIZlju4gDHkKXHjJ/+TK5E=;
	h=From:To:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=erMONmGUURKPx3RbUc+tqYdbBN6tHpqX88+RIbTuTnOujHJGrLs/C/ZHBmGBVRgiU
	 JTEX3bqEIDIlh5s1nuG5SyULeCuCBKIN4HnXM1l2+sBNzu4hVMgkRj+SKu4O9g5+K8
	 OXZeqafTqkXqVeMFAZlU10hsKaipdXbxb69+IX7OtUhw1A9tLccWdut8ZJqXqMg0D0
	 GywRlrD75Z6bHWQxO7BU6SHqjAhidbkVxWCMCC5EgY2E/YkLFAfnu+tS+TOwZDNSeA
	 Ubw77o7P0gmkBZ2byUZONChmC5NeXcU86aibZlGo7nftE0qRaGZZ3e63pahn9spwvt
	 41TMP6gujWTmA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 4A52AC1645;
 Fri,  7 Jan 2022 00:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641513622;
 bh=U98ugxZLlMOKIunZ2C2GpMLa0XORGQZbIFew5+TljBI=;
 h=From:To:Cc:Subject:Date:From;
 b=OYfwA+ei3bBqTe3uCT6Ux2Y9TsBdz4qV0cajnNKxhPDzbEwNk8g9Lpn8eIElHBhMx
 89af13zpyFMY8tnAZVyiO3NCtRwRMRpcdrvbNIegys77Vobu+aiA6JKEmgAV1iszQP
 DTYYKcH9ESokk/I5PqWXokUZSK6uIEy/OX0C4rAuDSJ9wMDUM4Qb/p8M4Fpsn8BmAV
 Skb6fXd7hmfBhAjdh450J87VsR0x1oe2k7kZK8YTxV6hyjviRX2a9hGz6V3rVSg+qQ
 Q2o5PWDOFNV5Ds/Bjzzfb4ykRa3sNJfC386e5Mz2QyWn1yoiPWvRxP6Z6eNRx9nHgZ
 TmoasFHDMoGQQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [RFC PATCH v4 0/3] Add sendto(2) and recvfrom(2) support for io_uring
Date: Fri,  7 Jan 2022 07:00:02 +0700
Message-Id: <20220107000006.1194026-1-ammarfaizi2@gnuweeb.org>
X-Mailer: git-send-email 2.32.0
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

Hello,

This RFC patchset adds sendto(2) and recvfrom(2) support for io_uring.
It also addresses an issue in the liburing GitHub repository [1].


## Motivations
1) By using `sendto()` and `recvfrom()` we can make the submission
   simpler compared to always using `sendmsg()` and `recvmsg()` from
   the userspace.

2) There is a historical patch that tried to add the same
   functionality, but did not end up being applied. [2]

On Tue, 7 Jul 2020 12:29:18 -0600, Jens Axboe <axboe@kernel.dk> wrote:
> In a private conversation with the author, a good point was brought
> up that the sendto/recvfrom do not require an allocation of an async
> context, if we need to defer or go async with the request. I think
> that's a major win, to be honest. There are other benefits as well
> (like shorter path), but to me, the async less part is nice and will
> reduce overhead


## Changes summary
There are 3 patches in this series.

PATCH 1/3 renames io_recv to io_recvfrom and io_send to io_sendto.
Note that:

    send(sockfd, buf, len, flags);

  is equivalent to

    sendto(sockfd, buf, len, flags, NULL, 0);

  and

    recv(sockfd, buf, len, flags);

  is equivalent to

    recvfrom(sockfd, buf, len, flags, NULL, NULL);

So it is saner to have `send` and `recv` directed to `sendto` and
`recvfrom` instead of the opposite with respect to the name.

PATCH 2/3 makes `move_addr_to_user()` be a non static function. This
function lives in net/socket.c, we need to call this from io_uring
to add `recvfrom()` support for io_uring. Added net files maintainers
to the CC list.

PATCH 3/3 adds `sendto(2)` and `recvfrom(2)` support for io_uring.
Added two new opcodes: IORING_OP_SENDTO and IORING_OP_RECVFROM.


## How to test
This patchset is based on "for-next" branch in Jens' tree commit:

  c1537fd063e2f1dbd96d8f68b405a66297ee306f ("Merge branch 'for-5.17/drivers' into for-next")

It is also available in the Git repository at:

  https://github.com/ammarfaizi2/linux-block.git ammarfaizi2/linux-block/io_uring-recvfrom-sendto.v4

Test with liburing (added the liburing support, docs, and test program),
the liburing support is based on liburing "master" branch commit:

  918d8061ffdfdf253806a1e8e141c71644e678bd ("Remove getdents support")

It is available in the Git repository at:

  https://github.com/ammarfaizi2/liburing.git sendto-recvfrom.v2

Please review and comment.

---

RFC v4 (this patchset):
  - Rebase the work (sync with "for-next" branch in Jens' tree).

  - Remove Tested-by tag from Nugra as we have changes.

  - (Address Praveen's comment) Zero `sendto_addr_len` and
    `recvfrom_addr_len` on prep when the `req->opcode` is not
    `IORING_OP_{SENDTO,RECVFROM}`.

RFC v3:
  - Fix build error when CONFIG_NET is undefined for PATCH 1/3. I
    tried to fix it in PATCH 3/3, but it should be fixed in PATCH 1/3,
    otherwise it breaks the build in PATCH 1/3.

  - Added `io_uring_prep_{sendto,recvfrom}` docs to the liburing.

RFC v2:
  - Rebase the work, now this patchset is based on commit
    bb3294e22482db4b7ec ("Merge branch 'for-5.17/drivers' into
    for-next").

  - In `io_recvfrom()`, mark the error check of `move_addr_to_user()`
    call as unlikely.

  - Fix build error when CONFIG_NET is undefined.

  - Update liburing test (the branch is still the same, just force
    pushed).

  - Added Nugra to CC list (tester).

---
RFC v3: https://lore.kernel.org/io-uring/20211230013154.102910-1-ammar.faizi@intel.com/
RFC v2: https://lore.kernel.org/io-uring/20211230114846.137954-1-ammar.faizi@intel.com/
RFC v1: https://lore.kernel.org/io-uring/20211230173126.174350-1-ammar.faizi@intel.com/
Link: https://github.com/axboe/liburing/issues/397 [1]
Link: https://lore.kernel.org/io-uring/a2399c89-2c45-375c-7395-b5caf556ec3d@kernel.dk/ [2]
Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---

Ammar Faizi (3):
  io_uring: Rename `io_{send,recv}` to `io_{sendto,recvfrom}`
  net: Make `move_addr_to_user()` be a non static function
  io_uring: Add `sendto(2)` and `recvfrom(2)` support

 fs/io_uring.c                 | 94 +++++++++++++++++++++++++++++++----
 include/linux/socket.h        |  2 +
 include/uapi/linux/io_uring.h |  5 +-
 net/socket.c                  |  4 +-
 4 files changed, 92 insertions(+), 13 deletions(-)


base-commit: c1537fd063e2f1dbd96d8f68b405a66297ee306f
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
