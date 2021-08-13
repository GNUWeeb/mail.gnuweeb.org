Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id qKT3Cd2DFmEfKw8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 13 Aug 2021 14:38:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D9434C2C07;
	Fri, 13 Aug 2021 14:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628865499;
	bh=bkNBmHqAGT2+5t4vrY8YHu4KPJZ9kpgq/QRgtSfLDxk=;
	h=From:To:Subject:Date:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:Cc:From;
	b=FWpNj12L/cAbiDx8bLi1DBwTEaGJdaNxG4TgTwuHCxxx7QfTYt8O6ILK1AE6us1ir
	 z9keF61xCJZOXMipgvXg48rKNO5kfe4C7gRYJ44QgTH70SxN74i+I41t3CHfaBiVe9
	 r2afQ2iOJ0i3bhWbxsl0gRLli13kbusSgbzBkDuHYr+2X/kmUhxTiIKSwtaMA6XgXI
	 lVCJOafxu3IWXKo9au6+J8D9PFCzmKWQuLBdVDa28b+ZoxwurpUZb0P25Z2CA06JV7
	 LKSzKfAhEkVE0aVJe7c58cROmTnbJveZl6P0vBhNKX0i/rk+v2u6M9vgHepYU4hyFx
	 uuwHCoU++de/A==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral.. (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 89AA7C1611;
 Fri, 13 Aug 2021 14:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628865497;
 bh=WuS/wi/7Nhr/gdcWkeP+spjfM1P6mws68woQw+iW7P4=;
 h=From:To:Cc:Subject:Date:From;
 b=RdB9Q3sz76T8s9mQ7N4NGcTOua9Qv3cBUQO6EoHN+ylfwA9cDSCJ/hFy0r/wI6Zet
 R9UjX2hrcZk0wruE70qzXLJeeMfdXBOOmojad5RccsTQyFcvM4S/QSmVau+0mWqL6f
 gt0YacQmBm3071BKjtzjKdF9e/Hz1518yvMYayKN0pJdv7/o/5KZRwbbtcpCKLPgtp
 bV9QDkUGKOVeR83gejjviu8tNT9belWLwsXgRMSSL8f5egJeSFj9VPqmHLJY3lQQTq
 OQGdrX31o2ltiEBK++fopR4Q1xZN/ncn4LsgVRVWqfv0e6pxkw8QemTR2y9bkvwBAO
 6yj47/Yti+Utw==
From: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [PATCH] generic scraper: add chat scraper
Date: Fri, 13 Aug 2021 21:37:30 +0700
Message-Id: <20210813143731.156696-1-alviro@gnuweeb.org>
X-Mailer: git-send-email 2.30.2
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi sir @ammarfaizi2, this is a small patch for chat scraper and database
bot telegram. Please review my work, if you think it's good please merge

---
Alviro Iskandar Setiawan


-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
