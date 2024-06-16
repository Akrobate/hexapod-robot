#!/bin/bash

pieces_folder="png_files/pieces/"
pieces_md_file="PiecesPreview.md"
pieces_components="png_files/components/"
component_md_file="ComponentPreview.md"

generate_preview() {
    md_file=$2
    filename=$(basename $1)
    filename="${filename%.*}"
    echo "## $filename" >>  $md_file
    echo "<img src=\"$1\" alt=\"Image\">" >> $md_file
    echo "" >> $md_file
}

echo "# Pieces" > $pieces_md_file
for file in $(find "$pieces_folder" -type f); do
    generate_preview $file $pieces_md_file
done

echo "# Components" > $component_md_file
for file in $(find "$pieces_components" -type f); do
    generate_preview $file $component_md_file
done





