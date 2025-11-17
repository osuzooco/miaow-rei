#!/bin/bash

color="blue"

case "$color" in
    red)
        echo "You chose red."
        ;;
    blue)
        echo "You chose blue."
        ;;
    green)
        echo "You chose green."
        ;;
    *)
        echo "Unknown color."
        ;;
esac
