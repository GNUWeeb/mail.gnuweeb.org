Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id mOYRKcmhFmGVLw8Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 13 Aug 2021 16:46:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id C3FE7C2B4D;
	Fri, 13 Aug 2021 16:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628873160;
	bh=Fe/UEfw1nAtizf+wYIvS1ZBu3sCQjvc8fnrw6Hbjdkk=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=hrNCiQmJsxwKytFEnKLa7e9AV2FjXvh9v0xiRlBPWsBOQpLubOe3LS5AcO3xKgIcy
	 2CbV3ZWinPPBvHsrDPWoeBl5QhOwiUwoffj7OJf8JO3btANlP4qgm5oXe2IpguHnx/
	 GlUTBu+BMoMSV6USfRo18vjb1Xa8BlaLFTFd1H8eKXlfQ1dGL21Wl0BL//m2PU0900
	 HGeRHFuuCnS0Fdlw79GYcUlq/MHThSF+67gqHDnCErtsD9DDkioGlXB079xh/GuJ8m
	 1RmtcJzlsST8oZxRztvI1crTd+bndxqm0w5Ba8g5XhuBlNs5eLvvXai7jjcAF9RGDp
	 J+SbSNHZnTahQ==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id 1A97BC2B4D;
 Fri, 13 Aug 2021 16:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628873159;
 bh=5ah8bY7qM4A77YhDiiSMH2rkSpd8Z/Xs0uNbYzmgKHk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=EZHam/4KyczvR7tSwro8sN+UF0moXF/WYt4WyUM3ocZAuSUDvqYwKUkCFYaO9XOAG
 Z7E8dw9289m28pWmckGuFwc01KDv6Qim29fbcgIM0m+AZj6rFpgtt2qM5fJaKDM8N/
 1tNB3L5aEyu27E3RMR3v7mevAKWTKHPWO7doVlIwtjexdp9AKDZajY8XknE+gxjdMI
 12sbTmLPHByHv+gZQ4BBNqRAd3EELJLdsfhQI7iCNIthqFSOpttwMdfs5z8ll54wuA
 QWZe52NxaJUkj9EjMrEu8016tpUyXBimuG0TlBm66ZDw131ZzthgWklp3/zXVEVuqj
 iTti7n+6yQiEQ==
Subject: Re: [PATCH] generic scraper: add chat scraper
To: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
References: <20210813143731.156696-1-alviro@gnuweeb.org>
 <20210813143731.156696-2-alviro@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <1900a7bd-59fa-6ecd-8eca-b8aabff6a846@gnuweeb.org>
Date: Fri, 13 Aug 2021 23:45:56 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210813143731.156696-2-alviro@gnuweeb.org>
Content-Language: en-US
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

Hi Alviro,

Thank you for your contribution to GNU/Weeb project, here is my code
review for your patch. Please address my request and I will merge your
patch to the main repo. I only see one problem with your patch.

> -static void run_scraper(Scraper *s, Main *main, DB *db)
> +void Scraper::runScrapers(void)
>  {
> -	auto st = db->prepare("SELECT eeee;");
> -	st->execute();
> -	if (auto row = st->fetch()) {
> -		int ft;
> -		char buffer[64];
> -		auto stmt = st->getStmt();
> -		size_t len = sizeof(buffer);
> -
> -		ft = mysqlx_get_bytes(row, 0, 0, buffer, &len);
> -		mysql_fetch_chk(ft, stmt);
> -		pr_notice("buf = %s (len = %zu)", buffer, len);
> -	}
> -	sleep(1);
> +	// auto st = db->prepare("SELECT eeee;");
> +	// st->execute();
> +	// if (auto row = st->fetch()) {
> +	// 	int ft;
> +	// 	char buffer[64];
> +	// 	auto stmt = st->getStmt();
> +	// 	size_t len = sizeof(buffer);
> +
> +	// 	ft = mysqlx_get_bytes(row, 0, 0, buffer, &len);
> +	// 	mysql_fetch_chk(ft, stmt);
> +	// 	pr_notice("buf = %s (len = %zu)", buffer, len);
> +	// }
> +	// sleep(1);
> +
> +	chatScraper_ = new tgvisd::Scrapers::ChatScraper(this);
> +
> +	std::thread chatScraper([this]{
> +		this->chatScraper_->run();
> +	});
> +	chatScraper.join();
>  }

Don't plug runScrapers() inside the class Scraper, this can be inlined
inside Scraper::run(). So please use static function without class.

Just that, the rest is fine to me.

Regards,
Ammar
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
