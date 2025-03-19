#!/bin/bash

evodata_file_path='armips/data/evodata.s'

species_list=()
evolutions_list=()
current_species=""
while read -r line; do
    if [[ $line =~ ^evodata\ SPECIES_[A-Z_]+$ && ! $line =~ \bSPECIES_NONE\b ]]; then
        current_species=$(echo "$line" | grep -o 'SPECIES_[A-Z_]\+' | sed 's/SPECIES_//' | sed 's/_/ /g')
        species_list+=("$current_species")
        evolutions_list+=("")
    elif [[ $line =~ ^evolution\ && ! $line =~ EVO_NONE ]]; then
        evolution_method=$(echo "$line" | awk -F', ' '{print $1}' | sed 's/evolution //' | sed 's/EVO_//' | sed 's/_/ /g')
        evolution_criteria=$(echo "$line" | awk -F', ' '{print $2}' | sed 's/ITEM_//' | sed 's/MOVE_//' | sed 's/TYPE_//' | sed 's/_/ /g')
        evolution_species=$(echo "$line" | awk -F', ' '{print $3}' | sed 's/SPECIES_//' | sed 's/_/ /g')
        if [[ -n $evolved_species && ${#species_list[@]} -gt 0 ]]; then
            evolutions_list[${#species_list[@]}-1]+="$evolved_species via $evolution_method $evolution_criteria. "
        fi
    fi
done < "$evodata_file_path"

for i in "${!species_list[@]}"; do
    if [[ -n ${evolutions_list[$i]} ]]; then
        echo "${species_list[$i]} evolves into: ${evolutions_list[$i]}"
    fi
done