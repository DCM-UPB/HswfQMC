L=5.
echo "L="$L
rm -f MD.gif
rm -f script.gnup
touch script.gnup
echo "set terminal gif size 400,400 animate delay 5" > script.gnup
echo "set output 'MD.gif'" >> script.gnup
echo "set xrange [-"$L"/2:"$L"/2]" >> script.gnup
echo "set yrange [-"$L"/2:"$L"/2]" >> script.gnup
echo "set zrange [-"$L"/2:"$L"/2]" >> script.gnup

frame=0
for FILE in SR_Rp-*.d
do
        echo $FILE
        
        #3D
        #for i in {1..100}
        #do
        #        echo "set view 75, 45+0.1*"$frame"-(floor((45+0.1*"$frame")/360)*360)" >> script.gnup
        #        echo "plot '"$FILE"'" >> script.gnup
        #        frame=$frame+1
        #done

        # 2D
        echo "plot '"$FILE"'" >> script.gnup
        frame=$frame+1
done

gnuplot < script.gnup
rm -f script.gnu
