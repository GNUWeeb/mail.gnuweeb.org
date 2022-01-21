Return-Path: <gwml-bounces@gnuweeb.org>
Delivered-To: sprite@gnuweeb.org
Received: from gnuweeb.org
	by gnuweeb with LMTP
	id eNlSCy0p62HImQYAav/0+A
	(envelope-from <gwml-bounces@gnuweeb.org>)
	for <sprite@gnuweeb.org>; Fri, 21 Jan 2022 21:44:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by gnuweeb.org (Postfix) with ESMTP id BD6E4C17FD;
	Fri, 21 Jan 2022 21:44:11 +0000 (UTC)
Authentication-Results: gnuweeb.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=IsBIMLtA;
	dkim-atps=neutral
X-Original-To: gwml@gnuweeb.org
Delivered-To: gwml@gnuweeb.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gnuweeb.org (Postfix) with ESMTPS id 49030C1697
 for <gwml@gnuweeb.org>; Fri, 21 Jan 2022 21:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642801449; x=1674337449;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=jlovGmeXhWEHkwmCBvNEr4HfZzW5k/bnFQRrW1bmMxk=;
 b=IsBIMLtAJGdF0L5nZBcvua7BTdK3Zxy1tgrqYH4sSPV8uGyqyrVRDTzH
 Toi1Mg3+kaZ+sRFb665jFxfcgRAR87s1xgHxSn2DSfCTFbrttDoSmI3Cg
 yIrk/0M257dO2dEhTcDPRUrZWHPBtp/3kH1bzzdn3SazZjXLVaLt0qeqE
 Y741Mf0HK12k15EsevKqPjCx/V/931WrrZNgax1yppfhGTbEXG5yZp9U/
 boEEoh5NtqNRJQ0aa13hZEpVYURwbSiTlZoN8+aeW0lehpyNM7JMj0t77
 SrETKj2u3YIiV7/cc8rqiA31SQ9fcFzKWzQrSg4uBwB4yvQnjiapwIIs8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="226425353"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="226425353"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 13:44:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="562014600"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 13:44:04 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nB1hU-000Fh0-9O; Fri, 21 Jan 2022 21:44:04 +0000
Date: Sat, 22 Jan 2022 05:43:48 +0800
From: kernel test robot <lkp@intel.com>
To: Hemant Kumar <hemantk@codeaurora.org>
Subject: [ammarfaizi2-block:google/android/kernel/common/android-4.19-stable
 160/9999] drivers/usb/host/xhci-mem.c:1840:6: warning: no previous prototype
 for 'xhci_handle_sec_intr_events'
Message-ID: <202201220544.5GcYVGW1-lkp@intel.com>
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
Cc: Jack Pham <jackp@codeaurora.org>, GNU/Weeb Mailing List <gwml@gnuweeb.org>,
 linux-kernel@vger.kernel.org, Connor O'Brien <connoro@google.com>,
 kbuild-all@lists.01.org, Mayank Rana <mrana@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: gwml-bounces@gnuweeb.org
Sender: "GWML" <gwml-bounces@gnuweeb.org>

Hi Hemant,

FYI, the error/warning still remains.

tree:   https://github.com/ammarfaizi2/linux-block google/android/kernel/common/android-4.19-stable
head:   90a691fca4c2525068d9908ac203e9f09e4e33c0
commit: 5dfdaa15caebc782d1c90ff6513d4cc9f6ac3663 [160/9999] ANDROID: GKI: usb: xhci: Add support for secondary interrupters
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20220122/202201220544.5GcYVGW1-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/ammarfaizi2/linux-block/commit/5dfdaa15caebc782d1c90ff6513d4cc9f6ac3663
        git remote add ammarfaizi2-block https://github.com/ammarfaizi2/linux-block
        git fetch --no-tags ammarfaizi2-block google/android/kernel/common/android-4.19-stable
        git checkout 5dfdaa15caebc782d1c90ff6513d4cc9f6ac3663
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/tty/serial/ drivers/usb/host/ kernel/power/ mm/ sound/soc/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/usb/host/xhci-mem.c:936:6: warning: no previous prototype for 'xhci_free_virt_devices_depth_first' [-Wmissing-prototypes]
     936 | void xhci_free_virt_devices_depth_first(struct xhci_hcd *xhci, int slot_id)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/usb/host/xhci-mem.c:1840:6: warning: no previous prototype for 'xhci_handle_sec_intr_events' [-Wmissing-prototypes]
    1840 | void xhci_handle_sec_intr_events(struct xhci_hcd *xhci, int intr_num)
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/usb/host/xhci-mem.c:1947:6: warning: no previous prototype for 'xhci_event_ring_cleanup' [-Wmissing-prototypes]
    1947 | void xhci_event_ring_cleanup(struct xhci_hcd *xhci)
         |      ^~~~~~~~~~~~~~~~~~~~~~~
>> drivers/usb/host/xhci-mem.c:2486:5: warning: no previous prototype for 'xhci_event_ring_setup' [-Wmissing-prototypes]
    2486 | int xhci_event_ring_setup(struct xhci_hcd *xhci, struct xhci_ring **er,
         |     ^~~~~~~~~~~~~~~~~~~~~
>> drivers/usb/host/xhci-mem.c:2590:5: warning: no previous prototype for 'xhci_event_ring_init' [-Wmissing-prototypes]
    2590 | int xhci_event_ring_init(struct xhci_hcd *xhci, gfp_t flags)
         |     ^~~~~~~~~~~~~~~~~~~~
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'xhci' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'num_segs' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'cycle_state' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'type' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'max_packet' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'flags' not described in 'xhci_ring_alloc'


vim +/xhci_handle_sec_intr_events +1840 drivers/usb/host/xhci-mem.c

  1839	
> 1840	void xhci_handle_sec_intr_events(struct xhci_hcd *xhci, int intr_num)
  1841	{
  1842		union xhci_trb *erdp_trb, *current_trb;
  1843		struct xhci_segment	*seg;
  1844		u64 erdp_reg;
  1845		u32 iman_reg;
  1846		dma_addr_t deq;
  1847		unsigned long segment_offset;
  1848	
  1849		/* disable irq, ack pending interrupt and ack all pending events */
  1850	
  1851		iman_reg =
  1852			readl_relaxed(&xhci->sec_ir_set[intr_num]->irq_pending);
  1853		iman_reg &= ~IMAN_IE;
  1854		writel_relaxed(iman_reg,
  1855				&xhci->sec_ir_set[intr_num]->irq_pending);
  1856		iman_reg =
  1857			readl_relaxed(&xhci->sec_ir_set[intr_num]->irq_pending);
  1858		if (iman_reg & IMAN_IP)
  1859			writel_relaxed(iman_reg,
  1860				&xhci->sec_ir_set[intr_num]->irq_pending);
  1861	
  1862		/* last acked event trb is in erdp reg  */
  1863		erdp_reg =
  1864			xhci_read_64(xhci, &xhci->sec_ir_set[intr_num]->erst_dequeue);
  1865		deq = (dma_addr_t)(erdp_reg & ~ERST_PTR_MASK);
  1866		if (!deq) {
  1867			pr_debug("%s: event ring handling not required\n", __func__);
  1868			return;
  1869		}
  1870	
  1871		seg = xhci->sec_event_ring[intr_num]->first_seg;
  1872		segment_offset = deq - seg->dma;
  1873	
  1874		/* find out virtual address of the last acked event trb */
  1875		erdp_trb = current_trb = &seg->trbs[0] +
  1876					(segment_offset/sizeof(*current_trb));
  1877	
  1878		/* read cycle state of the last acked trb to find out CCS */
  1879		xhci->sec_event_ring[intr_num]->cycle_state =
  1880					(current_trb->event_cmd.flags & TRB_CYCLE);
  1881	
  1882		while (1) {
  1883			/* last trb of the event ring: toggle cycle state */
  1884			if (current_trb == &seg->trbs[TRBS_PER_SEGMENT - 1]) {
  1885				xhci->sec_event_ring[intr_num]->cycle_state ^= 1;
  1886				current_trb = &seg->trbs[0];
  1887			} else {
  1888				current_trb++;
  1889			}
  1890	
  1891			/* cycle state transition */
  1892			if ((le32_to_cpu(current_trb->event_cmd.flags) & TRB_CYCLE) !=
  1893			    xhci->sec_event_ring[intr_num]->cycle_state)
  1894				break;
  1895		}
  1896	
  1897		if (erdp_trb != current_trb) {
  1898			deq =
  1899			xhci_trb_virt_to_dma(xhci->sec_event_ring[intr_num]->deq_seg,
  1900						current_trb);
  1901			if (deq == 0)
  1902				xhci_warn(xhci,
  1903					"WARN invalid SW event ring dequeue ptr.\n");
  1904			/* Update HC event ring dequeue pointer */
  1905			erdp_reg &= ERST_PTR_MASK;
  1906			erdp_reg |= ((u64) deq & (u64) ~ERST_PTR_MASK);
  1907		}
  1908	
  1909		/* Clear the event handler busy flag (RW1C); event ring is empty. */
  1910		erdp_reg |= ERST_EHB;
  1911		xhci_write_64(xhci, erdp_reg,
  1912				&xhci->sec_ir_set[intr_num]->erst_dequeue);
  1913	}
  1914	
  1915	int xhci_sec_event_ring_cleanup(struct usb_hcd *hcd, unsigned int intr_num)
  1916	{
  1917		int size;
  1918		struct xhci_hcd *xhci = hcd_to_xhci(hcd);
  1919		struct device	*dev = xhci_to_hcd(xhci)->self.sysdev;
  1920	
  1921		if (intr_num >= xhci->max_interrupters) {
  1922			xhci_err(xhci, "invalid secondary interrupter num %d\n",
  1923				intr_num);
  1924			return -EINVAL;
  1925		}
  1926	
  1927		size =
  1928		sizeof(struct xhci_erst_entry)*(xhci->sec_erst[intr_num].num_entries);
  1929		if (xhci->sec_erst[intr_num].entries) {
  1930			xhci_handle_sec_intr_events(xhci, intr_num);
  1931			dma_free_coherent(dev, size, xhci->sec_erst[intr_num].entries,
  1932					xhci->sec_erst[intr_num].erst_dma_addr);
  1933			xhci->sec_erst[intr_num].entries = NULL;
  1934		}
  1935		xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed SEC ERST#%d",
  1936			intr_num);
  1937		if (xhci->sec_event_ring[intr_num])
  1938			xhci_ring_free(xhci, xhci->sec_event_ring[intr_num]);
  1939	
  1940		xhci->sec_event_ring[intr_num] = NULL;
  1941		xhci_dbg_trace(xhci, trace_xhci_dbg_init,
  1942			"Freed sec event ring");
  1943	
  1944		return 0;
  1945	}
  1946	
> 1947	void xhci_event_ring_cleanup(struct xhci_hcd *xhci)
  1948	{
  1949		unsigned int i;
  1950	
  1951		/* sec event ring clean up */
  1952		for (i = 1; i < xhci->max_interrupters; i++)
  1953			xhci_sec_event_ring_cleanup(xhci_to_hcd(xhci), i);
  1954	
  1955		kfree(xhci->sec_ir_set);
  1956		xhci->sec_ir_set = NULL;
  1957		kfree(xhci->sec_erst);
  1958		xhci->sec_erst = NULL;
  1959		kfree(xhci->sec_event_ring);
  1960		xhci->sec_event_ring = NULL;
  1961	
  1962		/* primary event ring clean up */
  1963		xhci_free_erst(xhci, &xhci->erst);
  1964		xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed primary ERST");
  1965		if (xhci->event_ring)
  1966			xhci_ring_free(xhci, xhci->event_ring);
  1967		xhci->event_ring = NULL;
  1968		xhci_dbg_trace(xhci, trace_xhci_dbg_init, "Freed priamry event ring");
  1969	}
  1970	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
-- 
GWML mailing list
GWML@gnuweeb.org
https://gwml.gnuweeb.org/listinfo/gwml
