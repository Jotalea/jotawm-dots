# Maintainer: Jotalea <main@jotalea.com.ar>
pkgname=jotawm-dots-git
pkgver=2026.01.07.r1
pkgrel=1
pkgdesc="Jotalea's Catppuccin Mocha dotfiles for use alongside jotawm"
arch=('any')
url="https://github.com/jotalea/jotawm-dots"
license=('MIT')
makedepends=('git')
conflicts=('jotawm-dots')
optdepends=(
  'jotawm-git: X11 tiling window manager these dotfiles are designed for'
  'polybar: status bar'
  'picom-simpleanims-git: animated compositor'
  'dunst: notification daemon'
  'rofi: launcher and wallpaper picker'
  'kitty: default terminal'
  'dolphin: default file manager'
  'firefox: default browser'
  'feh: wallpaper setter'
  'maim: screenshots'
  'xclip: clipboard for screenshots'
  'brightnessctl: screen brightness'
  'playerctl: multimedia keys'
  'pulseaudio-utils: pactl volume control'
  'libnotify: notify-send used by the scripts'
  'socat: mpv IPC used by the music script'
  'mpv: media playback (polybar music module)'
  'obs-studio: for the included Catppuccin theme'
  'starship: shell prompt'
  'curl: dolar module'
  'ttf-jetbrains-mono-nerd: default monospace font'
  'catppuccin-gtk-theme-mocha: GTK3/4 theme'
  'kvantum-theme-catppuccin-git: Kvantum theme'
  'qt5ct: Qt5 styling'
  'qt6ct: Qt6 styling'
  'catppuccin-cursors-mocha: cursor theme'
  'xorg-setxkbmap: keyboard layout'
  'ly: display manager'
)
source=("git+file://${startdir}")
sha256sums=('SKIP')

pkgver() {
  cd "$srcdir/jotawm-dots" 2>/dev/null || cd "$srcdir"
  if git describe --long --tags >/dev/null 2>&1; then
    git describe --long --tags | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
  else
    printf "%s.r%s.%s" "$(date +%Y.%m.%d)" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
  fi
}

package() {
  cd "$srcdir/jotawm-dots" 2>/dev/null || cd "$srcdir"

  local data="$pkgdir/usr/share/$pkgname/home"
  install -d "$data"
  cp -r .config .jotalea .gtkrc-2.0 .Xresources "$data/"
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"

  local script="$pkgdir/usr/bin/jotawm-dots-install"
  mkdir -p "$(dirname "$script")"
  cat > "$script" <<'EOF'
#!/bin/sh
set -eu

src=/usr/share/jotawm-dots-git/home
dest="${HOME:-}"

[ -d "$src" ] || { echo "jotawm-dots: data directory not found: $src" >&2; exit 1; }
[ -n "$dest" ] || { echo "jotawm-dots: \$HOME is not set" >&2; exit 1; }
[ -d "$dest" ] || { echo "jotawm-dots: home directory not found: $dest" >&2; exit 1; }

cp -rT "$src" "$dest"
echo "jotawm-dots: config files copied to $dest"
EOF
  chmod 755 "$script"
}
