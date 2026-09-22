#!/bin/bash


declare -g PIECES=(
bodyPieceA1
bodyPieceA
bodyPieceB
bodyPieceC
hipPieceA
hipPieceB
hipPieceC
hipPieceD
hipSupportPieceA
hipSupportPieceB
hipSupportPieceC
legPieceA
legPieceB
legPieceC
legPieceD
legPieceE
)

declare -g COMPONENTS=(
bodyComponent
hexapodRobotComponent
hipComponent
hipLegComponent
hipSupportComponent
legComponent
servoMotor
)

# Pieces png generation
for piece in "${PIECES[@]}"; do
    echo "Pièce : $piece"
    openscad --colorscheme="BeforeDawn" --view="axes,scales" -o png_files/pieces/$piece.png pieces/$piece.scad
done

# compoenents png generation in preview folder
for component in "${COMPONENTS[@]}"; do
    echo "Pièce : $component"
    openscad --colorscheme="BeforeDawn" -o png_files/components/$component.png components/$component.scad
done

#main preview
openscad --colorscheme="BeforeDawn" -o png_files/main.png main.scad
