# movement
https://docs.movementnetwork.xyz/devs/tutorials/build

https://docs.movementnetwork.xyz/devs/movementcli
git clone https://github.com/movementlabsxyz/aptos-core/ && cd aptos-core
cargo build -p movement

sudo apt-get install lld
sudo apt-get install libudev-dev
sudo apt-get install libdw-dev


cargo clean
cargo build -p movement

warning: `aptos-consensus` (lib) generated 17 warnings
warning: `movement` (lib) generated 1 warning
    Finished `dev` profile [unoptimized + debuginfo] target(s) in 11m 54s

sudo cp target/debug/movement /usr/local/bin/