#!/bin/bash

# Open Visual Studio Code
code .

# Wait for 10 seconds
sleep 10

# Close Visual Studio Code
pkill -15 code

sed -i "s/somnath/$USER/g" ~/toolchains/cmake_Cross_Compile_kit.json

echo "{
    \"cmake.options.statusBarVisibility\": \"visible\",
    \"cmake.additionalKits\": [
        \"/home/$USER/toolchains/cmake_Cross_Compile_kit.json\"
    ]
}" > ~/.config/Code/User/settings.json
