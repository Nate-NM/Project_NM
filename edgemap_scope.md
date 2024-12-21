# Edgemap Image for NatakMesh Nodes

Based on our discussions over the last 24 hours it sounds like a semi-custom Edgemap image could be a possibility to act in place of the current Pi-OS/ATAK combination.

Obviously there is a lot of detail to sort out on compensation, amount of time youre willing to spend on this. But per the last few notes, I just wanted to drop a target use case for this initial version, with hopes to expand in the future.

Some 

1. Be able to talk to the Teledatics TD-XPAH Halow boards, drivers are brought in via DKMS module currently on Pi-OS. 
    a. As a stretch goal here, I'd love to customize their scripts/drivers here to allow me to wire these units directly in via the SPI pins. Allegedly possible, but I've not had luck so far. Otherwise current USB connection will work
2. Mesh communication   
    a. Ideally over both the Halow board and via a rak4631 LoRa board
3. Data
    a. Location data for all members of the mesh. I'm buying GPS dongles so the Pi's will have their own location data
    b. text messaging over Halow and LoRa
    c. Pictures if possible, understand this isnt reasonable over LoRa, so would need to be in HaLow range for this to work
    d. Provisions for PTT voice at some point, not in this iteration though.
4. Mesh monitoring
    a. some kind of output showing whether nodes have connections to other nodes in the mesh, maybe with a link metric to show relative quality
5. Provisions to be able to pass data/markers/pictures etc from a "base station" i.e. starlink connected laptop or equivalent


Hardware plan is 
1. Raspberry pi 4, 4 GB as main board
2. Teledatics TD-XPAH connected via USB
3. GPS dongle connected via USB
4. RAK4631 LoRa board connected via USB
5. M12 pass through for ethernet cable

The use case for this first iteration is just a standard man portable MANET radio. Squad level communication. providing relatively quick location data for team members, maps ,POI markers, pictures, text etc. Increased reliability by bringing in the LoRa radio. Basically using edgemap as an improved ATAK equivalent. I'd like for this hardware to be able to bridge data across starlink from a remote edgemap instance into a local mesh if possible.

The hope is to be able to iterate on the UI a bit as field testing in this use case goes on if you're open to that.