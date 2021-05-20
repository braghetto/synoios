SynoIOS
======
A Synology DSM Package to mount iOS devices from usb.

After installation the package must be in the running state,
then connect your iOS device into usb.
Now you should see your device files mounted in AppleDevice share.

This package was tested using a Synology DS1515+ running DSM 6.2.4-25556 and a iPhone 11.


## Requirement
* Python3
* Docker (libimobiledevice is built inner a container.)
* Synology Open Source Toolkit (for repacking them into a NAS package)

## How to Build

### Preparation
`$ mkdir /toolkit`

`$ cd /toolkit && git clone https://github.com/SynologyOpenSource/pkgscripts-ng`

`$ cd /toolkit/pkgscripts-ng && ./EnvDeploy -v 6.2 -p x64`

### Clone This Project
`$ mkdir -p /toolkit/source`

`$ cd /toolkit/source && git clone https://github.com/braghetto/synoios`

### Compile inner a docker container
`$ cd /toolkit/source/synoios && ./build.sh`

### Build NAS package (without CodeSign)
`$ /toolkit/pkgscripts-ng/PkgCreate.py -v 6.2 -p x64 -S synoios`

// Output Folder: /toolkit/build_env/ds.x64-6.2/image/packages/

After installation, idevice*, ifuse, usbmuxd are available in command-line.

### Remove toolkit
`$ chroot /toolkit/build_env/ds.x64-6.2 umount /proc`
`$ rm -rf /toolkit/build_env/ds.x64-6.2`


## Reference
* Forked from bxxxjxxg (https://github.com/Synology/libimobiledevice)
* Synology Open Source (https://github.com/SynologyOpenSource)
