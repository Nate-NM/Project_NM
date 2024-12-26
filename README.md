# Project_NM

## Use Case
1. RocketDNA: Drone security company. Drones reported back to a central "call center" far away from site. Needed a way to guide on site resources to intrusion. Coordination between a "mobile unit" which was a vehicle and<br>
several on site personnel. Ideal condition would be drone footage to on site resources along with GPS  and live map along with markers set by either party to assist in intrusion intercept
2. Plexus ISR: Backup for cell connected ATAK network, body worn radios. Was very interested in Meshtastic
3. Off-Roading: Some interest expressed for a system that would allow connectivity voice/location between mildy widely separated offroading groups
4. Disaster Recovery: Some interest from a group up in the Carolinas that were heavily impacted by the hurricanes this season. Cell/data networks were down for extended periods of time, VHF voice was about all that still worked, but tough to coordinate with just that. The city/county level government allegedly has a desire for a better off-grid networking solution
5. 


## Hardware
1. Main Wi-Fi Radio: alfa awus036achm
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
