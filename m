Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id royoKYdlF2FNRA8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sat, 14 Aug 2021 06:41:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 4DC53C2C15;
	Sat, 14 Aug 2021 06:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628923271;
	bh=n8+0Hfj/uXdV0CeD5R8uJvIViHFh35GcWaB5qDtsnqk=;
	h=From:To:Subject:Date:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=Jhw5OdDxs9CJSFIy/M+99G3iKrSi7E5il0dgYkR1f6x83WEJ79DvkuIOJSth+/ZLV
	 lHNgD1pVXTnRjXCnEqr0cRpUakHOsStblXQfAsUCbw4InNfvY0laMz2kpcta1K1YN3
	 GeGa6IjWmmWulbB04WrCves4lSkIQPepCreHCIy4EmDnsu3ZeRI5jb17iPYVThZMYj
	 PZFwcOxNiQDwuRV7XDxLuHSLMfL5OxkySKC2k4tCrzvnytkTzHzlVKpi04kCw8S56O
	 LtYW3PhIm3zQaiUAAXKBK7hpaaebpsZ7UG/Nhn5X275Mt+H/IwYNZ1s8DaaVmaZ9fU
	 T6OONY9p+/4RQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from integral.. (unknown [182.2.68.212])
 by gnuweeb.org (Postfix) with ESMTPSA id 942F7C2B7E;
 Sat, 14 Aug 2021 06:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628923269;
 bh=5TXiX7hQqnbC6aXnAJ0k7N8/UaTy5Pwmutw4LQtQZ0k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L0oADJu9biNCxoxZwyI3P2/pJlsl7tzzrs+oZFXm7/nBfv0B/Il7MLmXH6MKD1hh1
 3AFeq1JEEbPNhe870DCUGvxrf51GfhIyz2E9vMxlBtrbCcB/wyIlGb/22jQoAW5IMW
 36opPujU0VVF9+hgAphi7+gUOMN1AyE37om1shNxjLE0N/OwLbhC9shNIbBr93nFJd
 4C5cDko68DZQg40zZKyi6EKPLZkrqcCyXjuRauqm33H/BUZ7wUpx0pwFnDEAc2bUNg
 M4TulmElnZ8V3P4raTIMAKplTk5xqOznXmYDO+OfQzFWgSr4sPa3rTAV5tyOQkmaKu
 3ST3+H3QVf1rg==
From: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
To: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Subject: [PATCH] Scraper: don't make runScrapers() be class method
Date: Sat, 14 Aug 2021 13:40:42 +0700
Message-Id: <20210814064042.6145-2-alviro@gnuweeb.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210814064042.6145-1-alviro@gnuweeb.org>
References: <1900a7bd-59fa-6ecd-8eca-b8aabff6a846@gnuweeb.org>
 <20210814064042.6145-1-alviro@gnuweeb.org>
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

Don't plug runScrapers() inside the class Scraper, this can be inlined
inside Scraper::run().

Cc: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>
Link: https://gwml.gnuweeb.org/pipermail/gwml/20210813/000068.html
Signed-off-by: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
---
 src/tgvisd/Scraper.cpp | 10 +++++-----
 src/tgvisd/Scraper.hpp |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/src/tgvisd/Scraper.cpp b/src/tgvisd/Scraper.cpp
index c8e5c92..b5dfedd 100644
--- a/src/tgvisd/Scraper.cpp
+++ b/src/tgvisd/Scraper.cpp
@@ -42,7 +42,7 @@ Scraper::~Scraper(void)
 }
 
 
-void Scraper::runScrapers(void)
+static void runScrapers(Scraper *sc)
 {
 	// auto st = db->prepare("SELECT eeee;");
 	// st->execute();
@@ -58,10 +58,10 @@ void Scraper::runScrapers(void)
 	// }
 	// sleep(1);
 
-	chatScraper_ = new tgvisd::Scrapers::ChatScraper(this);
+	sc->chatScraper_ = new tgvisd::Scrapers::ChatScraper(sc);
 
-	std::thread chatScraper([this]{
-		this->chatScraper_->run();
+	std::thread chatScraper([sc]{
+		sc->chatScraper_->run();
 	});
 	chatScraper.join();
 }
@@ -75,7 +75,7 @@ void Scraper::run(void)
 	}
 
 	try {
-		runScrapers();
+		runScrapers(this);
 	} catch (std::runtime_error &e) {
 		pr_err("std::runtime_error: %s", e.what());
 		main_->doStop();
diff --git a/src/tgvisd/Scraper.hpp b/src/tgvisd/Scraper.hpp
index a7308d0..1d019e2 100644
--- a/src/tgvisd/Scraper.hpp
+++ b/src/tgvisd/Scraper.hpp
@@ -30,10 +30,10 @@ public:
 		return main_;
 	}
 
+	tgvisd::Scrapers::ChatScraper *chatScraper_ = nullptr;
+
 private:
-	void runScrapers(void);
 	Main *main_ = nullptr;
-	tgvisd::Scrapers::ChatScraper *chatScraper_ = nullptr;
 };
 
 } /* namespace tgvisd */
-- 
2.30.2

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
