#!/bin/sh

for g in {1..8}
	do
		for gg in {0..4}
			do
				echo "Doing group ${g}${gg}0-${g}${gg}4"
				echo ${g}${gg}{0..4}-{0..9}{1..9}-{0..9}{0..9}{0..9}{0..9} | tr " " "\n" | grep -v -E "000-|-00-|-0000|666-" > group_${g}${gg}0.txt
				echo "Doing group ${g}${gg}5-${g}${gg}9"
				echo ${g}${gg}{5..9}-{0..9}{1..9}-{0..9}{0..9}{0..9}{0..9} | tr " " "\n" | grep -v -E "000-|-00-|-0000|666-" > group_${g}${gg}5.txt
			done
		for gg in {5..9}
			do
				echo "Doing group ${g}${gg}0-${g}${gg}4"
				echo ${g}${gg}{0..4}-{0..9}{1..9}-{0..9}{0..9}{0..9}{0..9} | tr " " "\n" | grep -v -E "000-|-00-|-0000|666-" > group_${g}${gg}0.txt
				echo "Doing group ${g}${gg}5-${g}${gg}9"
				echo ${g}${gg}{5..9}-{0..9}{1..9}-{0..9}{0..9}{0..9}{0..9} | tr " " "\n" | grep -v -E "000-|-00-|-0000|666-" > group_${g}${gg}5.txt
			done
	done


