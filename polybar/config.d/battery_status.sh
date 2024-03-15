#!/bin/bash

#battery_percentage=$(acpi | grep -Po '\d+%' | tr -d '%')
#echo "$battery_percentage%"

#!/bin/bash

battery_percentage=$(acpi | grep -Po '\d+%' | tr -d '%')

if [ "$battery_percentage" -ge 90 ]; then
    echo " $battery_percentage%"
elif [ "$battery_percentage" -ge 60 ]; then
    echo " $battery_percentage%"
elif [ "$battery_percentage" -ge 40 ]; then
    echo " $battery_percentage%"
elif [ "$battery_percentage" -ge 20 ]; then
    echo " $battery_percentage%"
else
    echo " $battery_percentage%"
fi
