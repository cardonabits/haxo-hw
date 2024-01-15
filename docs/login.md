# Log into your Haxophone

Your haxophone runs on Linux, and sometimes it is necessary (or fun) to just poke inside.
For that you will need to log into your system.  There are three supported ways to do so.

## Monitor and Keyboard

This is probably the method people are most familiar with:  attach a monitor to
the HDMI port of the haxophone, a USB keyboard, and you are in.  On the Zeros,
this normally requires a micro-USB to USB adapter.  This is not the most
portable setup, as not everyone carries a monitor in their pocket.  For more
nimble solutions, keep reading.

![](./images/hdmi-port.jpg)
![](./images/hdmi-session.jpg)

## Serial Port

This requires a USB to 3.3V TTL adapter.  The most popular brand is
[FTDI](https://ftdichip.com/products/ttl-232r-3v3/), but there are many other
alternatives you can use.  

The Haxophone has a 3-pin header that exposes the Raspberry Pi serial port.
The pinout matches that of the Raspberry Pi header, so if you prepare a cable
for the Haxophone, you can also use it to connect directly to any Raspberry Pi.

![](./images/serial-header.jpg)


You need to connect your cable's TxD to the Raspberry Pi RxD and your cable's
RxD to the Rasperry Pi TxD.  If you are using an FTDI cable, this is how the
colors line up.

![](./images/serial-port.jpg)

Once you do that, you can use a serial terminal program to connect.  For instance, `minicom`.

![](./images/minicom.png)


## SSH over Ethernet

The default Haxophone images have WiFi disabled for performance.  WiFi activity
can introduce delays that affect latency while playing.  For that reason, to
connect over SSH, you would need to use Ethernet.  On the Rapsberry Pi Zero,
this means that you will need a serial to Ethernet adapter.

![](./images/ethernet-dongle.jpg)

The haxophone images are configured with username `pi`, password `haxophone` and they will appear on your local network as `haxophone.local`.

![](./images/ssh-session.png)

## Checking the logs

Probably the most important log that you want to check is the one for the haxophone service.
You can do that with the command `journalctl -u haxo`.  See below for the expected output:

```
pi@haxophone:~ $ journalctl -u haxo
-- Boot 9ecd1d956b6448adb9348f40065fbd4f --
Jan 05 22:38:47 haxophone systemd[1]: Started haxophone.
Jan 05 22:38:52 haxophone create_midi_gadget.sh[468]: created usb midi gadget
Jan 05 22:38:52 haxophone haxo001[570]: fluidsynth: warning: SDL2 not initialized, SDL2 audio driver won't be usable
Jan 05 22:38:52 haxophone haxo001[570]: [2024-01-05T22:38:52Z INFO  haxo001::alsa] Found alsa card MAX98357A
Jan 05 22:39:01 haxophone haxo001[570]: Synth created
Jan 05 22:39:02 haxophone haxo001[570]: [2024-01-05T22:39:02Z INFO  haxo001::midi]
Jan 05 22:39:02 haxophone haxo001[570]:     Available output ports:
Jan 05 22:39:02 haxophone haxo001[570]: [2024-01-05T22:39:02Z INFO  haxo001::midi] 0: Midi Through:Midi Through Port->
Jan 05 22:39:02 haxophone haxo001[570]: [2024-01-05T22:39:02Z INFO  haxo001::midi] 1: f_midi:f_midi 24:0
Jan 05 22:39:02 haxophone haxo001[570]: [2024-01-05T22:39:02Z INFO  haxo001::midi] Picked the last one
Jan 05 22:39:02 haxophone haxo001[570]: Starting haxophone (version 2493652)...
```

## Conclusion

How many other instruments give you so many ways to peek inside see their internals? You should dive in! 🤿
