set -ux

apk add cloud-init
apk add acpi

# Start Cloud-Init on Boot
rc-update add cloud-init default
