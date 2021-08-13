Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id eu6EKeWDFmFvKw8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 13 Aug 2021 14:38:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 1F055C2B17;
	Fri, 13 Aug 2021 14:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628865509;
	bh=QaNXExnSIX00D3tpix1dj8/AjrUaUcu0npYq3DxElBc=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=ieQEklFDh27TPS7JEb59W5DbNvAzPnnuggh3OwHl6V3hFFc2K/xQdzsp7CpnVPMLF
	 m/SflGsrrIyblma8xrTwU/h+YXEpwfVn2YMWthvfT1eEn3HSblFFcZAHH8wkTa660j
	 2e8Q5Wove65youYg+lXmMSwnHON6pB2NBMN2cSoxAfu8mp0gJZpPsMD2edntAWNBs7
	 4EcT6lZVau0g0ySLSMWp1WpmRy5F11O0f+9R54nHeO/sTe8Un/6ZqhDAeZs+0kdmeB
	 ZEB4/+o1HeGe+osSwJ47IVrY47EADdQFwgwU6JEfLNmaEWc2AMEGslK/ZFrqq5n5WJ
	 yVSdaydGQebtw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral.. (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id CBA84C2B17;
 Fri, 13 Aug 2021 14:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628865507;
 bh=18xj47kaJVdZc0xdShoNpxdNLUFUKQqA/4m26WgiGeU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FeJlW1fgAPGnLJsYb6Rft6p1p81i3BLQMi7XID/XZpQ26U7vBRCuc4ajcDjopXrtY
 JNqUWUfHRciPbYTmLuqwzy7ytr9hYK46tfh2yA/8IoblcazghqPkyV0wxPSOwAMsJw
 GryZhHubi+ju5rGt7gFwZ3po5NNkcd1bWzHeV5UGGWLoa7fwRSqICl6GFOBg1yuiR7
 JrilsxJUX5LgaBnRzoEfeRvzscAWMQucyZfVCdULEeQKok6N0D0R3wa6u4sPuGS/4u
 TlibDmZguWDdeGR55jYXTG876z7ma9EAIBcx9nqXGecQfgdUajMt0zlNSAF4Bd+J/A
 rY8QdAvNSm+fQ==
From: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [PATCH] generic scraper: add chat scraper
Date: Fri, 13 Aug 2021 21:37:31 +0700
Message-Id: <20210813143731.156696-2-alviro@gnuweeb.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210813143731.156696-1-alviro@gnuweeb.org>
References: <20210813143731.156696-1-alviro@gnuweeb.org>
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

Changes:
 - Create tgvisd::Scrapers::ChatScraper class.
 - Move `db_` object from tgvisd::Scraper to
   tgvisd::Scrapers::ChatScraper.

Each scraper instance should have its own class inside the namespace
tgvisd::Scrapers. Each of them should also has its own database
connection instance if needed.

Cc: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Signed-off-by: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
---
 CMakeLists.txt                      |  2 +
 src/tgvisd/Main.hpp                 |  5 +++
 src/tgvisd/Scraper.cpp              | 48 ++++++++++----------
 src/tgvisd/Scraper.hpp              | 10 ++++-
 src/tgvisd/Scrapers/ChatScraper.cpp | 69 +++++++++++++++++++++++++++++
 src/tgvisd/Scrapers/ChatScraper.hpp | 47 ++++++++++++++++++++
 6 files changed, 156 insertions(+), 25 deletions(-)
 create mode 100644 src/tgvisd/Scrapers/ChatScraper.cpp
 create mode 100644 src/tgvisd/Scrapers/ChatScraper.hpp

diff --git a/CMakeLists.txt b/CMakeLists.txt
index f97fc83..4d32c4b 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -21,6 +21,8 @@ set(TGVISD_TD_SOURCE
 set(TGVISD_CORE_SOURCE
   src/tgvisd/DBFunc/DBStatement.cpp
   src/tgvisd/DBFunc/DBStatement.hpp
+  src/tgvisd/Scrapers/ChatScraper.cpp
+  src/tgvisd/Scrapers/ChatScraper.hpp
   src/tgvisd/common.hpp
   src/tgvisd/DB.cpp
   src/tgvisd/DB.hpp
diff --git a/src/tgvisd/Main.hpp b/src/tgvisd/Main.hpp
index 6067986..60c1cba 100644
--- a/src/tgvisd/Main.hpp
+++ b/src/tgvisd/Main.hpp
@@ -38,6 +38,11 @@ public:
 		return isReady_;
 	}
 
+	inline tgvisd::Td::Td *getTd(void)
+	{
+		return &td_;
+	}
+
 private:
 	tgvisd::Td::Td td_;
 	volatile bool isReady_ = false;
diff --git a/src/tgvisd/Scraper.cpp b/src/tgvisd/Scraper.cpp
index d6221ab..c8e5c92 100644
--- a/src/tgvisd/Scraper.cpp
+++ b/src/tgvisd/Scraper.cpp
@@ -35,28 +35,35 @@ Scraper::Scraper(Main *main, std::thread *threadPtr):
 
 Scraper::~Scraper(void)
 {
-	if (db_) {
-		delete db_;
-		db_ = nullptr;
+	if (chatScraper_) {
+		delete chatScraper_;
+		chatScraper_ = nullptr;
 	}
 }
 
 
-static void run_scraper(Scraper *s, Main *main, DB *db)
+void Scraper::runScrapers(void)
 {
-	auto st = db->prepare("SELECT eeee;");
-	st->execute();
-	if (auto row = st->fetch()) {
-		int ft;
-		char buffer[64];
-		auto stmt = st->getStmt();
-		size_t len = sizeof(buffer);
-
-		ft = mysqlx_get_bytes(row, 0, 0, buffer, &len);
-		mysql_fetch_chk(ft, stmt);
-		pr_notice("buf = %s (len = %zu)", buffer, len);
-	}
-	sleep(1);
+	// auto st = db->prepare("SELECT eeee;");
+	// st->execute();
+	// if (auto row = st->fetch()) {
+	// 	int ft;
+	// 	char buffer[64];
+	// 	auto stmt = st->getStmt();
+	// 	size_t len = sizeof(buffer);
+
+	// 	ft = mysqlx_get_bytes(row, 0, 0, buffer, &len);
+	// 	mysql_fetch_chk(ft, stmt);
+	// 	pr_notice("buf = %s (len = %zu)", buffer, len);
+	// }
+	// sleep(1);
+
+	chatScraper_ = new tgvisd::Scrapers::ChatScraper(this);
+
+	std::thread chatScraper([this]{
+		this->chatScraper_->run();
+	});
+	chatScraper.join();
 }
 
 
@@ -68,12 +75,7 @@ void Scraper::run(void)
 	}
 
 	try {
-		db_ = DB::create_conn_from_env();
-		db_->connect();
-
-		while (!main_->getStop())
-			run_scraper(this, main_, db_);
-
+		runScrapers();
 	} catch (std::runtime_error &e) {
 		pr_err("std::runtime_error: %s", e.what());
 		main_->doStop();
diff --git a/src/tgvisd/Scraper.hpp b/src/tgvisd/Scraper.hpp
index 75bc6bf..a7308d0 100644
--- a/src/tgvisd/Scraper.hpp
+++ b/src/tgvisd/Scraper.hpp
@@ -10,11 +10,11 @@
 #ifndef TGVISD__SCRAPER_HPP
 #define TGVISD__SCRAPER_HPP
 
-#include <tgvisd/DB.hpp>
 #include <tgvisd/Td/Td.hpp>
 #include <tgvisd/common.hpp>
 
 #include <tgvisd/Main.hpp>
+#include <tgvisd/Scrapers/ChatScraper.hpp>
 
 namespace tgvisd {
 
@@ -25,9 +25,15 @@ public:
 	~Scraper(void);
 	void run(void);
 
+	inline Main *getMain(void)
+	{
+		return main_;
+	}
+
 private:
-	DB *db_ = nullptr;
+	void runScrapers(void);
 	Main *main_ = nullptr;
+	tgvisd::Scrapers::ChatScraper *chatScraper_ = nullptr;
 };
 
 } /* namespace tgvisd */
diff --git a/src/tgvisd/Scrapers/ChatScraper.cpp b/src/tgvisd/Scrapers/ChatScraper.cpp
new file mode 100644
index 0000000..1fe5ce8
--- /dev/null
+++ b/src/tgvisd/Scrapers/ChatScraper.cpp
@@ -0,0 +1,69 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * @author Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+ * @license GPL-2.0
+ * @package tgvisd
+ *
+ * Copyright (C) 2021  Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+ */
+
+#include <limits>
+#include <tgvisd/Scrapers/ChatScraper.hpp>
+
+namespace tgvisd::Scrapers {
+
+
+ChatScraper::ChatScraper(tgvisd::Scraper *scraper):
+	scraper_(scraper)
+{
+	pr_debug("Initializing chat scraper...");
+	db_ = DB::create_conn_from_env();
+	db_->connect();
+	td_ = scraper_->getMain()->getTd();
+}
+
+
+ChatScraper::~ChatScraper(void)
+{
+	if (db_) {
+		delete db_;
+		db_ = nullptr;
+	}
+}
+
+
+void ChatScraper::run(void)
+{
+	/*
+	 * This function retrieves the list of chat_ids.
+	 */
+	pr_debug("ChatScraper: Getting chatList...");
+	auto chats = getChat(
+		nullptr,
+		std::numeric_limits<std::int64_t>::max(),
+		0,
+		300
+	);
+	pr_debug("ChatScraper: Got %d chat ID(s)", chats->total_count_);
+}
+
+
+td_api::object_ptr<td_api::chats> ChatScraper::getChat(
+		td_api::object_ptr<td_api::ChatList> &&chat_list,
+		int64_t offset_order,
+		int64_t offset_chat_id,
+		int32_t limit
+	)
+{
+	return td_->send_query_sync<td_api::getChats, td_api::chats>(
+		td_api::make_object<td_api::getChats>(
+			std::move(chat_list),
+			offset_order,
+			offset_chat_id,
+			limit
+		)
+	);
+}
+
+
+} /* namespace tgvisd::Scrapers */
diff --git a/src/tgvisd/Scrapers/ChatScraper.hpp b/src/tgvisd/Scrapers/ChatScraper.hpp
new file mode 100644
index 0000000..c851b6c
--- /dev/null
+++ b/src/tgvisd/Scrapers/ChatScraper.hpp
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * @author Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+ * @license GPL-2.0
+ * @package tgvisd
+ *
+ * Copyright (C) 2021  Alviro Iskandar Setiawan <alviro@gnuweeb.org>
+ */
+
+#ifndef TGVISD__SCRAPERS__CHATSCRAPER_HPP
+#define TGVISD__SCRAPERS__CHATSCRAPER_HPP
+
+#include <tgvisd/DB.hpp>
+#include <tgvisd/Td/Td.hpp>
+#include <tgvisd/common.hpp>
+
+namespace tgvisd {
+
+class Scraper;
+
+} /* namespace tgvisd */
+
+namespace tgvisd::Scrapers {
+
+class ChatScraper {
+public:
+	ChatScraper(tgvisd::Scraper *scraper);
+	~ChatScraper(void);
+	void run(void);
+
+	td_api::object_ptr<td_api::chats> getChat(
+		td_api::object_ptr<td_api::ChatList> &&chat_list,
+		int64_t offset_order,
+		int64_t offset_chat_id,
+		int32_t limit
+	);
+private:
+	tgvisd::DB *db_ = nullptr;
+	tgvisd::Td::Td *td_ = nullptr;
+	tgvisd::Scraper *scraper_ = nullptr;
+};
+
+} /* namespace tgvisd::Scrapers */
+
+#include <tgvisd/Scraper.hpp>
+
+#endif /* #ifndef TGVISD__SCRAPERS__CHATSCRAPER_HPP */
-- 
2.30.2

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
