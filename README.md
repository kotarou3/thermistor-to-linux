# Thermistor to Linux adapter

This project creates three thermistor inputs that can be read via the Linux
hwmon interface

It uses the MAX6698 chip for its 3 thermistor inputs, attached to an I2C-Tiny-USB
via I2C, which then attaches onto the system USB bus

I chose the MAX6698 because it was one of the few chips satisfying:
 - Already has a Linux hwmon driver
 - Talks I2C/SMBus
 - Has dedicated thermistor inputs
 - Available via low MOQ suppliers like Digikey

Since few motherboards nowadays expose an I2C/SMBus bus on a header, it is further
adapted to USB via the I2C-Tiny-USB. It can then be plugged into a standard USB
port, or further adapted to an internal USB header

I personally created this because I wanted to monitor the coolant temperature
in my liquid cooling loop with hwmon, but I didn't have any motherboard thermistor
inputs

## Repository Guide
File                                                      | Purpose
----------------------------------------------------------|---------
`max6697-dkms/`                                           | DKMS module to build the hwmon kernel module for the MAX6698 if your kernel doesn't already include it
`thermistor-to-digispark-pcb/`                            | PCB for this project designed in KiCAD
`thermistor-to-digispark-pcb/gerber`                      | Gerber + drill + pick and place files (JLCPCB-compatible)
`thermistor-to-digispark-pcb/thermistor-to-digispark.csv` | Bill of materials (JLCPCB-compatible)
`thermistor-to-digispark-pcb/thermistor-to-digispark.pdf` | PDF schematic
`libsensors-max6698-sensors.conf`                         | libsensors config for more accurate readings and friendly names
`modprobe-max6698-sensors.conf`                           | modprobe config to blacklist `i2c-tiny-usb` autoloading for deterministic I2C bus numbering
`systemd-max6698-sensors.service`                         | systemd service to enable the MAX6698 device

## Hardware Setup
1. (Optional) Modify the divider resistors R3~R8 to suit your thermistor properties
   and measurement precision. Modify `libsensors-max6698-sensors.conf` to match
   (also contains information on how the default values were chosen)
2. Manufacture and assemble the PCB. Compiled gerber/drill/BOM/PnP files are
   already provided in a format suitable for JLCPCB. Not all parts might be
   available on JLCPCB though, so some manual assembly may be required.
3. Obtain a Digispark (clones available on Ebay) and [flash it with I2C-Tiny-USB
   firmware](https://github.com/harbaum/I2C-Tiny-USB/tree/master/digispark)
4. Attach the PCB to the Digispark via headers or otherwise
5. (Optional) Attach the Digispark to an USB-A to internal header adapter, if
   you wish to connect it to such a header
6. Attach your thermistors between the two pins of each `THERn` port

### MAX6698 Variants
There are multiple MAX6698 variants available. The files in this project assumes
the MAX6698UE38, which uses the TSSOP-16 footprint and I2C address `0x1c`

If you wish to use a different footprint variant, the PCB will need to be modified
to accommodate.  
If you wish to use a different I2C address variant, the addresses in
`libsensors-max6698-sensors.conf` and `systemd-max6698-sensors.service` need to
be updated

See the "Slave Address" table of the [MAX6698 datasheet](max6698-datasheet.pdf)
to see the corresponding part numbers

### BOM Cost

Notes:
- Prices in $USD at time of writing
- PCBA with JLCPCB, Digispark off Ebay@1/Digistump@5/JLCPCB@50, other parts off Digikey
- JLCPCB Assembly only includes the resistors and capacitors

Component            | Price@1 | Price@5 | Price@50
---------------------|---------|---------|----------
JLCPCB Manufacturing |  4      |  4      |  27.03
JLCPCB Assembly      |  9.02   |  9.02   |  11.29
JLCPCB Shipping      | 11      | 11      |  11
---------------------|---------|---------|----------
Digispark Clone      |  5.30   | 25      | 150
---------------------|---------|---------|----------
MAX6698UE38          |  7.58   | 37.90   | 326.56
Header Pins          |  0.33   |  1.02   |   8.63
Digikey Shipping     | 20      | 12      |   0
---------------------|---------|---------|----------
Total                | 57.23   | 99.94   | 534.51
Total (each)         | 57.23   | 19.99   |  10.70

Note that the project is not optimised for BOM cost, but ease of construction

An obvious way to reduce BOM cost significantly would be to do away with the
MAX6698 and Digispark, and use the ADC directly in an ATtiny or similar. But
that would mean spending time writing custom software (emulating a MAX6698, or
adding a new hwmon driver)

## Software Setup
Note: Instructions are for Debian bullseye on AMD64 and probably will need
modification for other distros or versions

1. Check if your kernel has the `max6697` module already (e.g., try running
   `sudo modprobe max6697`). If not, follow the DKMS instructions below
2. Run the below commands to install the various dependencies and config files

```sh
CONFIG_NAME="max6698-sensors"
sudo apt-get install -y lm-sensors
sudo install -m644 libsensors-max6698-sensors.conf "/etc/sensors.d/$CONFIG_NAME.conf"
sudo install -m644 modprobe-max6698-sensors.conf "/etc/modprobe.d/$CONFIG_NAME.conf"
sudo install -m644 systemd-max6698-sensors.service "/etc/systemd/system/$CONFIG_NAME.service"
sudo systemctl enable "$CONFIG_NAME.service"
sudo systemctl start "$CONFIG_NAME.service"
```

### DKMS Setup
The MAX6698 hwmon kernel module is included as part of `max6697`. However as of
writing, this module isn't included by default in Debian kernels, so must be
built out-of-tree unless you want to compile your own kernel

A DKMS module is provided that will automatically compile and install the
`max6697` module from the `linux-source` APT package. Run the commands below:

```sh
sudo apt-get install -y dkms linux-headers-amd64 linux-source
sudo dkms add max6697-dkms
sudo dkms install max6697/latest
```
