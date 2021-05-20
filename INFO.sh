#!/bin/bash

source /pkgscripts/include/pkg_util.sh

package="synoios"
version="1.0.01"
firmware="6.2.4-25556"
displayname="SynoIOS"
maintainer="arthurmb"
maintainer_url="https://arthur.mobi"
distributor="arthurmb"
distributor_url="https://github.com/braghetto/synoios"
arch="$(pkg_get_unified_platform)"
description="Mount your iOS device on usb."
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
