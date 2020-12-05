#!/bin/bash
# calculate travel time of P and S waves using ak135 (a 1D Earth velocity model)

echo "earthquake depth: 1 km"
echo "earthuake-station distance: 50 km"
echo "seismic phases: ttp (a list of standard P phases)"
taup_time -mod ak135 -h 1 -km 50 -ph ttp

echo
echo "earthquake depth: 1 km"
echo "earthuake-station distance: 50 km"
echo "seismic phases: ttp+ (a list of standard P phases including depth phases)"
taup_time -mod ak135 -h 1 -km 50 -ph ttp+

echo
echo "earthquake depth: 1 km"
echo "earthuake-station distance: 50 km"
echo "seismic phases: tts (a list of standard S phases)"
taup_time -mod ak135 -h 1 -km 50 -ph tts

echo
echo "earthquake depth: 1 km"
echo "earthuake-station distance: 50 km"
echo "seismic phases: tts+ (a list of standard S phases including depth phases)"
taup_time -mod ak135 -h 1 -km 50 -ph tts+
