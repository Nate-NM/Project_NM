# Edgemap Image for NatakMesh Nodes

Based on our discussions over the last 24 hours it sounds like a semi-custom Edgemap image could be a possibility to act in place of the current Pi-OS/ATAK combination.

Obviously there is a lot of detail to sort out on compensation, amount of time youre willing to spend on this. But per the last few notes, I just wanted to drop a target use case for this initial version, with hopes to expand in the future.

The primary use case for this hardware will be MANET nodes. Ideally a 2 interface solution, WiFi on an 802.11s Mesh (potentiall with Batman-adv routing) and a LoRa radio for when Wifi is out of range
For now I am leaning away from the Teledatics units. too finicky and low TX power/bandwidth 
Target capabilities
1. utilize WiFi hardware (Likely Alfa AWUS016ACHM) in a mesh configuration.
2. Interface with LoRa radio for Meshtastic integration
3. self marker
4. High rate marker update, at least on Wifi
5. Team member position (can this switch between wifi/Lora automatically?)
6. Send standard marker set (again, not sure how to decide what interface these go out over)
7. Send text/pictures between members (can picture locations be marked on map??)
8. Look at video if thats an option, obviously would only be able to happen on wifi connection
9. Mesh monitoring (believe this is already in, maybe just display TQ (from batman-adv) between nodes, at least on wifi?)

I think I'd like a pretty stripped down build for this particular hardware. Once some funding is rolling in I definitely want to dig into a much more feature complete piece of hardware to leverage all
the capabilities you've created.

I think the primary question is whwther you'd even be interested in this kind of build, and if you are, how can we compensate you for your time?
I've got a few groups interested in the current solution, but I really do think Edgemap could really set this hardware apart.
