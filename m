Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id 3/wpNU2M6GH7PgYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 19 Jan 2022 22:10:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id DE2A9C2AC2;
	Wed, 19 Jan 2022 22:10:19 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256 header.s=20210112 header.b=b/pjhf7U;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49]) by gnuweeb.org (Postfix) with ESMTPS id A7C23C2AC2
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 22:10:18 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 az27-20020a05600c601b00b0034d2956eb04so8729185wmb.5
 for <gwml@gnuweeb.org>; Wed, 19 Jan 2022 14:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=szrglUOKoAQRQL02i1H7q+pkp1ayvzmklTL6wOVwT/s=;
 b=b/pjhf7Ufhd6sE/TL9wGfVLA8ZUgCb4fxEU2pBxi6qcW+J9nNVdu+RuhHHHS5i8zun
 0UzK40qMKlHBZtAEIq9sg4hml/8YIpHn0e8JZDScCaLTNbdSCLGQ2iFy32/ieCbO3Ygy
 846sJwvKK8FsuQcPKxqLm9pu97Hp0MfAr+/xPs78yE9QJvES1YAq6zHnNv9wbcihgrmx
 yyRcyZP2qObq1RATKm9rENCkHWmMySdaL9h9rQQKhlXItbHbwr+Or24AxSo2ulouHhG2
 PZZkeFn/JlxaTyP8JF31uB3fthgI/3V4qWIpBikxYCpnkcbBu7lnEaZaMTkLfTEecZnk
 Lpww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=szrglUOKoAQRQL02i1H7q+pkp1ayvzmklTL6wOVwT/s=;
 b=155AoKiDMsTk5TaYilh8TMjm0QMvDUr3xXMJ0ABwaHJiaSbqS7sjtl5fVEixmK5xP9
 3H+lfSLN6D2D6JhmLfQ/JV9h89pvsWM1PlhdOSXnw8wbdUllcYxJAUTsc72mxrxQBNM0
 QcRBV4GQBHCruP3NR+1EPAhml3nhWrkYKERODhAnoTHlHOax1eik81RbnNNLz2A7Rv1X
 WCw60y3sCfg2OmN+YXfgKanFaNF+fwMDAESZab6J284d0JwXYCvmMhidZIxAb0kqnpTg
 +7Z2rrpm9Kw2L6241BoVCvI3m3RJ8vz904J9+oX3aJVcjp50aVDqKlnJTYSGPuLsOZVh
 4pyQ==
X-Gm-Message-State: AOAM533WkxLBK2UITJoCln6YCO/li2SqeK02BjaLuCIW0SPGtQlIXqZM
 PHD3Eugum7ZaUHgEfHBtaMhseUsYI6LAHsqdnm3KSw==
X-Google-Smtp-Source: ABdhPJzGbBUyj7EUYRylWYsQVSn/4u8jYvtro1LgzSOuaaZyieN2jbCY5DvUbQg+W+oh8ulm700AcEz33UFd0c0H6BI=
X-Received: by 2002:a05:6000:1569:: with SMTP id
 9mr20621093wrz.500.1642630215593; 
 Wed, 19 Jan 2022 14:10:15 -0800 (PST)
MIME-Version: 1.0
References: <202201170247.Cir3moOM-lkp@intel.com>
 <CAJHvVchPpphLefKEOy_C6+0xrGtA3mNCBzQZ3j2i2RgXX3arXQ@mail.gmail.com>
 <CAJuCfpFEfAxtgCfTU=0Ry6g6c-O4OJypGyE-0M+Ce0TKVSAYqA@mail.gmail.com>
 <CAJHvVciZpSBcQDbqbvwbToo5s2_Q5H2sfr=QAb9UBBWpnD5X-w@mail.gmail.com>
In-Reply-To: <CAJHvVciZpSBcQDbqbvwbToo5s2_Q5H2sfr=QAb9UBBWpnD5X-w@mail.gmail.com>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Wed, 19 Jan 2022 14:10:04 -0800
Message-ID: <CAC_TJvc5PwnB5L==4yoXDYeG9g-MKx6Oqb7ghG9gDGqaYEmdYw@mail.gmail.com>
Subject: Re: [ammarfaizi2-block:google/android/kernel/common/android12-5.4
 6517/9999] fs/userfaultfd.c:1519:9: warning: variable 'ioctls_out' set but
 not used
To: Axel Rasmussen <axelrasmussen@google.com>
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 llvm@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>,
 Peter Xu <peterx@redhat.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Lokesh Gidra <lokeshgidra@google.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suren Baghdasaryan <surenb@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

On Wed, Jan 19, 2022 at 2:03 PM Axel Rasmussen <axelrasmussen@google.com> wrote:
>
> On Wed, Jan 19, 2022 at 1:19 PM Suren Baghdasaryan <surenb@google.com> wrote:
> >
> > On Wed, Jan 19, 2022 at 12:39 PM Axel Rasmussen
> > <axelrasmussen@google.com> wrote:
> > >
> > > Lokesh, I only spent a few moments looking, but my suspicion is that
> > > this is the result of an incomplete backport of these patches to the
> > > Android kernel?
> > >
> > > The UFFDIO_CONTINUE patches introduced ioctls_out since the
> > > computation of it got more complicated, and those same patches also
> > > modified the put_user() on line 1533 here to use ioctls_out. I think
> > > Android backported the first part, but left out the second?
> >
> > The backport https://android-review.googlesource.com/c/kernel/common/+/1652718
> > looks like a mixture of
> > 14819305e09fe4 ("userfaultfd: wp: declare _UFFDIO_WRITEPROTECT
> > conditionally") and f619147104c8 ("userfaultfd: add UFFDIO_CONTINUE
> > ioctl").
> > Not sure why it was done this way, maybe to minimize code changes
> > while backporting.
> > Simplest fix is probably to add __maybe_unused to ioctls_out declaration.
>
> Unfortunately, that doesn't quite do it. That would fix the warning,
> but the code in the original e-mail is still wrong: we incorrectly
> don't report the _UFFDIO_CONTINUE bit, unless we use the value we
> computed in ioctls_out.

I think what happened is that Axel's patch [1] depends on the patch
from Peter [2]. [1] was backported without the dependency and the
conflict resolutions aren't quite correct.

[1] https://lore.kernel.org/lkml/20210301222728.176417-5-axelrasmussen@google.com/
[2] https://lore.kernel.org/lkml/20200220163112.11409-18-peterx@redhat.com/

- Kalesh
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
