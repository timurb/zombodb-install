# ZomboDB installation

## Building ZomboDB deb package

Install Rust: https://rustup.rs/

See https://github.com/zombodb/zombodb/blob/master/SOURCE-INSTALLATION.md#building-binary-artifacts-with-docker for build instructions.

Example build command: `cargo run master zombodb-build-ubuntu-bionic 14`
If ZomboDB requires Rust upgrade use `rustup update`

Time to build: ~40min
Min docker memory (MacOS) for building: 4Gb (crashes on 2Gb docker memory)

## Installation of package to target server

See [install.sh](install.sh) for installation of packages.

Follow original upstream docs for creation of extension in PG and tuning the setup: https://github.com/zombodb/zombodb/blob/master/BINARY-INSTALLATION.md#postgresqlconf-settings-to-consider
