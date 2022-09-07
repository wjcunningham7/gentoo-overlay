## Gentoo Overlay

This repository contains the following ebuilds:

- `dev-python/bidict`
- `dev-python/cloudpickle`
- `dev-python/dask`
- `dev-python/distributed`
- `dev-python/fastapi`
- `dev-python/furl`
- `dev-python/HeapDict`
- `dev-python/orderedmultidict`
- `dev-python/python-socketio`
- `dev-python/zict`
- `www-servers/covalent`

## Repository Installation

### eselect-repository

`eselect-repository` is an `eselect` module used for configuring ebuild repositories for Portage. It is the recommended method for adding overlays (third-party repositories) to your system. Install it using

```shell
sudo emerge -a app-eselect/eselect-repository
```

Next, add the Covalent overlay:

```shell
sudo eselect repository add covalent git https://github.com/wjcunningham7/gentoo-overlay.git
```

### layman

Layman is a tool which allows Gentoo users to manage Gentoo overlays. Install it using

```shell
sudo emerge -a app-portage/layman
```

Next, create a file called `/etc/portage/repos.conf/layman.conf` with the following contents:

```
[covalent]
auto-sync = yes
location = /var/db/repos/covalent
sync-type = git
sync-uri = https://github.com/wjcunningham7/gentoo-overlay.git
```

Install the Covalent overlay using

```shell
sudo layman -a covalent
```

## Package Installation

### Download

Once the repository details have been configured, the source may be synced with your local Portage:

```shell
sudo emaint sync -r covalent
```

Perform this action any time you wish to update the overlay and make new versions visible to your system.

### Use Flags

The USE flags customize the installation. The default flags will look something like

| U | I |   |   |
|---|---|---|---|
| - | - |aws|Install AWS plugins and enable S3 file transfer support|
| - | - |doc|Build the documentation.|
| - | - |python_targets_python3_10|Build with Python 3.10|
| + | - |python_targets_python3_8|Build with Python 3.8|
| - | - |python_targets_python3_9|Build with Python 3.9|
| - | - |systemd|Install systemd service (default is OpenRC)|
| - | - |test|Install and run tests|

To enable the USE flags, add the following to `/etc/portage/package.use/covalent`, for instance:

```
www-servers/covalent aws systemd
```

### Installation

To install the package after the repository information has been configured, you may need to unmask it.  Add the following to the file `/etc/portage/package.accept_keywords`:

```conf
www-servers/covalent ~amd64
```

Next, install it system-wide using

```shell
sudo emerge -a covalent
```


## Starting the Service

Covalent can be started as an OpenRC service. The server settings of Covalent may be configured by modifying the values in `/etc/conf.d/covalent`.

Next, add Covalent at the default runlevel and start it:

```
sudo rc-update add covalent default
sudo rc-service covalent start
```

Ensure that if access is required from another machine, the port is opened on the firewall.  For instance, with `iptables` one would need to add the following rule to allow access across a LAN with address block `192.168.0.1/24`:

```bash
iptables -I INPUT -p tcp --dport 48080 -s 192.168.0.1/24 -j ACCEPT
iptables-save
```

Warning! This rule will allow all clients on the LAN to connect to the Covalent server. Always review firewall policies before making changes.

## Clients

Individual users may now connect as clients by pointing their Covalent config files to the server address and service port defined in `/etc/conf.d/covalent`.

```toml
[server]
address = "<dispatcher_hostname_or_address>"
port = 48080
```
