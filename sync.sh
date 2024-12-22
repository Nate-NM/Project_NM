#!/bin/bash
# Base directory for GitHub repo
REPO_DIR="/home/natak/project_nm"

# Copy system configuration files
#cp -v --parents /etc/systemd/network/br0.netdev "$REPO_DIR/"
#cp -v --parents /etc/systemd/network/br0.network "$REPO_DIR/"
#cp -v --parents /etc/hostapd/hostapd.conf "$REPO_DIR/"
#cp -v --parents /etc/systemd/network/eth0.network "$REPO_DIR/"
#cp -v --parents /etc/systemd/system/mesh_start.service "$REPO_DIR/"
#cp -v --parents /etc/systemd/system/web_app.service "$REPO_DIR/"
#cp -v --parents /etc/systemd/system/maxagg_tune.service "$REPO_DIR/"
#cp -v --parents /etc/systemd/system/delayed_maxagg.service "$REPO_DIR/"
#cp -v --parents /etc/systemd/system/hotspot_start.service "$REPO_DIR/"
#cp -v --parents /etc/avahi/avahi-daemon.conf "$REPO_DIR/"
#cp -v --parents /usr/local/bin/nrc_load_module.sh "$REPO_DIR/"


# Copy user scripts and configs
#cp -v --parents /home/natak/mesh/macsec.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/batmesh.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/batman-ibss.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/mesh-startup.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/mesh_config.env "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/hotspot-setup.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/maxagg-tune.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/batmesh.sh "$REPO_DIR/"
#cp -v --parents /home/natak/mesh/mtu-tune.sh "$REPO_DIR/"
#cp -v --parents /home/natak/web/app.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/batman_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/ampdu_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/mcs_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/signal_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/templates/index.html "$REPO_DIR/"
#cp -v --parents /home/natak/web/ampdu_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/web/mcs_reader.py "$REPO_DIR/"
#cp -v --parents /home/natak/node_configurator/node_config.py "$REPO_DIR/"
#cp -v --parents /home/natak/node_configurator/README "$REPO_DIR/"
#cp -v --parents /etc/NetworkManager/conf.d/unmanaged-mesh.conf "$REPO_DIR/"
#cp -v --parents /etc/NetworkManager/conf.d/unmanaged-wlan0.conf "$REPO_DIR/"
echo "Files synced to $REPO_DIR"