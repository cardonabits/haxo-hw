## 📣 Announcement: Crowdfunding campaign in progress 📣

If you would like to have a Haxophone, but would rather skip the building part, you can get one via our [crowdfunding campaign at Crowd Supply](https://www.crowdsupply.com/cardonabits/haxophone).  The campaign will run until October 19th 2023.

## Table of Contents

<!-- toc -->

- [What is a haxophone](#what-is-a-haxophone)
- [Project Goals](#project-goals)
  * [Goals](#goals)
  * [Non-Goals](#non-goals)
- [How does it work?](#how-does-it-work)
- [Mechanical Design](#mechanical-design)
- [Electrical Design](#electrical-design)
  * [Keyboard](#keyboard)
  * [Audio Amplifier](#audio-amplifier)
  * [Pinout](#pinout)
- [Tools/Stack](#toolsstack)
- [Software](#software)
- [Manufacturing](#manufacturing)
- [Bill of Materials](#bill-of-materials)
- [Assembly Instructions](#assembly-instructions)
- [TODO list](#todo-list)
- [License and Contributions](#license-and-contributions)
- [Acknowledgements](#acknowledgements)

<!-- tocstop -->

## What is a haxophone

A haxophone is an electronic musical instrument that resembles a saxophone.
It is designed to be an inexpensive and fully customizable travel saxophone.
You will never get the same expressiveness or depth of sound of a real
saxophone.  But with a haxophone you should be able to play alone or with
friends wherever you might be.  The mechanical keys and unique ergonomics give
it a different kind of satisfying feel.

https://user-images.githubusercontent.com/676181/133919454-f654cb48-cca9-4b6e-bcb5-27de6ea2deb8.mp4

The design is fully open, software and hardware.  This means that you can make
it your own, from changing the type of key switches to making your own note and
instrument mappings.

![Haxophone Prototype v0.5](docs/images/haxophone-main.png)
![Haxophone Prototype v0.5](docs/images/haxophone-black.png)

## Project Goals

### Goals

1. Build a travel saxophone that is fun and satisfying to play.
2. Build an instrument with the same fingering as a saxophone so that muscle
   memory developed on the haxophone is directly transferrable to your main
horn.
3. Keep the cost low, below $100 USD.
4. Easy to manufacture.
5. Keep the design simple, sturdy and repairable to minimize maintenance cost.
   Using widely available and battle-tested mechanical keys from computer
keyboards is one example of this principle in use.
6. Fully hackable and customizable.

### Non-Goals

1. A haxophone is not designed to be a saxophone replacement.

## How does it work?

The haxophone is designed as a HAT (Hardware Attached on Top) for the Raspberry
Pi family of single-board computers.

The haxophone HAT is a special type of keyboard laid out in the same way as
saxophones are.  It also includes a mouthpiece and a pressure sensor to detect
breath intensity.  The HAT also includes an audio amplifier so it does not rely
on the amplifier that is built into the [Raspberry Pi
3](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/) and
[Raspberry Pi 4](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/).
Because of that, the HAT will also work with the least expensive of the Pi's,
the [Raspberry Pi
Zero](https://www.raspberrypi.org/products/raspberry-pi-zero/).

![Block Diagram](docs/images/block-diagram.png)

The software that runs on the Raspberry Pi is:

1. [haxo-rs](https://github.com/jcard0na/haxo-rs):  This is the driver that
   detects key presses, breath and converts it into notes.  It's written in
   Rust, and compiled on the Raspberry Pi into a native application.
2. [fluidsynth](https://github.com/FluidSynth/fluidsynth):  This is the
   synthesizer software that will convert notes into sounds.


## Mechanical Design

In order to keep costs down, the HAT PCB (printed circuit board) is an integral
part of the physical structure of the Haxophone.  This means that key switches,
thumb rests, mouthpiece and the Raspberry Pi are all attached directly to the
PCB.  The side keys (left palm and right knuckle keys) are mounted on smaller
PCBs and attached to the main PCB via right angle metal brackets.  This smaller
PCBs are detachable pannels from the design.  This brings down the
manufacturing cost.

![renders](docs/images/renders.png)

![renders](docs/images/haxophone-pcb.png)

For improved ergonomics, a few parts are designed to be 3D printed.  These are
the mouthpiece neck, the left thumb rest, and the right thumb rest, that also
incorporates a strap hook.  The source 3D models for those parts are included
in the repository.

![3dparts](docs/images/3dparts.png)

## Electrical Design

The haxophone hat is comprised of three subsystems:  a keyboard, a pressure
sensor and an audio amplifier.

### Keyboard

The keyboard is organized as a 3x8 matrix.  The diagram below shows the mapping
from saxophone keys to keyboard column/row values.

![matrix](docs/images/fingering-matrix.png)

Note that due to PCB size constraints, a design decision was made to not
include a high F# key.  This key is not present in all saxophones, as that
note can be played using alternate fingerings with other keys.  The most common
mappings of the high F# are already configured on the haxophone.  If you are
used to a less common configuration, the software is easy to extend.

Also note that at the moment the matrix is not completely used:  keys (col 0,
row 7) and (col 2, row 3) are unused.

### Audio Amplifier

The haxophone HAT includes an audio amplifier and a 3.5mm mini-jack.  This
allows connecting the haxophone to headphones or to an external amplifier.

### Pinout

The diagram below shows how the HAT connects to the Raspberry Pi.  The keyboard
matrix uses discrete GPIOs, the pressure sensor uses I2C and the audio
amplifier, I2S.

![](docs/images/hat-pinout.png)

You can refer to the diagram below from Raspberry Pi Spy if you need to locate
those pins on the Raspberry Pi header.
![](https://www.raspberrypi-spy.co.uk/wp-content/uploads/2012/06/Raspberry-Pi-GPIO-Header-with-Photo.png)

## Tools/Stack

The circuit board is designed with awesome [Kicad](https://www.kicad.org/).

All 3D models are designed with [Freecad](https://www.freecadweb.org/), the
open source 3D parametric modeler.

The code is written in [Rust](https://www.rust-lang.org) just for the pleasure
and reliability of it.

## Software

See [haxo-rs](https://github.com/jcard0na/haxo-rs) for details about the software.

## Manufacturing

The circuit boards were manufactured by JLPCB, who also assembled the surface mount parts.

## Bill of Materials

The table below shows the main parts required to build a full Haxophone.  Prices are rough estimates based on purchases made for prototypes.  Shipping costs or taxes not included.

| Qty | Part Description | Manufacturer | MPN | Supplier | Estimated cost USD (at quantity 5) |
| :--- | :---        |     :---:      |          :---: |  :---: | ---: |
| 1 | Partially-assembled Haxo HAT PCB (small SMD parts populated) | N/A | N/A | Several  | $15 |
| 1 | Differential pressure SMD sensor | NXP | MPXV7007DP | Arrow |  ~$10~ Post-Covid: $24     |
| 1 | Set of 3D printed parts | N/A | N/A | Several  | $4 |
| 1 | 30cm Food grade Silicon Tube ID:3mm/OD:6mm | JUNZHIDA | N/A | Amazon | $2 |
| 22 | Tactile-feedback 5-pin mechanical switches | Cherry MX | MX-Brown | Banggood | $11 |
| 22 | Keycaps For Mechanical Keyboards | [Many options!](https://esckeyboard.com/) |  | | $10  |
| 2 | 4-pin 0.1in Pin Header Con Right Angle | Samtec | TSW-102-25-T-D-RA | Arrow | $2 |
| 2 | 4-pin 0.1in Pin Socket Con Straight |  TE Connectivity | 215309-2 | Arrow | $2 |
| 1 | 40-pin 0.1in Pin Header Connector | TE Connectivity | 2-535542-0 |  Arrow | $2 |
| 6 | Mounting Bracket L-shape | Keystone | 612 | Mouser | $1.5 |
| 18 | 4-40 1/4 screws and nuts stainless | Keystone | 9900, 4694 | Mouser | $1 |
| 4 | M2/7mm machine screws flat head stainless | Master-Carr | 92010A003 | Master-Carr | $0.5 |
| 3 | 7/16in aluminum spacers | Fascomp | FC1636-440-A | Mouser | $1 |
| 1 | Sax Mouthpiece + Reed | N/A | N/A | N/A | Bring your own (but optional) |
| 1 | Neck Strap | N/A | N/A | N/A | Bring your own (but optional) |
| 1 | Raspberry Pi Zero | Broadcom | Raspberry Pi Zero | Many | $5 |
| 1 | 16 GB SD Card | Many | N/A | Many | $6 |
| ~**Total**~ | | | | | ~**$73**~ (Pre-Covid) |
| **Total** | | | | | **$97** (Post-Covid) |

## Assembly Instructions

See [Assembly Guide](docs/assembly.md)

## TODO list

If you would like to help claim one of [the open issues](https://github.com/jcard0na/haxo-hw/issues) or [create a new one](https://github.com/jcard0na/haxo-hw/issues/new/choose) for yourself.
If you prefer to stay in software land, head out to [the software issues](https://github.com/jcard0na/haxo-rs/issues).

## License and Contributions

See [License](LICENSE).
We'll gladly accept contributions via Pull Requests.  Contributions are
accepted under the same [License](LICENSE) of the project, as captured in
[github's terms of
service](https://docs.github.com/en/github/site-policy/github-terms-of-service#6-contributions-under-repository-license).

If you plan to contribute a major feature or improvement, consider posting your proposed design as an issue before implementing it.

## Acknowledgements

[Ben Gonzales](https://gonzos.net/projects) has been a great source of inspiration and encouragement.  His [midi-Sax](https://gonzos.net/projects/midi-wind-controller-building-my-own/) is a great project worth checking out.
