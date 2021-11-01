
# Assembly Instructions

## Requirements

To assemble a haxophone you will need the following parts:

* 1x partially assembled PCB, with the surface mount parts populated
* 1x Surface mount pressure sensor
* 1x 40-positions female connector
* 2x Right-angle 4-positions male connector
* 2x Straight 4-positions female connector
* 18x 4-40 1/4 inch stainless steel screws
* 4x 4-40 nuts
* 4x M2 flat head phillips 7mm stainless steel machine screws
* 6x L-shape brackets
* 3x 7/16in aluminum spacers
* 30cm silicon tube ID:3mm, OD:6mm
* 1x 3D printed neck
* 2x 3D printed thumb rests
* [Acrylic Conformal Coating](https://www.mgchemicals.com/downloads/tds/tds-419d-l.pdf)

You will use the following tools:

* Soldering iron and solder
* Phillips screwdriver
* Side-cutting pliers

It is also convenient to have:
* Needle nose pliers
* Alcohol and Q-tips

## Conventions

The PCB side with the Open Source Hardware logo is the front.
The opposite side, with the SMD components is the back.
The 40-pos connector area is the bottom, and the area of the neck is the top.

The PCB is comprised of 3 panels.  The larger one is the main panel, the other
two are side panels.  The side panel labelled RHK, is the Right Hand Knuckle or
Right panel.  The side panel labelled LHP is the Left Hand Palm or Left panel.

![](images/assembly/conventions.jpg)

## General advice

* When soldering ensure all flux is thoroughly cleaned, as it may create leakage paths between circuit nodes.  The weak pull-up resistors of the Raspberry Pi make the keyboard matrix very sensitive to leakage paths.

## Assembly steps

### 1. Solder 40-pin connector

Solder 40-pin connector on back side

![](images/assembly/40pos_connector.jpg)

### 2. Solder octave keyswitch

Solder octave keyswitch, the only one on the back side, first.

![](images/assembly/octave_back.jpg)

After soldering, cut the two pins protruding on the front side.  This is only
required on this switch so it does not interfere with the switch on the
opposide side.

![](images/assembly/octave_flush.jpg)

### 3. Solder right-angle 4-pos male connectors

Solder the two right-angle 4-pos male connectors on the front side of main panel. The connectors are placed on the opposite (back) side.

This must be done on the top side of the main pannel for the connector corresponding to the LHP side panel, and on the middle of the main pannel for the connector corresponding to the RHK side panel.

It helps to solder one pin of the connector from the back side to fix it in
position while it is stable in place.

![](images/assembly/right_con_one.jpg)

Then turn around the board and solder all four pins from the front side. Do this twice, the same way for both connectors.

![](images/assembly/right_con_two.jpg)

### 4. Solder straight 4-pos female connectors

Solder the two straight 4-pos female connectors on the bottom side of the two LHP and RHK side panels.

Test that side panels can be connected to main panel. To do this, you have to detach the side panels from the main one, as described in step 10, unless you have some extra female connectors.

This verification can be usefull since if you solder the right-angle male connectors to tightly on the main panel, the room left for the female straight connectors can be too small.  It could still be placed with some force, but better to check first.

![](images/assembly/sidecon_one.jpg)

![](images/assembly/sidecon_two.jpg)

### 5. Apply Conformant Coating to front side

Now that all the thru-hole components on the back side have been soldered, apply conformant coating to the front side. This can be done using a spray (eg.: ELECTROLUBE  AFA200) or a bottle (eg.: MG CHEMICALS  419D-55ML) and brush.

In case you use a spray, this front side does not require special protection contrary to the the back side as described in step 8.

This will protect the board against rust.  The coat needs to be applied before populating the front-side components, which we will do in the next steps.

### 6. Solder pressure sensor

Solder surface mount pressure sensor.

Add solder to one pad and then solder one pin first to secure the sensor in the right position.

![](images/assembly/sensor_one.jpg)

![](images/assembly/sensor_two.jpg)

Then solder the remaining 7 pins.

![](images/assembly/sensor_three.jpg)

### 7. Solder remaining keyswitches

Solder the front-side switches.

![](images/assembly/all_keys.jpg)

### 8. Apply Conformant Coating to back side

Now that all the thru-hole components on the front side have been soldered, apply conformant coating to the back side.
This will protect the board against rust.  The coat needs to be applied before attaching the mechanical parts (neck, thumb rests), which we do in the next steps.

If you use the conformant coating in spray, this is probably safer to protect some components before spraying with some tape (the octave keyswitch, 40 pin female connector, the 2 right-angle male and the 2 straight female connectors, the 2 holes of the pressure sensor and the female jack connector).

![](images/assembly/sprayprotection2.jpg)

![](images/assembly/sprayprotection1.jpg)

### 9. Attach thumb rests

Using M2 flat head screws, attach octave thumb rest on top, lower thumb rest
with hook on bottom.  Depending on the quality of the 3D printing of these parts you will probably have to clean the small triangle contact surface to make it flat, and the small male pin with the good diameter so that it can enter into the corresponding hole on the PCB.

![](images/assembly/thrests.jpg)

It might be easier to screw in the screws one first time without the PCB to
properly thread the plastic holes.

![](images/assembly/thread.jpg)

Then remove the screws, and repeat once attached to the PCB.

![](images/assembly/thumb_screw.jpg)

### 10. Detach PCB panels

Detach the side PCB panels by cutting along the mouse bite patterns with a cutter.

![](images/assembly/panels_one.jpg)

![](images/assembly/panels_two.jpg)

### 11. Attach side panels to main board

Attach L-brackets to side panels using screws and nuts.

![](images/assembly/lbracket_one.jpg)

Connect side panels to main panel, and screw main panel screws.  The threaded side of all L-brackets sits on the main panel.

In case it is difficult to connect the side panels to the main one, this is maybe due to the fact that the right-angle connectors were soldered tightly on the board, and the room for the female one is slightly too small.  By forcing a little, with care, you can probably manage to do it. 

![](images/assembly/lbracket_two.jpg)

![](images/assembly/lbracket_three.jpg)

### 12. Attach neck

Attach L-brackets to both sides of neck.  The neck does not need nuts.

![](images/assembly/neck_one.jpg)

![](images/assembly/neck_two.jpg)

Then attach neck to main panel.

![](images/assembly/neck_three.jpg)

### 13. Connect pipes to neck

Use one short section (~2cm) of the pipe to connect the neck to the pressure
sensor.  Depending on your tube, you might need a bit of wire or a small cable-tie to tighten it.

![](images/assembly/pipes_one.jpg)

Use a longer section (~20cm) of the pipe to connect the second hole.  This
second pipe is used for venting, and has to point away from the PCB to prevent
corrosion.

![](images/assembly/pipes_two.jpg)

### 14. Attach Raspberry Pi

At this point the Haxophone HAT is fully assembled.  You can now attach it to a Raspberry Pi.  The Haxophone PCB has mounting holes for both Raspberry Pi sizes, the Zero and the 3/4.

Screw three spacers to the Pi:

![](images/assembly/pi_one.jpg)

Now connect the Pi to the 40-position connector and secure it with screws.

![](images/assembly/pi_two.jpg)

### 15. Optionally attach a mouthpiece with reed

The mouthpiece is used for embochure comfort and familiarity, but it is not really necessary.  If you use a mouthpice, you will need to also have a reed.  The reed does not produce sound, but it seals the mothpiece for a proper transfer of pressure to the sensor.

To attach a mouthpiece, you might need to use some masking, washi or cork tape to adjust the neck diameter to your mouthpiece.

### 16. Testing

In [haxo-rs](https://github.com/jcard0na/haxo-rs#testing) you will find tests that will help you verify that all keys and the pressure sensor work.

Otherwise, you can skip this step, apply power, attach headphones and start playing.
