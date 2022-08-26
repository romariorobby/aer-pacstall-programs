name="pamixer-git"
pkgname="pamixer"
gives="${pkgname}"
replace="${pkgname}"
url="https://github.com/cdemoulins/${pkgname}.git"
build_depends="meson libcxxopts-dev libpulse-dev"
description="Pulseaudio command line mixer"
maintainer="Romario <romariorobby@yahoo.com>"

pkgver(){
   git ls-remote "${url}" master | cut -f1 | cut -c1-8
}

version="$(pkgver)"

prepare(){
  true
}

build(){
  meson setup build
  meson compile -C build
}

install(){
  sudo DESTDIR="${STOWDIR}/${name}" meson install -C build
}
