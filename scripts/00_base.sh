set -ux

sed -i -e 's/#//g' /etc/apk/repositories
sed -i -e '1d' /etc/apk/repositories

# Upgrade All Packages in OneShot
apk upgrade --update-cache --available

cat << EOF > /etc/motd
Alpine 3.9 Image
EOF
