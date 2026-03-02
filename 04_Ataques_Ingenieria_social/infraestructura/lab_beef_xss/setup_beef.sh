#!/bin/bash

echo "[*] Iniciando configuración de BeEF..."

# Install dependencies if not present
apt-get update -qq && apt-get install -yqq psmisc procps lsof net-tools curl wget beef-xss ruby-bundler libsqlite3-dev build-essential patch ruby-dev zlib1g-dev liblzma-dev ruby-msgpack ruby-sqlite3 ruby-eventmachine ruby-em-websocket thin

# Fix for systemctl not being found in BeEF initialization script
if [ ! -f /usr/bin/systemctl ]; then
    echo '#!/bin/bash' > /usr/bin/systemctl
    chmod +x /usr/bin/systemctl
fi

cd /usr/share/beef-xss/

# Re-enable essential extensions
sed -i '/extension:/,/xssrays:/ s/enable: false/enable: true/g' /usr/share/beef-xss/config.yaml
# Disable problematic ones
sed -i '/geoip:/,/enable:/ s/enable: true/enable: false/g' /usr/share/beef-xss/config.yaml
sed -i '/metasploit:/,/enable:/ s/enable: true/enable: false/g' /usr/share/beef-xss/config.yaml
sed -i '/evasion:/,/enable:/ s/enable: true/enable: false/g' /usr/share/beef-xss/config.yaml

# Set credentials
NEW_PASS="Cisco_Lab_2026!"
sed -i "s/passwd: .*/passwd: $NEW_PASS/g" /usr/share/beef-xss/config.yaml
if [ -f /etc/beef-xss/config.yaml ]; then
    sed -i "s/passwd: .*/passwd: $NEW_PASS/g" /etc/beef-xss/config.yaml
fi

# Fix Proxy Port conflict
sed -i 's/port: 6789/port: 6791/g' /usr/share/beef-xss/extensions/proxy/config.yaml

# Bundle install
bundle lock --add-platform x86_64-linux
bundle lock --add-platform x86_64-linux-gnu
bundle install

# Final clean up process
fuser -k 3000/tcp || true
fuser -k 6791/tcp || true
pkill -9 ruby || true

echo "[*] BeEF configurado. Iniciando servidor..."
bundle exec ruby beef
