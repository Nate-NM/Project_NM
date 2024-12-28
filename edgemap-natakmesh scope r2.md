# Edgemap Image for NatakMesh Nodes

Based on our discussions over the last 24 hours it sounds like a semi-custom Edgemap image could be a possibility to act in place of the current Pi-OS/ATAK combination.

Obviously there is a lot of detail to sort out on compensation, amount of time youre willing to spend on this. But per the last few notes, I just wanted to drop a target use case for this initial version, with hopes to expand in the future.

you've sent over a few contacts for hardware over the last year or so, that's given me insight on a few real world use cases that these guys asked for, combined with some targets i'd like to aim for

## Use Case
1. RocketDNA: Drone security company. Drones reported back to a central "call center" far away from site. Needed a way to guide on site resources to intrusion. Coordination between a "mobile unit" which was a vehicle and<br>
several on site personnel. Ideal condition would be drone footage to on site resources along with GPS  and live map along with markers set by either party to assist in intrusion intercept
2. Plexus ISR: Backup for cell connected ATAK network, body worn radios. Was very interested in Meshtastic
3. Off-Roading: Some interest expressed for a system that would allow connectivity voice/location between mildy widely separated offroading groups
4. Disaster Recovery: Some interest from a group up in the Carolinas that were heavily impacted by the hurricanes this season. Cell/data networks were down for extended periods of time, VHF voice was about all that still worked, but tough to coordinate with just that. The city/county level government allegedly has a desire for a better off-grid networking solution

## Hardware
right now there are 2 versions. both are raspberry pi4 based but vary with their radio configuration
1. most developed version is a pi4 and a teledatics td-xpah inside of a 3d printed case, 5 dbi alfa 915 mhz antenna, external power pack and ethernet passthrough via m12 connectors
2. building a second version that has 2 radios, an alfa wifi card at 5.8 ghz and a rak4631 lora radio. both connected via pi usb. plus a gps dongle in preparation for use by edgemap. had some issues with the alfa drivers so ended up having to use openwrt to get these to mesh, but it works.

## Software
currently using some combination of raspi-os or openwrt on the pi and atak/meshtastic on the eud

a few thoughts on what parts of edgemap i'd like to really smooth out for installation on these nodes

1. interact with wifi card and rak lora module. theres still come questions about the exact card but the teledatics would be nice to have. but i am starting to look heavily at the alfa awus036achm which openwrt has a good driver for. would like this to handle an 802.11s or batman-adv mesh
2. encryption- macsec would be cool, but would like to discuss as ease of setup for less technical users would be a big deal
3. self marker, hardware will have a gps dongle. would like this to auto populate and also place all self markers of other nodes on the mesh. would like to use your high rate upadate on these if possible
4. poi markers. would like a quick clean way to send various poi markers with choices to broadcast to all users or send to just 1
5. text/pictures between members.
6. mesh monitoring- some way to quantify connection status between nodes
7. video would be cool
8. provisions for ptt voice , but likely wont be in this harware version
9. i plan on exposing the ethernet port on this hardware also, it would be nice to let a pc running edgemap plug into one of these nodes and use it to connect to mesh
10. anything else that jumps out at you as a reasonable addition

most of this stuff is already in basically, but smoothing out the ui to do these would be something id like to discuss
and im not sre how hand off between the wifi card and the lora radio would be handled. 

## final thoughts
Once some funding is rolling in I definitely want to dig into a much more feature complete piece of hardware to leverage all the capabilities you've created.

I think the primary question is whether you'd even be interested in this kind of build, and if you are, how can we compensate you for your time? I've got a few groups interested in the current solution, but I really do think Edgemap could really set this hardware apart.
   


