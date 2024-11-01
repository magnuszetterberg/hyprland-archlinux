#!/bin/bash
# Make sure to 'chmod 755 toggleaudio.sh' to make it accessible for waybar
newSink=""

#The alsa_out... string is hardcoded to your soundoutputs... please update them for your setup
Headphones="alsa_output.usb-GN_Netcom_A_S_Jabra_EVOLVE_LINK_MS_0006FC45D50A08-00.analog-stereo" #Change this device's to headphone pactl name
Speaker="alsa_output.pci-0000_00_1f.3-platform-sof_sdw.HiFi__Speaker__sink" #Change this to device's speaker pactl name
currentSink=$(pactl info | sed -n 's/Default Sink: //p')

if [ "$Speaker" = "$currentSink" ]; then
    newSink="$Headphones"
else
    newSink="$Speaker"
fi

pactl set-default-sink "$newSink"
pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done
