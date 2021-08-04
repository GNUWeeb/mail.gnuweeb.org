Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id oJtRO1wwCmFuwQ0Aav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 04 Aug 2021 06:14:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id E0F91C2B64;
	Wed,  4 Aug 2021 06:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
	s=default; t=1628057691;
	bh=q9rQn8nM5/rhEiKfTIPEDOu7+z9MSKgRXJriPH+xUFs=;
	h=Subject:To:References:From:Date:In-Reply-To:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=MdoZhmYf3umoCQhPDS1L6yOWZd++gsoHXJmXoA+ifmK4yQHXSedyUNspAbJ+AwWm7
	 Cn2GMfsVam8BA59eFWJcosUFhj5sOC0mXecqG3wKiugJj2ml1AigUxPSQRIq+lS8Av
	 1JGa6l+DCzBldVkiaurxEJWOCqmpT+o3kytNOLEiNbp4v7ha/VxglPBoG3D5O+iKSg
	 dBi9JZ5ZEahy6bihRXQx0HI1jjWu7vfYJBLwhj7wls5+kHcACp3R0lZMwKtKsuvbLL
	 p6dPJA89H7ViQzuDI9evygdQMb7JNaswcYqiSjOSjAd0Bs5YFTzox0GZFOJvS2kOnv
	 4ae6/JT+SJCHw==
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from [10.7.7.2] (unknown [68.183.184.174])
 by gnuweeb.org (Postfix) with ESMTPSA id B8D85C2AC0;
 Wed,  4 Aug 2021 06:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gnuweeb.org;
 s=default; t=1628057689;
 bh=eeWfr96ZIXMNpRpbRqGDNup/bks1mWaLs6ILIqMetog=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=YZTeSIsFLIQ/+gD44S+46DBPjGBg4EHp1O1PgWhLGXYaxoJSyz4ZK8Wed/CdnTNuI
 96BhJgh+QhbjeWjiPfsZI0NI8h5lRO6W+KGaP8QAe+7Sq2Ophm85l3gdK8yz8S7o+0
 Ko0B2Kc39FaUhVvPeLSR26iSV9tvFLIWc31f8HqQhyGJ+63rITshoFuziCGhaI72yv
 RrIdOViM4pxRnVMlUhPnPl+XNS0OiXnGBnIxyZ4yzsvvco5RYIC6E5ih9Rg+KU0JwK
 ZWXNQjONzEtxP+djwKlyqlQuCuzvPxSEhWkkdS+uEbLn/i28abQJ7fxgIvBj5gvQ6R
 F+78jI0JgkmbQ==
Subject: Re: [module] Create quiz module
To: Alviro Iskandar Setiawan <alviro@gnuweeb.org>
References: <e7d78869-bbb3-93fe-d6c6-8514b4ce6f98@gnuweeb.org>
 <50cbac51-98c8-0851-46c7-904d7ced656f@gnuweeb.org>
 <034dca05-416e-d60c-d6ac-35580551acf3@gnuweeb.org>
From: Ammar Faizi <ammarfaizi2@gnuweeb.org>
Message-ID: <c54b2e0c-d6de-f9f8-5459-71b3f7ede07a@gnuweeb.org>
Date: Wed, 4 Aug 2021 13:14:40 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <034dca05-416e-d60c-d6ac-35580551acf3@gnuweeb.org>
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

On 8/3/21 9:23 PM, Alviro Iskandar Setiawan wrote:
> Yes sir, I have experience with mysql database
> 

All good, thanks for your availability. I'll post something for you to
try later today. I'll see if I can tighten this up.


-- 
Ammar
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
