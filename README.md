# Project_NM

12/22/24
After some pretty heavy work over the last few weeks working on the Teledatics TD-XPAH I finally seem to have solved the packet aggregation issue with the 1.5.2 version of the software
but it feels like tx power just isn't there. I've tried a large variety of good antennas, tired many many test runs and i believe tx power is holding this unit back badly.
at ~22 dbm, at best I was able to get an ATAK text message out at ~450 meters, but that was at the ragged edge in relatively clear LoS down tampa ave. Going NLoS cuts range down to ~ 100m. And max data throughput is
~1.5 Mbps in absolutely perfect conditions, quickly deteriorating with range. Pictures at best could be sent ~200m and took 1-2 moinutes to go through. And with such low power, expanding the bandwidth is not an option
with more power it very well could be an option, but not at current levels.

All that being said, I'd like to approach this in 2 steps.
1. rebuild the hardware to use either an Alfa AWUS036ACHM (30 dbm allegedly, definitely mesh compatible) or an Alfa AWUS036ACH (dual antenna , MIMO?? works at least as Batman IBSS, if not full 802.11s) <br>.
   use the batman-adv experience to basically rebuild the existing system using wifi. In preparation for Edgemap conversion, also build in a Rak4631 LoRa radio into enclosure. Continue using as an ATAK enabler until Edgemap is ready to go
2. Convert hardware over to semi-custom Edgemap operating system with same Wifi/Lora combo

   The AWUS036ACH driver needs this process for drivers https://store.rokland.com/pages/alfa-awus036ach-awus036ac-awus036eac-driver-install-linux-kali     https://github.com/aircrack-ng/rtl8812au
