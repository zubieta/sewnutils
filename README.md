# Sewnutils

This is a set of small tailor-made tools that were stitched together out of
my own ideas and code patches found on the Internet that I commonly use.

## TOOLS

-   **autobrew** - Easily maintain packages installed with _brew bundle_.
-   **colors** - Show the color palette of your terminal multiple ways.
-   **viscosity** - Connect/disconnect to VPNs from the command line.

## DEPENDENCIES

-   **bash**
-   **grep**
-   **brew**
-   **Viscosity.app**

#### BUILD TIME DEPENDENCIES

-   **make**
-   **pandoc**

## INSTALLATION

They can be installed with `brew`:

```bash
brew tap zubieta/tab
brew update
brew install zubieta/tap/sewnutils
```

Or they can be installed from source:

```bash
wget https://github.com/zubieta/sewnutils/archive/v0.2.tar.gz -O sewnutils-v0.2.tar.gz
tar xfz sewnutils-v0.2.tar.gz
cd sewnutils-0.2
./configure --prefix=/usr/local
make
make install
```
