Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id EOfwJuM52GEWNwQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 07 Jan 2022 13:02:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 46F6DC17FE;
	Fri,  7 Jan 2022 13:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1641560546;
	bh=Y86zRe3jxBJU5AfOb1v88gBEiDxTPH+Xdnpl8Yhm7Oo=;
	h=From:To:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=NDlL67XT72OtoG6VFrUty6FbEd6i92vn9usSlJTrqSdvqx/4O0DvopaLXRnBV/ilh
	 0+rB9papA4mU+oCCNiD226stfWECR6mEFl4yLvrcP5Vzxl+klFBcvBMpuNzijqiDVv
	 ej9/6ybeV95v+WrBVZghE7SNg7t19gMabA5LH+T8JWj1fpFEnwXAF8erkrkT4EcUG0
	 w9w//+sCXIJZ79F7pDASwHRBCH9jyVfcMY7ETGval/peVFEr2YmxThu30i5NESW5xE
	 jv9ixYMgopQTEsbMHg3sgMygau+PDxn3SCaLk+pWbFJacIFsl9aX8f+3vZVsS/3hSV
	 63YpGfSki5hDQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral2.. (unknown [36.68.70.227])
 by gnuweeb.org (Postfix) with ESMTPSA id 76C23C00E2;
 Fri,  7 Jan 2022 13:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1641560545;
 bh=rAWzHPQU/qBZ7SLNNkOvxjWtaOMwpHxMsutZJSUpV14=;
 h=From:To:Cc:Subject:Date:From;
 b=QKJyQqIJOpsPh+Jg4JXz1uHRq681kNIHH9mfAok0UIs9+xNjh9mZEcaJ5WyhUGXrW
 F9l1oKAOca2g+dJLP4RRhlNgKY/3ISmKt4q1pxXif/DCF9kA/s6dyYzMbmgUHBmbIl
 VnGKWlYurvNsd4OQ0iozVBaCAaJLEEjbBhLIyjIyb6gkO+6TeKVmZcoPwgjj6ZerKp
 cHMDFZzR9I9+xIX7fUEm4zWv8FoNwRhiuc7qe7qE17rv4QjTNX+psPG2qAeDFrlrJy
 BAojgv9Y7wKdwRzSQFArSO8/ojnN5ceIfzg+JZ6fh4QVU+Nym3fUM8C/oi2cMZVZcq
 j3ii4f6qRgIeQ==
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH liburing 0/3] Fix undefined behavior, acessing dead object
Date: Fri,  7 Jan 2022 20:02:15 +0700
Message-Id: <20220107130218.1238910-1-ammarfaizi2@gnuweeb.org>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 io-uring Mailing List <io-uring@vger.kernel.org>,
 Ammar Faizi <ammarfaizi2@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

This series fixes undefined behavior caused by accessing local
variables that have been out of their scope.

FWIW, compile the following code with gcc (Ubuntu 11.2.0-7ubuntu2) 11.2.0:
```
#include <stdio.h>

int main(void)
{
	int *pa, *pb;

	{
		int a;
		pa = &a;
	}

	{
		int b;
		pb = &b;
	}

	*pa = 100;
	*pb = 200;

	printf("(pa == pb) = %d\n", pa == pb);
	printf("*pa == %d; *pb == %d\n", *pa, *pb);
	return 0;
}
```

produces the following output:

```
  ammarfaizi2@integral2:/tmp$ gcc q.c -o q
  ammarfaizi2@integral2:/tmp$ ./q
  (pa == pb) = 1
  *pa == 200; *pb == 200
  ammarfaizi2@integral2:/tmp$
  ammarfaizi2@integral2:/tmp$ gcc -O3 q.c -o q
  ammarfaizi2@integral2:/tmp$ ./q
  (pa == pb) = 0
  *pa == 100; *pb == 200
  ammarfaizi2@integral2:/tmp$
```

Note that the `int a` and `int b` lifetime have ended, but we still
hold the references to them dereference them.

Also the result differs for the different optimization levels.
That's to say, there is no guarantee due to UB. Compiler is free
to reuse "out of scope variable"'s storage.

The same happens with test/socket-rw{,-eagain,-offset}.c.

Signed-off-by: Ammar Faizi <ammarfaizi2@gnuweeb.org>
---
Ammar Faizi (3):
  test/socket-rw-eagain: Fix UB, accessing dead object
  test/socket-rw: Fix UB, accessing dead object
  test/socket-rw-offset: Fix UB, accessing dead object

 test/socket-rw-eagain.c | 17 +++++++----------
 test/socket-rw-offset.c | 17 +++++++----------
 test/socket-rw.c        | 17 +++++++----------
 3 files changed, 21 insertions(+), 30 deletions(-)


base-commit: 918d8061ffdfdf253806a1e8e141c71644e678bd
-- 
2.32.0

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
