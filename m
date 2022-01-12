Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id I+KmLbEi32GeFgUAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Wed, 12 Jan 2022 18:49:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id D4DB5C2A8F;
	Wed, 12 Jan 2022 18:49:19 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=ng8u/6KH;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gnuweeb.org (Postfix) with ESMTPS id 07F7EC166C
 for <gwml@gnuweeb.org>; Wed, 12 Jan 2022 18:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642013356; x=1673549356;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=P8rim4q0I6ulB+Ywv2t0GgbvDOgoQUtrXFzLeGezyTs=;
 b=ng8u/6KHhVZTLR9sB2ynFypcyzQTT7f6EU6FvD8ueHs17OvHVPNAyHCJ
 L+GvQLOCJdidrkSJtAXNQLkHSqyR7EdnqCNlLM5sVDVZoyvDVq6GHG/1U
 I/YpD66bkH7iTgQxV6jz3MqKK0uakh2Iw9hMddCrnv8+moYgu3CjpFLMq
 4284sZQ74n9OxS/1dy1uRISPDWJTHz2bTekV6zj37KOSPygBra8uusrDd
 xgyR/ZrDn8Y2ogAuS7xKnsMgjiGscfi1/gH4iMARTk4MifgKNtM5PsW8W
 wEDy+l/DmmQ7RAAWTjlCi/BzH/hdJ71Kxg3WLosZeGh8LRWJg38i+EMuC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="268168171"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="268168171"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 10:43:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515611386"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 12 Jan 2022 10:43:08 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n7iaR-0006Et-Ab; Wed, 12 Jan 2022 18:43:07 +0000
Date: Thu, 13 Jan 2022 02:42:50 +0800
From: kernel test robot <lkp@intel.com>
To: Seevalamuthu Mariappan <quic_seevalam@quicinc.com>
Subject: [ammarfaizi2-block:kvalo/ath/pending 255/273]
 drivers/net/wireless/ath/ath11k/wmi.c:7833:39: error: 'struct ath11k' has no
 member named 'debug'
Message-ID: <202201130245.W7Ps705H-lkp@intel.com>
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
Cc: GNU/Weeb Mailing List <gwml@gnuweeb.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Kalle Valo <quic_kvalo@quicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

tree:   https://github.com/ammarfaizi2/linux-block kvalo/ath/pending
head:   061c4062835233faef6961a898155015fc5e0631
commit: 3af45eb104584443956572fa9d2a332123816b37 [255/273] ath11k: Add debugfs interface to configure firmware debug log level
config: xtensa-randconfig-r024-20220112 (https://download.01.org/0day-ci/archive/20220113/202201130245.W7Ps705H-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/ammarfaizi2/linux-block/commit/3af45eb104584443956572fa9d2a332123816b37
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block kvalo/ath/pending
        git checkout 3af45eb104584443956572fa9d2a332123816b37
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=xtensa SHELL=/bin/bash drivers/net/wireless/ath/ath11k/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/wireless/ath/ath11k/wmi.c: In function 'ath11k_wmi_fw_dbglog_cfg':
>> drivers/net/wireless/ath/ath11k/wmi.c:7833:39: error: 'struct ath11k' has no member named 'debug'
    7833 |                 memcpy(tlv->value, &ar->debug.module_id_bitmap,
         |                                       ^~
   drivers/net/wireless/ath/ath11k/wmi.c:7836:27: error: 'struct ath11k' has no member named 'debug'
    7836 |                 memset(&ar->debug.module_id_bitmap, 0,
         |                           ^~


vim +7833 drivers/net/wireless/ath/ath11k/wmi.c

  7800	
  7801	int ath11k_wmi_fw_dbglog_cfg(struct ath11k *ar, struct ath11k_fw_dbglog *dbglog)
  7802	{
  7803		struct ath11k_pdev_wmi *wmi = ar->wmi;
  7804		struct wmi_debug_log_config_cmd_fixed_param *cmd;
  7805		struct sk_buff *skb;
  7806		struct wmi_tlv *tlv;
  7807		int ret, len;
  7808	
  7809		len = sizeof(*cmd) + TLV_HDR_SIZE + (MAX_MODULE_ID_BITMAP_WORDS * sizeof(u32));
  7810		skb = ath11k_wmi_alloc_skb(wmi->wmi_ab, len);
  7811		if (!skb)
  7812			return -ENOMEM;
  7813	
  7814		cmd = (struct wmi_debug_log_config_cmd_fixed_param *)skb->data;
  7815		cmd->tlv_header = FIELD_PREP(WMI_TLV_TAG, WMI_TAG_DEBUG_LOG_CONFIG_CMD) |
  7816				  FIELD_PREP(WMI_TLV_LEN, sizeof(*cmd) - TLV_HDR_SIZE);
  7817		cmd->dbg_log_param = dbglog->param;
  7818	
  7819		tlv = (struct wmi_tlv *)((u8 *)cmd + sizeof(*cmd));
  7820		tlv->header = FIELD_PREP(WMI_TLV_TAG, WMI_TAG_ARRAY_UINT32) |
  7821			      FIELD_PREP(WMI_TLV_LEN, MAX_MODULE_ID_BITMAP_WORDS * sizeof(u32));
  7822	
  7823		switch (dbglog->param) {
  7824		case WMI_DEBUG_LOG_PARAM_LOG_LEVEL:
  7825		case WMI_DEBUG_LOG_PARAM_VDEV_ENABLE:
  7826		case WMI_DEBUG_LOG_PARAM_VDEV_DISABLE:
  7827		case WMI_DEBUG_LOG_PARAM_VDEV_ENABLE_BITMAP:
  7828			cmd->value = dbglog->value;
  7829			break;
  7830		case WMI_DEBUG_LOG_PARAM_MOD_ENABLE_BITMAP:
  7831		case WMI_DEBUG_LOG_PARAM_WOW_MOD_ENABLE_BITMAP:
  7832			cmd->value = dbglog->value;
> 7833			memcpy(tlv->value, &ar->debug.module_id_bitmap,
  7834			       MAX_MODULE_ID_BITMAP_WORDS * sizeof(u32));
  7835			/* clear current config to be used for next user config */
  7836			memset(&ar->debug.module_id_bitmap, 0,
  7837			       MAX_MODULE_ID_BITMAP_WORDS * sizeof(u32));
  7838			break;
  7839		default:
  7840			dev_kfree_skb(skb);
  7841			return -EINVAL;
  7842		}
  7843	
  7844		ret = ath11k_wmi_cmd_send(wmi, skb, WMI_DBGLOG_CFG_CMDID);
  7845		if (ret) {
  7846			ath11k_warn(ar->ab,
  7847				    "failed to send WMI_DBGLOG_CFG_CMDID\n");
  7848			dev_kfree_skb(skb);
  7849		}
  7850		return ret;
  7851	}
  7852	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
