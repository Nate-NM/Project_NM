# Project_NM

12/23/24
Options for hardware
1. Alfa wifi adapter. ACHM should work, ACH with 2x2 mimo as an option.
2. Teledatics TD-XPAH. Current configuration, low bandwidth and not too happy with range. Networking required quite a bit of tweaking, external drivers etc. need to look at direct SPI connection, may help bandwidth quite a bit
3. Alfa wifi adapter with additional LoRa radio. Would require sorting out MT python package,  not sure how that could tie together with wifi network. for now may have to use MT plugin and just have hardware in case

   - Immediate action items.
   - Quick and dirty range testing. confirm 802.11s/Batman will work with these wifi adapters
   - Get latest Edgemap image on existing hardware with wifi adapters. need to sort out how to handle the networking there, make sure drivers work etc
   - Goal for the 11th will likely be current 802.11s/batman software configuration. But need to make the call on 2.4/5.8 or Halow based on quick and dirty range testing.
   - Need to set potential investor meeting up after walt up to speed and we have some documentation
   - Continue to nail down scope for Edgemap, confirm that "custom" image is even an option



12/22/24
After some pretty heavy work over the last few weeks working on the Teledatics TD-XPAH I finally seem to have solved the packet aggregation issue with the 1.5.2 version of the software
but it feels like tx power just isn't there. I've tried a large variety of good antennas, tired many many test runs and i believe tx power is holding this unit back badly.
at ~22 dbm, at best I was able to get an ATAK text message out at ~450 meters, but that was at the ragged edge in relatively clear LoS down tampa ave. Going NLoS cuts range down to ~ 100m. And max data throughput is
~1.5 Mbps in absolutely perfect conditions, quickly deteriorating with range. Pictures at best could be sent ~200m and took 1-2 minutes to go through. And with such low power, expanding the bandwidth is not an option
with more power it very well could be an option, but not at current levels.

All that being said, I'd like to approach this in 2 steps.
1. rebuild the hardware to use either an Alfa AWUS036ACHM (30 dbm allegedly, definitely mesh compatible) or an Alfa AWUS036ACH (dual antenna , MIMO?? works at least as Batman IBSS, if not full 802.11s) <br>.
   use the batman-adv experience to basically rebuild the existing system using wifi. In preparation for Edgemap conversion, also build in a Rak4631 LoRa radio into enclosure. Continue using as an ATAK enabler until Edgemap is ready to go
   Question is whether to go 802.11s (try to use wpa_supplicant to setup this time for east WPA3 integration) or to go batman IBSS. We may have enough bandwidth that IBSS could be a move? but with only 1 wifi interface is that an advantage? If we do end up getting stuck without Edgemap, this may open the way for more types of hardware that may not support 802.11s
3. Convert hardware over to semi-custom Edgemap operating system with same Wifi/Lora combo

   The AWUS036ACH driver needs this process for drivers https://store.rokland.com/pages/alfa-awus036ach-awus036ac-awus036eac-driver-install-linux-kali     https://github.com/aircrack-ng/rtl8812au


   Batman build instructions
   - Fresh install of bookworm 64 bit lite, apt update/upgrade
   - sudo rfkill block bluetooth
   - sudo apt-get install hostapd , sudo systemctl unmask hostapd , sudo systemctl enable hostapd
   - sudo apt install batctl bridge-utils and remember you need to sudo modprobe batman-adv every boot
   - 
