Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id wzkxH3cRCWGXnQ0Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Tue, 03 Aug 2021 09:50:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 41B7DC2B32;
	Tue,  3 Aug 2021 09:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1627984247;
	bh=8XFXEAgrB9dT94yD30T22DQD+FcAXPwrJ97UErK97QA=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=JlqKJuV19509mxi3rPnlcMwwM8oRbhbX2S/3tYxkn13WNZdgKs5zC4okiZfXm+wZp
	 lJZ9Alyk9+ghqRd66EPeEhsyKQGF6BUv/glvVLS3W3NlD8Dw+Vk5AUIWGGDyKbV6T5
	 2cl4+5ejZrC/W56aVdU0Jwpyoutanrlg7B7v9B7ix2s0CipMWVF2Bdcsu3uo+mpZR1
	 +OcFJf4u920EL3tTBEogDZUKFcSA0k+RYyi49TlJNMJtkunJgYgyhnerFuMqqdmEW7
	 Lm/cV1YHP1L+xPKV7XwrdlLDPgSawxjcSkzX/+4EELkxQtWw528W4BJ7rgKA2Uz8qV
	 j1tImohafZ/SA==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral.. (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 104E7C2B32;
 Tue,  3 Aug 2021 09:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1627984245;
 bh=0VJPmWykHlaxjWRu5ZiT97JEl2hart+0JmaZCMjv5UA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KnzS0QnI0FnY8H9S/KsJB7a5e8akGau5zBZ3Q1qtxnbbCW9a9QUCc47BbTh7zDUdR
 TMzTBOsZc7jCKc/j5PooLJBWv5VvR6bE4rClRnnBK082za06+CcNlAJyw3p59qnalT
 /h/r5qJFraqSQh/pYmQfx+6NUwYD8cJEzoIya9htBXF+zmWmC8S2JDA6sbF2uYUL7R
 cB3s8G2xiemwEfhqg/Mu98w676YeOW3Aq3ISzkNP6yS8tMEYwPyC1nNnggUHqVckgv
 BO/01SmJAHIxqp6sVyT/wtS6nNeGTXfIcN4EmjXTka7dWrd8dNeO3eukjx5GswqmJs
 n+hdlrsUGXDwg==
From: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [PATCH] Add my public key
Date: Tue,  3 Aug 2021 16:49:43 +0700
Message-Id: <20210803094943.219560-2-alviro@gnuweeb.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210803094943.219560-1-alviro@gnuweeb.org>
References: <20210803094943.219560-1-alviro@gnuweeb.org>
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
Cc: Alviro Iskandar Setiawan <alviro@gnuweeb.org>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

pub   rsa4096 2021-08-03 [SC] [expires: 2026-08-02]
      5B74EE6A5191AB67DDAA6DDB081A18949A7B3811
uid                      Alviro Iskandar Setiawan <alviro@gnuweeb.org>
sub   rsa4096 2021-08-03 [E] [expires: 2026-08-02]

Signed-off-by: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
---
 ...74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc | 58 +++++++++++++++++++
 map.txt                                       |  5 +-
 2 files changed, 62 insertions(+), 1 deletion(-)
 create mode 100644 keys/5B74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc

diff --git a/keys/5B74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc b/keys/5B74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc
new file mode 100644
index 0000000..eaa32ca
--- /dev/null
+++ b/keys/5B74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc
@@ -0,0 +1,58 @@
+pub   rsa4096 2021-08-03 [SC] [expires: 2026-08-02]
+      5B74EE6A5191AB67DDAA6DDB081A18949A7B3811
+uid           Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+sig        081A18949A7B3811 2021-08-03   [selfsig]
+sub   rsa4096 2021-08-03 [E] [expires: 2026-08-02]
+sig        081A18949A7B3811 2021-08-03   [keybind]
+-----BEGIN PGP PUBLIC KEY BLOCK-----
+
+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
+Zdh4EyRUTxPzNIJy/63xCUliNbzg
+=lTOO
+-----END PGP PUBLIC KEY BLOCK-----
diff --git a/map.txt b/map.txt
index 57bd062..fae7696 100644
--- a/map.txt
+++ b/map.txt
@@ -9,6 +9,9 @@
 U: Akiekano <akiekano@gnuweeb.org>
 P: 6E3A811C542E25843ED12841831B1076737545DF.asc
 
+U: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+P: 5B74EE6A5191AB67DDAA6DDB081A18949A7B3811.asc
+
 U: Ammar Faizi <ammarfaizi2@gmail.com>
 P: 2FD0C09EB80DB93A7484F545A01EDC09AA8ABA95.asc
 P: 9CF147792F670851CC899B94CC8CDAF7A2DC6FE8.asc
@@ -29,4 +32,4 @@ P: 50713F81DC2B8C208009E925C38F59C1306A6E8F.asc
 U: mdv16h <deo@gnuweeb.org>
 P: 0CDE97A14228A94FF3331B64F15D5AA1A4865B8C.asc
 
-# Generated at: 2021-08-01T20:13:07+00:00
+# Generated at: 2021-08-03T09:22:31+00:00
-- 
2.30.2

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
