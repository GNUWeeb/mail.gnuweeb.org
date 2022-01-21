Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id ZUMYNp4A62HulAYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 21 Jan 2022 18:51:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id F0033C17FD;
	Fri, 21 Jan 2022 18:51:08 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=LBV4sdco;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gnuweeb.org (Postfix) with ESMTPS id 57F9CBFB83
 for <gwml@gnuweeb.org>; Fri, 21 Jan 2022 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642791065; x=1674327065;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=je+JVvIud5Ia+mp9CVFTrEpqOiBRDjOUHc0UE9EWHdE=;
 b=LBV4sdconS1ZcO4xdOm3C/Fw8KII8IUxl5cxEVxB2eNy6cGtE5K0hxel
 70DOn1RPgkn3grbl3zTPdHY8x4Om6oNaDyzWTh+SCW5vb10pYJKnQW5dq
 7CTvK60WEygiqPL++lbVqszzVnMI7c5gM1FrM37c6CouVfIkpVmJxHDc+
 RkG0g4Qce1TNitBDCmHePGPbmvtOoWptEu65ssCBGWz8FI+fnwxFLjQmb
 7nLeff0oi0fW5O2vu6YXVB8Fm1dztrLpbSXOmPKUdZSSnn5B2o4EDUnDd
 67dTVlUOnx8XnPE8GZpMZx9gcHv8zvg3rLIwOFHeJ+Zbl6TSJWexO7oKm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226397582"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="226397582"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 10:51:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="561970189"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 10:51:01 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nAz00-000FaE-GQ; Fri, 21 Jan 2022 18:51:00 +0000
Date: Sat, 22 Jan 2022 02:50:48 +0800
From: kernel test robot <lkp@intel.com>
To: Chanho Park <chanho61.park@samsung.com>
Subject: [ammarfaizi2-block:google/android/kernel/common/android13-5.10
 2895/9999] phylink.c:undefined reference to `linkmode_resolve_pause'
Message-ID: <202201220224.w1sN3O9g-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Maciej =?utf-8?Q?=C5=BBenczykowski?= <maze@google.com>,
 GNU/Weeb Mailing List <gwml@gnuweeb.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Chanho,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android13-5.10
head:   0b57557c8d4c5bc3f102bcc5f901482dbcb2ba1c
commit: 36ab8cea47b0d4a3c5067577430c147a903b5261 [2895/9999] ANDROID: GKI: Kconfig.gki: Add GKI_HIDDEN_ETHERNET_CONFIGS
config: arm-randconfig-r023-20220120 (https://download.01.org/0day-ci/archive/20220122/202201220224.w1sN3O9g-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/36ab8cea47b0d4a3c5067577430c147a903b5261
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android13-5.10
        git checkout 36ab8cea47b0d4a3c5067577430c147a903b5261
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arm SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_cleanup':
   hvc_console.c:(.text+0x4d4): undefined reference to `tty_port_put'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_set_winsz':
   hvc_console.c:(.text+0x59c): undefined reference to `tty_port_tty_get'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x5dc): undefined reference to `tty_do_resize'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_hangup':
   hvc_console.c:(.text+0x6f4): undefined reference to `tty_port_tty_set'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_open':
   hvc_console.c:(.text+0x790): undefined reference to `tty_port_tty_set'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_close':
   hvc_console.c:(.text+0xa20): undefined reference to `tty_hung_up_p'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xa6c): undefined reference to `tty_port_tty_set'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xae8): undefined reference to `tty_wait_until_sent'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_remove':
   hvc_console.c:(.text+0xb5c): undefined reference to `tty_port_tty_get'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xbc4): undefined reference to `tty_port_put'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xbd8): undefined reference to `tty_vhangup'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `__hvc_poll':
   hvc_console.c:(.text+0xcc0): undefined reference to `tty_port_tty_get'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xd2c): undefined reference to `tty_buffer_request_room'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xd88): undefined reference to `tty_hangup'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xeb8): undefined reference to `__tty_insert_flip_char'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xf68): undefined reference to `tty_wakeup'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0xfa4): undefined reference to `tty_flip_buffer_push'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_install':
   hvc_console.c:(.text+0x12f8): undefined reference to `tty_port_install'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x130c): undefined reference to `tty_port_put'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_alloc':
   hvc_console.c:(.text+0x1390): undefined reference to `__tty_alloc_driver'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x13b0): undefined reference to `tty_std_termios'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x13b4): undefined reference to `tty_std_termios'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x1408): undefined reference to `tty_set_operations'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x1450): undefined reference to `tty_register_driver'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x147c): undefined reference to `put_tty_driver'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x14c8): undefined reference to `tty_port_init'
   arm-linux-gnueabi-ld: hvc_console.c:(.text+0x16b0): undefined reference to `put_tty_driver'
   arm-linux-gnueabi-ld: drivers/tty/hvc/hvc_console.o: in function `hvc_instantiate':
   hvc_console.c:(.text+0x1748): undefined reference to `tty_port_put'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_get_fixed_state':
>> phylink.c:(.text+0x2e0): undefined reference to `linkmode_resolve_pause'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_decode_c37_word':
   phylink.c:(.text+0x450): undefined reference to `linkmode_resolve_pause'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mac_config':
   phylink.c:(.text+0x548): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x554): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x5a4): undefined reference to `__dynamic_netdev_dbg'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x638): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x644): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_major_config':
   phylink.c:(.text+0x758): undefined reference to `__dynamic_netdev_dbg'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x834): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x8e8): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x9a8): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_change_inband_advert':
   phylink.c:(.text+0xb0c): undefined reference to `__dynamic_netdev_dbg'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_link_down':
   phylink.c:(.text+0xc64): undefined reference to `netif_carrier_off'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xcac): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_link_up':
   phylink.c:(.text+0xda4): undefined reference to `netif_carrier_on'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xdcc): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xddc): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xe30): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xe54): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0xe64): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_get_pauseparam':
   phylink.c:(.text+0xfb8): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_disconnect_phy':
   phylink.c:(.text+0x1124): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x117c): undefined reference to `phy_disconnect'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_get_wol':
   phylink.c:(.text+0x11a0): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x11c8): undefined reference to `phy_ethtool_get_wol'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_set_wol':
   phylink.c:(.text+0x11ec): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1208): undefined reference to `phy_ethtool_set_wol'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_ksettings_get':
   phylink.c:(.text+0x12d8): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x12f4): undefined reference to `phy_ethtool_ksettings_get'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_set_pauseparam':
   phylink.c:(.text+0x13b0): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1474): undefined reference to `linkmode_set_pause'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1500): undefined reference to `phy_set_asym_pause'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_get_eee_err':
   phylink.c:(.text+0x157c): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1594): undefined reference to `phy_get_eee_err'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_init_eee':
   phylink.c:(.text+0x15d8): undefined reference to `phy_init_eee'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_get_eee':
   phylink.c:(.text+0x160c): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1628): undefined reference to `phy_ethtool_get_eee'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_ethtool_set_eee':
   phylink.c:(.text+0x165c): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1678): undefined reference to `phy_ethtool_set_eee'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_c22_pcs_get_state':
   phylink.c:(.text+0x16c0): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x16d4): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_c45_pcs_get_state':
   phylink.c:(.text+0x1854): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_c22_pcs_set_advertisement':
   phylink.c:(.text+0x192c): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1958): undefined reference to `mdiobus_write'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x197c): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x19a8): undefined reference to `mdiobus_write'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_c22_pcs_an_restart':
   phylink.c:(.text+0x19f0): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1a14): undefined reference to `mdiobus_write'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_emul_read':
   phylink.c:(.text+0x1a78): undefined reference to `swphy_read_reg'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_ioctl':
   phylink.c:(.text+0x1ad0): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1bf4): undefined reference to `mdiobus_read'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1cdc): undefined reference to `mdiobus_write'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1cf8): undefined reference to `phy_mii_ioctl'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_speed_down':
   phylink.c:(.text+0x1e4c): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1e80): undefined reference to `phy_speed_down'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_speed_up':
   phylink.c:(.text+0x1ea8): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1ed8): undefined reference to `phy_speed_up'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mii_c22_pcs_config':
   phylink.c:(.text+0x1f50): undefined reference to `mdiobus_modify'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_stop':
   phylink.c:(.text+0x1f98): undefined reference to `rtnl_is_locked'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x1fb0): undefined reference to `phy_stop'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_parse_mode':
   phylink.c:(.text+0x2128): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x22f0): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x2404): undefined reference to `netdev_printk'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_mac_change':
   phylink.c:(.text+0x25ac): undefined reference to `__dynamic_netdev_dbg'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_phy_change':
   phylink.c:(.text+0x264c): undefined reference to `phy_get_pause'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x2764): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x2770): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x2794): undefined reference to `__dynamic_netdev_dbg'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x281c): undefined reference to `phy_speed_to_str'
   arm-linux-gnueabi-ld: phylink.c:(.text+0x2828): undefined reference to `phy_duplex_to_str'
   arm-linux-gnueabi-ld: drivers/net/phy/phylink.o: in function `phylink_start':
   phylink.c:(.text+0x2bc8): undefined reference to `rtnl_is_locked'

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for PHYLINK
   Depends on NETDEVICES
   Selected by
   - GKI_HIDDEN_ETHERNET_CONFIGS
   WARNING: unmet direct dependencies detected for HVC_DRIVER
   Depends on TTY
   Selected by
   - GKI_HIDDEN_VIRTUAL_CONFIGS
   WARNING: unmet direct dependencies detected for WEXT_PROC
   Depends on NET && WIRELESS && PROC_FS && WEXT_CORE
   Selected by
   - GKI_LEGACY_WEXT_ALLCONFIG
   WARNING: unmet direct dependencies detected for WEXT_PRIV
   Depends on NET && WIRELESS
   Selected by
   - GKI_LEGACY_WEXT_ALLCONFIG
   WARNING: unmet direct dependencies detected for PAGE_POOL
   Depends on NET
   Selected by
   - GKI_HIDDEN_NET_CONFIGS
   WARNING: unmet direct dependencies detected for WEXT_SPY
   Depends on NET && WIRELESS
   Selected by
   - GKI_LEGACY_WEXT_ALLCONFIG
   WARNING: unmet direct dependencies detected for WIRELESS_EXT
   Depends on NET && WIRELESS
   Selected by
   - GKI_LEGACY_WEXT_ALLCONFIG
   WARNING: unmet direct dependencies detected for WEXT_CORE
   Depends on NET && WIRELESS && (CFG80211_WEXT || WIRELESS_EXT
   Selected by
   - GKI_LEGACY_WEXT_ALLCONFIG
   WARNING: unmet direct dependencies detected for NET_PTP_CLASSIFY
   Depends on NET
   Selected by
   - GKI_HIDDEN_NET_CONFIGS
   WARNING: unmet direct dependencies detected for SND_VMASTER
   Depends on SOUND && !UML && SND
   Selected by
   - GKI_HIDDEN_SND_CONFIGS
   WARNING: unmet direct dependencies detected for SND_PCM_IEC958
   Depends on SOUND && !UML && SND
   Selected by
   - GKI_HIDDEN_SND_SOC_CONFIGS
   WARNING: unmet direct dependencies detected for SND_JACK
   Depends on SOUND && !UML && SND
   Selected by
   - GKI_HIDDEN_SND_CONFIGS
   WARNING: unmet direct dependencies detected for SND_JACK_INPUT_DEV
   Depends on SOUND && !UML && SND && SND_JACK
   Selected by
   - GKI_HIDDEN_SND_CONFIGS
   WARNING: unmet direct dependencies detected for SND_PCM_ELD
   Depends on SOUND && !UML && SND
   Selected by
   - GKI_HIDDEN_SND_CONFIGS

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
