# Project_NM
12/31/24 notes
HWMP was still running underneath batman. added line on startup script to turn it off. But may be having a board failure on 0ce8. It isnt uncommon for wlan1 (xpah interface) to not come up every time and i saw it cut out on me down south and had extrememly poor results at any kind of distance yesterday to try to get a range test in. Right now going to focus on getting the wifi/lora node built out, then pivot back to the direct SPI connection on the XPAH. then need to sort out whether I've got a bad board or not. Stage 1 will be to get a quick and dirty range test of the wifi boards. if the achm generates useful data rates even at 200-300 meters that may be the choice for the demo run on the 11th


12/30/24 notes
1. after discord conversation, for ease of implementation remove all teledatics drivers and follow the newracom package for direct pin to pin SPI connection
2. Look at the notes on HWMP possibly still running under batman, maybe some of the throughput problem??
3. Look into babeld, some interesting notes on using that on top of a AP/STA config, but also could be a good replacement for batman. based on iw info output, it looks like the xpah can handle a virtual interface
   "valid interface combinations:
		 * #{ managed, AP, mesh point } <= 2,
		   total <= 2, #channels <= 1, STA/AP BI must match, radar detect widths: { 20 MHz (no HT), 20 MHz, 40 MHz, 80 MHz, 160 MHz }"

https://www.ewsn.org/file-repository/ewsn2024/ewsn2024posters-final16.pdf

## current hardware

900 mhz iteration with updated n type antenna
![PXL_20241220_234526984](https://github.com/user-attachments/assets/27e5b868-8f40-4aa4-a98b-324580f52b3d)

low profile
![PXL_20241220_215937116 PORTRAIT](https://github.com/user-attachments/assets/1deb7e1a-f1ad-452d-9af5-347fcd64e857)

Prototyping pass
![PXL_20241216_094351497](https://github.com/user-attachments/assets/c075f5c2-c750-42da-a5d1-a0228b86e255)

small batch
![PXL_20241203_095959048](https://github.com/user-attachments/assets/55f35afa-852e-4dc1-afea-4eb04c9d6343)
