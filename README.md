# Project_NM

## Use Case
1. RocketDNA: Drone security company. Drones reported back to a central "call center" far away from site. Needed a way to guide on site resources to intrusion. Coordination between a "mobile unit" which was a vehicle and<br>
several on site personnel. Ideal condition would be drone footage to on site resources along with GPS  and live map along with markers set by either party to assist in intrusion intercept
2. Plexus ISR: Backup for cell connected ATAK network, body worn radios. Was very interested in Meshtastic
3. Off-Roading: Some interest expressed for a system that would allow connectivity voice/location between mildy widely separated offroading groups
4. Disaster Recovery: Some interest from a group up in the Carolinas that were heavily impacted by the hurricanes this season. Cell/data networks were down for extended periods of time, VHF voice was about all that still worked, but tough to coordinate with just that. The city/county level government allegedly has a desire for a better off-grid networking solution
5. 


## Hardware
1. Main Wi-Fi Radio: alfa awus036achm (transitioning away from Teledatics td-xpah if alfa range even close to equivalent)
2. LoRa Radio: rak19007
3. SBC: pi4 4gb
4. Antenna: female n type adapter for both 5 ghz an 900 mhz
5. Power: any 5v power pack, power in via m12 connector to pi gpio

## Software
### Current Iteration
OpenWRT on the pi enabling 802.11s mesh and wifi hotspot bridge to mesh for EUD use.
EUD running ATAK w/Meshtastic plug in paired to LoRa radio.
### Planned iteration
Edgemap with direct serial connection to lora radio, onboard drivers for awus036achm provisions for reticulum over ethernet maybe, what else would be a good fit
would like to sort out awus036ach driver issue to get mimo wifi, and then longer term, custom board with nrc7394 halow module at 1 w

see scope document in this repo

900 mhz iteration with updated n type antenna
![PXL_20241220_234526984](https://github.com/user-attachments/assets/27e5b868-8f40-4aa4-a98b-324580f52b3d)



low profile
![PXL_20241220_215937116 PORTRAIT](https://github.com/user-attachments/assets/1deb7e1a-f1ad-452d-9af5-347fcd64e857)

Range day
![PXL_20241103_183909610](https://github.com/user-attachments/assets/549fc218-5248-44ce-8d29-d3b75b8adc8b)
