#!/bin/bash

while :
do
	case $1 in
		clean)
			echo "Clean all old datas!"
			echo "Are you sure? [y/n] "
			read ANSW
			if [ "$ANSW" = "y" ]
			then
				rm -v -f -r estimatori posizioni ottimizzazione DFT
				rm -v -f output.d
				rm -v -f nohup.out
				rm -v -f reticolo/*.d
				mkdir -v estimatori
				mkdir -v posizioni
				mkdir -v estimatori/gradiente
				mkdir -v ottimizzazione
			else
				echo "Aborted"
			fi
			exit
			;;
		wash)
			echo "Clean everything but the optimized wf and lattice positions!"
			echo "Are you sure? [y/n] "
			read ANSW
			if [ "$ANSW" = "y" ]
			then
				rm -v -f -r estimatori posizioni
				rm -v -f ottimizzazione/*.dat
				rm -v -f output.d
				rm -v -f nohup.out
				rm -v -f reticolo/SR_Rp-*.d
				mkdir -v estimatori
				mkdir -v posizioni
				mkdir -v estimatori/gradiente
			else
				echo "Aborted"
			fi
			exit
			;;
	esac
done
