name="upterm-bin"
pkgname="upterm"
repology=("project: ${pkgname}")
gives="${pkgname}"
version="0.9.0"
url="https://github.com/owenthereal/${pkgname}/releases/download/v${version}/${pkgname}_linux_amd64.tar.gz"
breaks="${pkgname}-git"
replace="${pkgname}"
description="Secure Terminal Sharing"
hash="c209002950330b15d9feccb992db7f8ab27725266014507eef7a7e8c90e5d4b7"
maintainer="Romario <romariorobby@yahoo.com>"

prepare(){
  true
}

build(){
  true
}
# TODO: Where i put docs? completion?
install() {
  sudo install -Dm755 "${gives}" -t "${STOWDIR}/${name}/usr/bin"
}

