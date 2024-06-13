#!/bin/bash


declare -g PIECES=(
body-piece-a-1
body-piece-a
body-piece-b
body-piece-c
hip-piece-a
hip-piece-b
hip-piece-c
hip-piece-d
hip-support-piece-a
hip-support-piece-b
hip-support-piece-c
leg-piece-a
leg-piece-b
leg-piece-c
leg-piece-d
leg-piece-e
)

declare -g COMPONENTS=(

)

# Pieces png generation
for piece in "${PIECES[@]}"; do
    echo "Pièce : $piece"
    openscad --colorscheme="BeforeDawn" --view="axes,scales" -o png_files/pieces/$piece.png 3D-models/pieces/$piece.scad
done

# compoenents png generation in preview folder
for component in "${COMPONENTS[@]}"; do
    echo "Pièce : $component"
    openscad --colorscheme="BeforeDawn" -o png_files/components/$component.png 3D-models/components/$component.scad
done

#main preview
openscad --colorscheme="BeforeDawn" -o png_files/main.png 3D-models/main.scad
