# jotafetch

A neofetch-like utility made by Jotalea.

## Installation

### Manual Installation

Clone the repository and run:

```bash
sudo make install
```

### Arch Linux (PKGBUILD)

```bash
git clone https://github.com/jotalea/jotafetch.git
cd jotafetch
makepkg -si
```

### Nix (Flakes)

```bash
nix profile install github:jotalea/jotafetch
```

Or run without installing:

```bash
nix run github:jotalea/jotafetch
```

### Gentoo (ebuild)

Add to your local overlay and run:

```bash
emerge --ask app-misc/jotafetch
```

### Alpine Linux (APKBUILD)

```bash
abuild -r
apk add jotafetch
```

### Fedora / RHEL (.spec)

```bash
fedpkg --dist f40 mockbuild
# or
rpmbuild -ba jotafetch.spec
```

## Usage

Simply run:

```bash
jotafetch
```

## License

MIT License. See [LICENSE](LICENSE) for more information.
