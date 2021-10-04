# NAME

viscosity — Connect/disconnect from a VPN using Viscosity.app on OS X.

# SYNOPSIS

**viscosity** **command** [**VPN**]

# DESCRIPTION

**viscosity** is a small bash wrapper around the Viscosity.app to easily
connect/disconnect from VPNs.

Adapted from Joshua Priddle's original version at <https://josh.fail/blog/2015/viscosity-cli.html>.

# COMMANDS

**list**          List all VPNs.

**connect**       If parameter **VPN** is passed then connect to the VPN with
that name, otherwise connect to all.

**disconnect**    If parameter **VPN** is passed then disconnect from the VPN
with that name, otherwise disconnect from all.

**status**        If parameter **VPN** is passed then show the status of the VPN
with that name, otherwise show the status of all.

**help**          Show this help message.
