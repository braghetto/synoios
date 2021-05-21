#!/bin/bash

source /pkgscripts/include/pkg_util.sh

package="synoios"
version="1.0.2"
firmware="6.2.4-25556"
displayname="SynoIOS"
maintainer="Arthur Braghetto"
maintainer_url="https://github.com/braghetto/synoios"
distributor="Arthur Braghetto"
distributor_url="https://arthur.mobi/posts/synoios/"
arch="$(pkg_get_unified_platform)"
description="Adds the ability to mount iOS devices via usb on your Synology NAS."
[ "$(caller)" != "0 NULL" ] && return 0
pkg_dump_info
