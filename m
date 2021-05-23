Return-Path: <mailman-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id MwMvK5VsqmBzlAAAav/0+A
	(envelope-from <mailman-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 23 May 2021 14:54:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 95526BF494;
	Sun, 23 May 2021 14:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1621781653;
	bh=7RobWnwb9uXTrOaGb/PAXH5S77H8rfbr8msQ3yYvY+U=;
	h=Subject:From:To:Date:List-Id:From;
	b=cgxU4M1GfYVhymuIZISqctF1UKFx1OIWAez1uwCEZBQj91fKOgavIYTdhrH+WUUYz
	 0PD3lXDDMaT3MB1ujCJLdar8vhWw2yeDZ1MzDde68/aV2m56itH1QWhnDh5qr88wjR
	 hveTvZDS3pdGf+MiWScz6Wf8uQOD7wbmLo09jIKb+b1BOea6AtsckaCyFUtEXtlWGV
	 BJhHortXIsVlg8gt80Gk6A+spyEgp1lbxlKK5sOasNBYFlt/4YZ7LXq6RAH431Y2xO
	 QDS9OdRXuuURgq7uomjrMB7uQCkfphTeQOzm2KDx7q5o+wBtRcjpxI7cBtYeYMx8TV
	 EceY0E52ubBjA==
X-Original-To: gwml-owner@gnuweeb.org
Delivered-To: gwml-owner@gnuweeb.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by gnuweeb.org (Postfix) with ESMTP id 85605BEF2F
 for <gwml-owner@gnuweeb.org>; Sun, 23 May 2021 14:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1621781652;
 bh=7RobWnwb9uXTrOaGb/PAXH5S77H8rfbr8msQ3yYvY+U=;
 h=Subject:From:To:Date:List-Id:From;
 b=n2ShuFSO5lR6gCkIhIVa/j3FyDEyrWaZBoIZfu74e7A6rqilH2yZ2prH26jirWeFF
 y97/dI6j/EI1WeMKBnkbriuhJ5Y0wAviqGaUoj9wY6KYeuBL7W0wmAD3DO9UbGo/lm
 1xaFucLnoqBfBkejziPeSA6H0DLano3S02ZRKyaigOqvRU4Vmo5jLJ8yKHhqwst7lT
 JPgE2IAIy3M1dVDqM+3vbZFQW/fu6+A2llrDAkyvBi1JnS+LFLJJfFeLQDj/feEycK
 zsR8Ips5ujiX7IC38MFUX2wy1FD4dwFWl1MQ+PQYT0uUE4Et+O9CIXLa1dk/AkkZQK
 j7BnpS2R4iR8A==
Subject: GWML post from mail@siarie.me requires approval
From: gwml-owner@gnuweeb.org
To: gwml-owner@gnuweeb.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7036145144316243964=="
Message-ID: <mailman.8.1621781651.19899.gwml@gnuweeb.org>
Date: Sun, 23 May 2021 14:54:11 +0000
Precedence: list
X-BeenThere: gwml@gnuweeb.org
X-Mailman-Version: 2.1.29
List-Id: GNU/Weeb Mailing List <gwml.gnuweeb.org>
X-List-Administrivia: yes
Errors-To: mailman-bounces@gnuweeb.org
Sender: "GWML" <mailman-bounces@gnuweeb.org>

--===============7036145144316243964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

As list administrator, your authorization is requested for the
following mailing list posting:

    List:    GWML@gnuweeb.org
    From:    mail@siarie.me
    Subject: is it works?
    Reason:  Post by non-member to a members-only list

At your convenience, visit:

    https://gwml.gnuweeb.org/admindb/gwml
        
to approve or deny the request.

--===============7036145144316243964==
Content-Type: message/rfc822
MIME-Version: 1.0

Return-Path: <mail@siarie.me>
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
	by gnuweeb.org (Postfix) with ESMTPS id C752BC15C8
	for <gwml@gnuweeb.org>; Sun, 23 May 2021 14:54:06 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=pass (2048-bit key; unprotected) header.d=siarie.me header.i=@siarie.me header.a=rsa-sha256 header.s=gm1 header.b=fmaRsxjH;
	dkim-atps=neutral
Received: (Authenticated sender: mail@siarie.me)
	by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5849E100003
	for <gwml@gnuweeb.org>; Sun, 23 May 2021 14:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siarie.me; s=gm1;
	t=1621781644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ao+800Ee/BktJ1oz1TTHZ+/A3V2ZjAIa4lzq5SEsKV0=;
	b=fmaRsxjH2/KFVZ+MyOp2goOwr4Y/nZwOai1U8JhO3DHsQCkApiFoTPIYeBbbBvIXOkFkIp
	JkSUsHnGQ8JrZXJzfEJL/K6iC+/ZStfg+aAb6r/KKTGhyPwjzQaiYPdoK0aGKqw1GcSNfL
	9o4usRorsjxPE+Y2Y1vdleYUDkHR9j7mln4+DodJXibrPHAwxGNwmTa161jc3BM2bb6d2+
	A+oU37k6OrYxeMvpLI9+hznHjjTRyaZIzxKfJFDbeeyuVEqnng+vUOWb/rcWuktamwx60g
	EtC63csTfoXtwTyzv6ycN9Ip/gk7xIpBXrX9DCQs++FCHHHZUmtRlfmQibzecQ==
Date: Sun, 23 May 2021 14:53:44 +0000
From: a <mail@siarie.me>
To: gwml@gnuweeb.org
Subject: is it works?
Message-ID: <20F384F1-C4A1-447C-9401-3DDD847058F5@siarie.me>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary=----13NY8KMGWZ97WLXOBOQIRDM24FGQVP
Content-Transfer-Encoding: 7bit

------13NY8KMGWZ97WLXOBOQIRDM24FGQVP
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

I just want to know if it worked or not=2E=2E

thanks=2E=2E
------13NY8KMGWZ97WLXOBOQIRDM24FGQVP
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><body>I just want to know if it worked or not=2E=2E<br=
><br>thanks=2E=2E</body></html>
------13NY8KMGWZ97WLXOBOQIRDM24FGQVP--

--===============7036145144316243964==
Content-Type: message/rfc822
MIME-Version: 1.0

Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: confirm 4c3109c5faf25c546aa92eb6983cc9a3162c61dd
Sender: gwml-request@gnuweeb.org
From: gwml-request@gnuweeb.org
Date: Sun, 23 May 2021 14:54:11 +0000
Message-ID: <mailman.7.1621781651.19899.gwml@gnuweeb.org>

If you reply to this message, keeping the Subject: header intact,
Mailman will discard the held message.  Do this if the message is
spam.  If you reply to this message and include an Approved: header
with the list password in it, the message will be approved for posting
to the list.  The Approved: header can also appear in the first line
of the body of the reply.
--===============7036145144316243964==--
