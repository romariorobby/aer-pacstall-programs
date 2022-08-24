name="htim-git"
pkgname="htop"
version=3.2.0
description="Htop improved, htop with vim key bindings"
url="https://gitlab.com/thelinuxguy9/htim/-/archive/master/htim-master.tar.bz2"
depends="libncurses5-dev libncursesw5-dev"
replace="htop"
maintainer="Romario <romariorobby@yahoo.com>"

prepare() {
  ./autogen.sh
  ./configure \
  --prefix=/usr \
  --sysconfidir=/etc \
  --enable-unicode
}
build() {
  make -j$(nproc)
}
install() {
  sudo make install DESTDIR="${STOWDIR}/${name}"
  sudo install -Dm755 htop.desktop -t "${STOWDIR}/${name}/usr/share/applications"
}
