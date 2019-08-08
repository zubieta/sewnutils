# NAME

autobrew — Easily maintain packages installed with _brew bundle_.

# SYNOPSIS

**autobrew** [**-h** | **--help**][**-f** | **--force**]

# DESCRIPTION

**autobrew** it build on top of _brew bundle_. It updates, upgrades and cleans
up the packages defined in the user _~/.Brewfile_.

It runs only on allowed networks if the _~/.autobrew_allowed_ file exists. The
allowed networks are defined in such file by placin its **SSID** on a new line.

# OPTIONS

**-h**,**--help** Display a help message.

**-f**,**--force** Force the package maintenance even if the current network is
not allowed.
