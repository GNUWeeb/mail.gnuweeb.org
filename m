Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id wBweI9zXs2D80AQAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Sun, 30 May 2021 18:22:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id 2944AC2A6C;
	Sun, 30 May 2021 18:22:20 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=RzQ3Mp0M;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54]) by gnuweeb.org (Postfix) with ESMTPS id AF972BE663
 for <gwml@gnuweeb.org>; Sun, 30 May 2021 18:22:17 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id v18so4523029qvx.10
 for <gwml@gnuweeb.org>; Sun, 30 May 2021 11:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Ui514dV60YlHz8U6fARQTvER3rZjoyUWtQGlbjFrFUw=;
 b=RzQ3Mp0M/bJabIke0Rxnw9EeKRFRjeaIzCOpDAFRH6avAAUwnTnCBBjjSBvmSegVyt
 Y0iRyqhwBxqiHEpVXCz4euI82ohvR945617910PaM5/2VhbkincYNpQiGpOrLU8AnOBi
 RlgbM2cSO1blv+20mXYRDpcoc0h1NA99gCM6nveieFmUoNALYo7wswMHqVX1LoSN6ndu
 MT9X2aaQNPNHBK0g5Wwi/ET1fYR1sPoik/x2Y4BiOQ2IwjyPfT0pCOI4ekvg9BV2WrQK
 2XalgQGvA1WgNj5z4mVmj7K/pO9KFuB5cdR+c89HKdwGk9LYJ3aKmXxyxMPol+tc8X9T
 dFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Ui514dV60YlHz8U6fARQTvER3rZjoyUWtQGlbjFrFUw=;
 b=axu3dEWONKxVMsYpYp6Gf9mApVgzI480pca5HyTYCn8fJ0wgWMS9KAKQLh/CKfhd8O
 EQGrYom6uV+mqpgEnFMJjUUNjmJ0oGlJZJlXwad7W0S4bZvAd7P8bh9q9i4beoAfSSow
 mQVwP2B76+EHgZhapkJO30H18b9F0cyM1BcgVvkB0SUl0KJKyNfSS1wQLdkk8fAGt52d
 jTpnukoCxpG+dAUcJuRAtiaAwksukNzeSl95LR73HR1hIbrrPUYyZ7o7xbYuJ3c0bmo7
 bOJZlUzYyJHTh+taG6bRhlsHiNNUJJECwjLPxGXpVXQk9uxDuj1QPpaofjPsYymAfoVm
 hm1A==
X-Gm-Message-State: AOAM531wDRfVNt0279K2bBQ5SIi6whPyF8uJ0uu2oxfXvDL1WU3Xv989
 WfdqtTA+gq7tCzaPoyaRTRGN1jWD/WScQ6wmtKkD6YIm
X-Google-Smtp-Source: ABdhPJyIMl/bQf9v3/bWao10Nk8oZ3wjMlPI66GNVoC5qFjBEd5bpgSouzqKXOrHccuArCdUo61xn1Zo4NkFGnUZouk=
X-Received: by 2002:a0c:8dcd:: with SMTP id u13mr5700308qvb.18.1622398935183; 
 Sun, 30 May 2021 11:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <65757393-183c-3e17-669e-321965855d67@gnuweeb.org>
 <f7890495-a111-8061-07f9-6da7c70f770f@gnuweeb.org>
In-Reply-To: <f7890495-a111-8061-07f9-6da7c70f770f@gnuweeb.org>
From: Nur Hikari <nrudesu@gmail.com>
Date: Mon, 31 May 2021 01:22:03 +0700
Message-ID: <CABQ4W=MVfo9i3x7THF4UFLxQjv6BnJPnQiaOV33N09rW16cD5w@mail.gmail.com>
Subject: Re: Auto backup is experiencing slow upload
To: "GNU/Weeb Mailing List" <gwml@gnuweeb.org>
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
Content-Type: multipart/mixed; boundary="===============2764720082401379451=="
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

--===============2764720082401379451==
Content-Type: multipart/alternative; boundary="0000000000003737b805c3903072"

--0000000000003737b805c3903072
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone, As I know from my friends,  cloud provider we use somewhat
limit bandwidth to outside IIX and Telegram asia server is hosted ouside
IIX.
IIX =3D Indonesia Internet Exchange

2021=E5=B9=B45=E6=9C=8830=E6=97=A5(=E6=97=A5) 16:23 Mysticial <mysticial@gn=
uweeb.org>:

> Have just executed the backup manually (without waiting it gets
> scheduled by crontab). The result is good enough. It turned out was
> just a network issue.
>
>    root@gnuweeb:~# crontab -e
>    No modification made
>    root@gnuweeb:~# /usr/bin/env TG_BOT_TOKEN=3D"xxxxxxx"
> TG_CHANNEL_ID=3D"-xxxxxx" php /var/www/mail.gnuweeb.org/backup.php >
> /root/telegram_backup.log 2>&1
>    root@gnuweeb:~# cat /root/telegram_backup.log
>    exec mysqldump --default-character-set=3Dutf8mb4 --hex-blob
> -h'127.0.0.1' -P'xxxx' -u'xxxxxxx' -p'xxxxxxxx' 'gnuweeb' | gzip -9c >
> '/tmp/gnuweeb_2021_05_30__09_16_30.sql.gz' 2>&1
> {"ok":true,"result":{"message_id":82,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb
> Backup","type":"channel"},"date":1622366191,"document":{"file_name":"gnuw=
eeb_2021_05_30__09_16_30.sql.gz","file_id":"BQACAgUAAx0ES3bxGgADUmCzV-9sipo=
k1-emQ4vLsIAx4gSjAAI_AwACgEuZVaOdI0XGKCfdHwQ","file_unique_id":"AgADPwMAAoB=
LmVU","file_size":8898},"caption":"Datetime:
>
> 2021-05-30T09:16:30+00:00\nFile name:
> gnuweeb_2021_05_30__09_16_30.sql.gz\nFile size: 8898 bytes\nMD5 sum:
> 6363e6d6c144bac530385c8e6abbbb13\nSHA1 sum:
>
> 5abc09dd14ca056a51bfdf49a92787d2a6c0e075","caption_entities":[{"offset":0=
,"length":9,"type":"bold"},{"offset":10,"length":25,"type":"code"},{"offset=
":36,"length":10,"type":"bold"},{"offset":47,"length":35,"type":"code"},{"o=
ffset":83,"length":10,"type":"bold"},{"offset":94,"length":4,"type":"code"}=
,{"offset":105,"length":8,"type":"bold"},{"offset":114,"length":32,"type":"=
code"},{"offset":147,"length":9,"type":"bold"},{"offset":157,"length":40,"t=
ype":"code"}]}}
>    exec mysqldump --default-character-set=3Dutf8mb4 --hex-blob
> -h'127.0.0.1' -P'xxxx' -u'xxxxxxx' -p'xxxxxxxx' 'xxxxxxx' | gzip -9c >
> '/tmp/xxxxxxx_2021_05_30__09_16_30.sql.gz' 2>&1
> {"ok":true,"result":{"message_id":83,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb
> Backup","type":"channel"},"date":1622366193,"document":{"file_name":"xxxx=
xxx_2021_05_30__09_16_30.sql.gz","file_id":"BQACAgUAAx0ES3bxGgADU2CzV_GM3xt=
u1t5XHttcHI0XU2UxAAJAAwACgEuZVZXtLZajzXHNHwQ","file_unique_id":"AgADQAMAAoB=
LmVU","file_size":5175},"caption":"Datetime:
>
> 2021-05-30T09:16:32+00:00\nFile name:
> xxxxxxx_2021_05_30__09_16_30.sql.gz\nFile size: 5175 bytes\nMD5 sum:
> c047b2395865e416a5a6699613f6cb9a\nSHA1 sum:
>
> 52a8f135138bef21aa1aeb572850928c0a87677b","caption_entities":[{"offset":0=
,"length":9,"type":"bold"},{"offset":10,"length":25,"type":"code"},{"offset=
":36,"length":10,"type":"bold"},{"offset":47,"length":40,"type":"code"},{"o=
ffset":88,"length":10,"type":"bold"},{"offset":99,"length":4,"type":"code"}=
,{"offset":110,"length":8,"type":"bold"},{"offset":119,"length":32,"type":"=
code"},{"offset":152,"length":9,"type":"bold"},{"offset":162,"length":40,"t=
ype":"code"}]}}
>    cd /var/vmail; tar --dereference -c gnuweeb.org | gzip -9c >
> '/tmp/vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz'
> {"ok":true,"result":{"message_id":84,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb
> Backup","type":"channel"},"date":1622366209,"document":{"file_name":"vmai=
l_gnuweeb_org_2021_05_30__09_16_30.tar.gz","file_id":"BQACAgUAAx0ES3bxGgADV=
GCzWAABlGrvg-zwE7tqESH1-v7D6AACQQMAAoBLmVVwSalpUAw4dh8E","file_unique_id":"=
AgADQQMAAoBLmVU","file_size":30319753},"caption":"Datetime:
>
> 2021-05-30T09:16:37+00:00\nFile name:
> vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz\nFile size: 30319753
> bytes\nMD5 sum: 3fb3da4610309c7729e143521010c68c\nSHA1 sum:
>
> dbf944f46d17e35deaa9165c8c867e65ea02bc13","caption_entities":[{"offset":0=
,"length":9,"type":"bold"},{"offset":10,"length":25,"type":"code"},{"offset=
":36,"length":10,"type":"bold"},{"offset":47,"length":45,"type":"code"},{"o=
ffset":93,"length":10,"type":"bold"},{"offset":104,"length":8,"type":"code"=
},{"offset":119,"length":8,"type":"bold"},{"offset":128,"length":32,"type":=
"code"},{"offset":161,"length":9,"type":"bold"},{"offset":171,"length":40,"=
type":"code"}]}}
>    cd /var/lib; tar --dereference -c mailman | gzip -9c >
> '/tmp/varlib_mailman_2021_05_30__09_16_30.tar.gz'
> {"ok":true,"result":{"message_id":85,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb
> Backup","type":"channel"},"date":1622366220,"document":{"file_name":"varl=
ib_mailman_2021_05_30__09_16_30.tar.gz","file_id":"BQACAgUAAx0ES3bxGgADVWCz=
WAuN5zu-5G273m4l1w76O60aAAJCAwACgEuZVWe9bBmK96HOHwQ","file_unique_id":"AgAD=
QgMAAoBLmVU","file_size":9438168},"caption":"Datetime:
>
> 2021-05-30T09:16:53+00:00\nFile name:
> varlib_mailman_2021_05_30__09_16_30.tar.gz\nFile size: 9438168
> bytes\nMD5 sum: dca9d29036c85e5079ca34dd7f84b54b\nSHA1 sum:
>
> eeaa966491c5682d0c474fa7ff4c5de9cd9697f9","caption_entities":[{"offset":0=
,"length":9,"type":"bold"},{"offset":10,"length":25,"type":"code"},{"offset=
":36,"length":10,"type":"bold"},{"offset":47,"length":42,"type":"code"},{"o=
ffset":90,"length":10,"type":"bold"},{"offset":101,"length":7,"type":"code"=
},{"offset":115,"length":8,"type":"bold"},{"offset":124,"length":32,"type":=
"code"},{"offset":157,"length":9,"type":"bold"},{"offset":167,"length":40,"=
type":"code"}]}}
> {"ok":true,"result":{"message_id":86,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb Backup","type":"channel"},"date":1622366221,"text":"[Time taken
> for each job]\ngnuweeb_2021_05_30__09_16_30.sql.gz: 1.7395720481873
> s\nxxxxxxx_2021_05_30__09_16_30.sql.gz: 1.5848047733307
> s\nvmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 15.539685964584
> s\nvarlib_mailman_2021_05_30__09_16_30.tar.gz: 11.031145095825
> s\n\nTotal time: 29.895207881927 s\nWall time: 29.902309894562
>
> s","entities":[{"offset":0,"length":25,"type":"bold"},{"offset":26,"lengt=
h":36,"type":"bold"},{"offset":63,"length":15,"type":"code"},{"offset":81,"=
length":41,"type":"bold"},{"offset":123,"length":15,"type":"code"},{"offset=
":141,"length":46,"type":"bold"},{"offset":188,"length":15,"type":"code"},{=
"offset":206,"length":43,"type":"bold"},{"offset":250,"length":15,"type":"c=
ode"},{"offset":269,"length":11,"type":"bold"},{"offset":281,"length":15,"t=
ype":"code"},{"offset":299,"length":10,"type":"bold"},{"offset":310,"length=
":15,"type":"code"}]}}
> {"ok":true,"result":{"message_id":87,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb Backup","type":"channel"},"date":1622366222,"text":"[File size
> for each job]\ngnuweeb_2021_05_30__09_16_30.sql.gz: 8898
> bytes\nxxxxxxx_2021_05_30__09_16_30.sql.gz: 5175
> bytes\nvmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 30319753
> bytes\nvarlib_mailman_2021_05_30__09_16_30.tar.gz: 9438168
> bytes\n\nTotal size: 39771994
>
> bytes","entities":[{"offset":0,"length":24,"type":"bold"},{"offset":25,"l=
ength":36,"type":"bold"},{"offset":62,"length":4,"type":"code"},{"offset":7=
3,"length":41,"type":"bold"},{"offset":115,"length":4,"type":"code"},{"offs=
et":126,"length":46,"type":"bold"},{"offset":173,"length":8,"type":"code"},=
{"offset":188,"length":43,"type":"bold"},{"offset":232,"length":7,"type":"c=
ode"},{"offset":247,"length":11,"type":"bold"},{"offset":259,"length":8,"ty=
pe":"code"}]}}
> {"ok":true,"result":{"message_id":88,"sender_chat":{"id":-xxxxxxxx,"title=
":"[Internal]
>
> GNU/Weeb
> Backup","type":"channel"},"chat":{"id":-xxxxxxxx,"title":"[Internal]
> GNU/Weeb
>
> Backup","type":"channel"},"date":1622366223,"text":"=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D"}}
>    root@gnuweeb:~#
>
> Result:
>    [Time taken for each job]
>    gnuweeb_2021_05_30__09_16_30.sql.gz: 1.7395720481873 s
>    postfixadmin_2021_05_30__09_16_30.sql.gz: 1.5848047733307 s
>    vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 15.539685964584 s
>    varlib_mailman_2021_05_30__09_16_30.tar.gz: 11.031145095825 s
>
>    Total time: 29.895207881927 s
>    Wall time: 29.902309894562 s
>
>    [File size for each job]
>    gnuweeb_2021_05_30__09_16_30.sql.gz: 8898 bytes
>    postfixadmin_2021_05_30__09_16_30.sql.gz: 5175 bytes
>    vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 30319753 bytes
>    varlib_mailman_2021_05_30__09_16_30.tar.gz: 9438168 bytes
>
>    Total size: 39771994 bytes
>
> --
> GWML mailing list
> GWML@gnuweeb.org
> https://gwml.gnuweeb.org/listinfo/gwml
>

--0000000000003737b805c3903072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi everyone, As I know from my friends,=
=C2=A0 cloud provider we use somewhat limit bandwidth to outside IIX and Te=
legram asia server is hosted ouside IIX.</div><div dir=3D"auto">IIX =3D Ind=
onesia Internet Exchange</div><div dir=3D"auto"><br></div><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">2021=E5=B9=B45=E6=9C=8830=
=E6=97=A5(=E6=97=A5) 16:23 Mysticial &lt;<a href=3D"mailto:mysticial@gnuwee=
b.org" target=3D"_blank" rel=3D"noreferrer">mysticial@gnuweeb.org</a>&gt;:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">Have just executed the backup manua=
lly (without waiting it gets<br>
scheduled by crontab). The result is good enough. It turned out was<br>
just a network issue.<br>
<br>
=C2=A0=C2=A0 root@gnuweeb:~# crontab -e<br>
=C2=A0=C2=A0 No modification made<br>
=C2=A0=C2=A0 root@gnuweeb:~# /usr/bin/env TG_BOT_TOKEN=3D&quot;xxxxxxx&quot=
; <br>
TG_CHANNEL_ID=3D&quot;-xxxxxx&quot; php /var/www/<a href=3D"http://mail.gnu=
weeb.org/backup.php" rel=3D"noreferrer noreferrer noreferrer" target=3D"_bl=
ank">mail.gnuweeb.org/backup.php</a> &gt; <br>
/root/telegram_backup.log 2&gt;&amp;1<br>
=C2=A0=C2=A0 root@gnuweeb:~# cat /root/telegram_backup.log<br>
=C2=A0=C2=A0 exec mysqldump --default-character-set=3Dutf8mb4 --hex-blob <b=
r>
-h&#39;127.0.0.1&#39; -P&#39;xxxx&#39; -u&#39;xxxxxxx&#39; -p&#39;xxxxxxxx&=
#39; &#39;gnuweeb&#39; | gzip -9c &gt; <br>
&#39;/tmp/gnuweeb_2021_05_30__09_16_30.sql.gz&#39; 2&gt;&amp;1<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:82,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot;:1622366=
191,&quot;document&quot;:{&quot;file_name&quot;:&quot;gnuweeb_2021_05_30__0=
9_16_30.sql.gz&quot;,&quot;file_id&quot;:&quot;BQACAgUAAx0ES3bxGgADUmCzV-9s=
ipok1-emQ4vLsIAx4gSjAAI_AwACgEuZVaOdI0XGKCfdHwQ&quot;,&quot;file_unique_id&=
quot;:&quot;AgADPwMAAoBLmVU&quot;,&quot;file_size&quot;:8898},&quot;caption=
&quot;:&quot;Datetime: <br>
2021-05-30T09:16:30+00:00\nFile name: <br>
gnuweeb_2021_05_30__09_16_30.sql.gz\nFile size: 8898 bytes\nMD5 sum: <br>
6363e6d6c144bac530385c8e6abbbb13\nSHA1 sum: <br>
5abc09dd14ca056a51bfdf49a92787d2a6c0e075&quot;,&quot;caption_entities&quot;=
:[{&quot;offset&quot;:0,&quot;length&quot;:9,&quot;type&quot;:&quot;bold&qu=
ot;},{&quot;offset&quot;:10,&quot;length&quot;:25,&quot;type&quot;:&quot;co=
de&quot;},{&quot;offset&quot;:36,&quot;length&quot;:10,&quot;type&quot;:&qu=
ot;bold&quot;},{&quot;offset&quot;:47,&quot;length&quot;:35,&quot;type&quot=
;:&quot;code&quot;},{&quot;offset&quot;:83,&quot;length&quot;:10,&quot;type=
&quot;:&quot;bold&quot;},{&quot;offset&quot;:94,&quot;length&quot;:4,&quot;=
type&quot;:&quot;code&quot;},{&quot;offset&quot;:105,&quot;length&quot;:8,&=
quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:114,&quot;length&quot=
;:32,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:147,&quot;lengt=
h&quot;:9,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:157,&quot;=
length&quot;:40,&quot;type&quot;:&quot;code&quot;}]}}<br>
=C2=A0=C2=A0 exec mysqldump --default-character-set=3Dutf8mb4 --hex-blob <b=
r>
-h&#39;127.0.0.1&#39; -P&#39;xxxx&#39; -u&#39;xxxxxxx&#39; -p&#39;xxxxxxxx&=
#39; &#39;xxxxxxx&#39; | gzip -9c &gt; <br>
&#39;/tmp/xxxxxxx_2021_05_30__09_16_30.sql.gz&#39; 2&gt;&amp;1<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:83,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot;:1622366=
193,&quot;document&quot;:{&quot;file_name&quot;:&quot;xxxxxxx_2021_05_30__0=
9_16_30.sql.gz&quot;,&quot;file_id&quot;:&quot;BQACAgUAAx0ES3bxGgADU2CzV_GM=
3xtu1t5XHttcHI0XU2UxAAJAAwACgEuZVZXtLZajzXHNHwQ&quot;,&quot;file_unique_id&=
quot;:&quot;AgADQAMAAoBLmVU&quot;,&quot;file_size&quot;:5175},&quot;caption=
&quot;:&quot;Datetime: <br>
2021-05-30T09:16:32+00:00\nFile name: <br>
xxxxxxx_2021_05_30__09_16_30.sql.gz\nFile size: 5175 bytes\nMD5 sum: <br>
c047b2395865e416a5a6699613f6cb9a\nSHA1 sum: <br>
52a8f135138bef21aa1aeb572850928c0a87677b&quot;,&quot;caption_entities&quot;=
:[{&quot;offset&quot;:0,&quot;length&quot;:9,&quot;type&quot;:&quot;bold&qu=
ot;},{&quot;offset&quot;:10,&quot;length&quot;:25,&quot;type&quot;:&quot;co=
de&quot;},{&quot;offset&quot;:36,&quot;length&quot;:10,&quot;type&quot;:&qu=
ot;bold&quot;},{&quot;offset&quot;:47,&quot;length&quot;:40,&quot;type&quot=
;:&quot;code&quot;},{&quot;offset&quot;:88,&quot;length&quot;:10,&quot;type=
&quot;:&quot;bold&quot;},{&quot;offset&quot;:99,&quot;length&quot;:4,&quot;=
type&quot;:&quot;code&quot;},{&quot;offset&quot;:110,&quot;length&quot;:8,&=
quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:119,&quot;length&quot=
;:32,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:152,&quot;lengt=
h&quot;:9,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:162,&quot;=
length&quot;:40,&quot;type&quot;:&quot;code&quot;}]}}<br>
=C2=A0=C2=A0 cd /var/vmail; tar --dereference -c <a href=3D"http://gnuweeb.=
org" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">gnuweeb.org=
</a> | gzip -9c &gt; <br>
&#39;/tmp/vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz&#39;<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:84,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot;:1622366=
209,&quot;document&quot;:{&quot;file_name&quot;:&quot;vmail_gnuweeb_org_202=
1_05_30__09_16_30.tar.gz&quot;,&quot;file_id&quot;:&quot;BQACAgUAAx0ES3bxGg=
ADVGCzWAABlGrvg-zwE7tqESH1-v7D6AACQQMAAoBLmVVwSalpUAw4dh8E&quot;,&quot;file=
_unique_id&quot;:&quot;AgADQQMAAoBLmVU&quot;,&quot;file_size&quot;:30319753=
},&quot;caption&quot;:&quot;Datetime: <br>
2021-05-30T09:16:37+00:00\nFile name: <br>
vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz\nFile size: 30319753 <br>
bytes\nMD5 sum: 3fb3da4610309c7729e143521010c68c\nSHA1 sum: <br>
dbf944f46d17e35deaa9165c8c867e65ea02bc13&quot;,&quot;caption_entities&quot;=
:[{&quot;offset&quot;:0,&quot;length&quot;:9,&quot;type&quot;:&quot;bold&qu=
ot;},{&quot;offset&quot;:10,&quot;length&quot;:25,&quot;type&quot;:&quot;co=
de&quot;},{&quot;offset&quot;:36,&quot;length&quot;:10,&quot;type&quot;:&qu=
ot;bold&quot;},{&quot;offset&quot;:47,&quot;length&quot;:45,&quot;type&quot=
;:&quot;code&quot;},{&quot;offset&quot;:93,&quot;length&quot;:10,&quot;type=
&quot;:&quot;bold&quot;},{&quot;offset&quot;:104,&quot;length&quot;:8,&quot=
;type&quot;:&quot;code&quot;},{&quot;offset&quot;:119,&quot;length&quot;:8,=
&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:128,&quot;length&quo=
t;:32,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:161,&quot;leng=
th&quot;:9,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:171,&quot=
;length&quot;:40,&quot;type&quot;:&quot;code&quot;}]}}<br>
=C2=A0=C2=A0 cd /var/lib; tar --dereference -c mailman | gzip -9c &gt; <br>
&#39;/tmp/varlib_mailman_2021_05_30__09_16_30.tar.gz&#39;<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:85,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot;:1622366=
220,&quot;document&quot;:{&quot;file_name&quot;:&quot;varlib_mailman_2021_0=
5_30__09_16_30.tar.gz&quot;,&quot;file_id&quot;:&quot;BQACAgUAAx0ES3bxGgADV=
WCzWAuN5zu-5G273m4l1w76O60aAAJCAwACgEuZVWe9bBmK96HOHwQ&quot;,&quot;file_uni=
que_id&quot;:&quot;AgADQgMAAoBLmVU&quot;,&quot;file_size&quot;:9438168},&qu=
ot;caption&quot;:&quot;Datetime: <br>
2021-05-30T09:16:53+00:00\nFile name: <br>
varlib_mailman_2021_05_30__09_16_30.tar.gz\nFile size: 9438168 <br>
bytes\nMD5 sum: dca9d29036c85e5079ca34dd7f84b54b\nSHA1 sum: <br>
eeaa966491c5682d0c474fa7ff4c5de9cd9697f9&quot;,&quot;caption_entities&quot;=
:[{&quot;offset&quot;:0,&quot;length&quot;:9,&quot;type&quot;:&quot;bold&qu=
ot;},{&quot;offset&quot;:10,&quot;length&quot;:25,&quot;type&quot;:&quot;co=
de&quot;},{&quot;offset&quot;:36,&quot;length&quot;:10,&quot;type&quot;:&qu=
ot;bold&quot;},{&quot;offset&quot;:47,&quot;length&quot;:42,&quot;type&quot=
;:&quot;code&quot;},{&quot;offset&quot;:90,&quot;length&quot;:10,&quot;type=
&quot;:&quot;bold&quot;},{&quot;offset&quot;:101,&quot;length&quot;:7,&quot=
;type&quot;:&quot;code&quot;},{&quot;offset&quot;:115,&quot;length&quot;:8,=
&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:124,&quot;length&quo=
t;:32,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:157,&quot;leng=
th&quot;:9,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:167,&quot=
;length&quot;:40,&quot;type&quot;:&quot;code&quot;}]}}<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:86,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot=
;:1622366221,&quot;text&quot;:&quot;[Time taken <br>
for each job]\ngnuweeb_2021_05_30__09_16_30.sql.gz: 1.7395720481873 <br>
s\nxxxxxxx_2021_05_30__09_16_30.sql.gz: 1.5848047733307 <br>
s\nvmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 15.539685964584 <br>
s\nvarlib_mailman_2021_05_30__09_16_30.tar.gz: 11.031145095825 <br>
s\n\nTotal time: 29.895207881927 s\nWall time: 29.902309894562 <br>
s&quot;,&quot;entities&quot;:[{&quot;offset&quot;:0,&quot;length&quot;:25,&=
quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:26,&quot;length&quot;=
:36,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:63,&quot;length&=
quot;:15,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:81,&quot;le=
ngth&quot;:41,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:123,&q=
uot;length&quot;:15,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:=
141,&quot;length&quot;:46,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&=
quot;:188,&quot;length&quot;:15,&quot;type&quot;:&quot;code&quot;},{&quot;o=
ffset&quot;:206,&quot;length&quot;:43,&quot;type&quot;:&quot;bold&quot;},{&=
quot;offset&quot;:250,&quot;length&quot;:15,&quot;type&quot;:&quot;code&quo=
t;},{&quot;offset&quot;:269,&quot;length&quot;:11,&quot;type&quot;:&quot;bo=
ld&quot;},{&quot;offset&quot;:281,&quot;length&quot;:15,&quot;type&quot;:&q=
uot;code&quot;},{&quot;offset&quot;:299,&quot;length&quot;:10,&quot;type&qu=
ot;:&quot;bold&quot;},{&quot;offset&quot;:310,&quot;length&quot;:15,&quot;t=
ype&quot;:&quot;code&quot;}]}}<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:87,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot=
;:1622366222,&quot;text&quot;:&quot;[File size <br>
for each job]\ngnuweeb_2021_05_30__09_16_30.sql.gz: 8898 <br>
bytes\nxxxxxxx_2021_05_30__09_16_30.sql.gz: 5175 <br>
bytes\nvmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 30319753 <br>
bytes\nvarlib_mailman_2021_05_30__09_16_30.tar.gz: 9438168 <br>
bytes\n\nTotal size: 39771994 <br>
bytes&quot;,&quot;entities&quot;:[{&quot;offset&quot;:0,&quot;length&quot;:=
24,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:25,&quot;length&q=
uot;:36,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:62,&quot;len=
gth&quot;:4,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot;:73,&quot=
;length&quot;:41,&quot;type&quot;:&quot;bold&quot;},{&quot;offset&quot;:115=
,&quot;length&quot;:4,&quot;type&quot;:&quot;code&quot;},{&quot;offset&quot=
;:126,&quot;length&quot;:46,&quot;type&quot;:&quot;bold&quot;},{&quot;offse=
t&quot;:173,&quot;length&quot;:8,&quot;type&quot;:&quot;code&quot;},{&quot;=
offset&quot;:188,&quot;length&quot;:43,&quot;type&quot;:&quot;bold&quot;},{=
&quot;offset&quot;:232,&quot;length&quot;:7,&quot;type&quot;:&quot;code&quo=
t;},{&quot;offset&quot;:247,&quot;length&quot;:11,&quot;type&quot;:&quot;bo=
ld&quot;},{&quot;offset&quot;:259,&quot;length&quot;:8,&quot;type&quot;:&qu=
ot;code&quot;}]}}<br>
{&quot;ok&quot;:true,&quot;result&quot;:{&quot;message_id&quot;:88,&quot;se=
nder_chat&quot;:{&quot;id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal=
] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;chat&quot;:{&quot;=
id&quot;:-xxxxxxxx,&quot;title&quot;:&quot;[Internal] <br>
GNU/Weeb <br>
Backup&quot;,&quot;type&quot;:&quot;channel&quot;},&quot;date&quot;:1622366=
223,&quot;text&quot;:&quot;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&quot;}}<br>
=C2=A0=C2=A0 root@gnuweeb:~#<br>
<br>
Result:<br>
=C2=A0=C2=A0 [Time taken for each job]<br>
=C2=A0=C2=A0 gnuweeb_2021_05_30__09_16_30.sql.gz: 1.7395720481873 s<br>
=C2=A0=C2=A0 postfixadmin_2021_05_30__09_16_30.sql.gz: 1.5848047733307 s<br=
>
=C2=A0=C2=A0 vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 15.539685964584=
 s<br>
=C2=A0=C2=A0 varlib_mailman_2021_05_30__09_16_30.tar.gz: 11.031145095825 s<=
br>
<br>
=C2=A0=C2=A0 Total time: 29.895207881927 s<br>
=C2=A0=C2=A0 Wall time: 29.902309894562 s<br>
<br>
=C2=A0=C2=A0 [File size for each job]<br>
=C2=A0=C2=A0 gnuweeb_2021_05_30__09_16_30.sql.gz: 8898 bytes<br>
=C2=A0=C2=A0 postfixadmin_2021_05_30__09_16_30.sql.gz: 5175 bytes<br>
=C2=A0=C2=A0 vmail_gnuweeb_org_2021_05_30__09_16_30.tar.gz: 30319753 bytes<=
br>
=C2=A0=C2=A0 varlib_mailman_2021_05_30__09_16_30.tar.gz: 9438168 bytes<br>
<br>
=C2=A0=C2=A0 Total size: 39771994 bytes<br>
<br>
-- <br>
GWML mailing list<br>
<a href=3D"mailto:GWML@gnuweeb.org" rel=3D"noreferrer noreferrer" target=3D=
"_blank">GWML@gnuweeb.org</a><br>
<a href=3D"https://gwml.gnuweeb.org/listinfo/gwml" rel=3D"noreferrer norefe=
rrer noreferrer" target=3D"_blank">https://gwml.gnuweeb.org/listinfo/gwml</=
a><br>
</blockquote></div></div>

--0000000000003737b805c3903072--

--===============2764720082401379451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml

--===============2764720082401379451==--
