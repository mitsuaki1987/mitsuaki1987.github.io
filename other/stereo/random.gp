set terminal pdf enhanced color size 5cm, 5cm
set output "random.pdf"
unset xtics
unset ytics
unset cbtics
#set palette grey
set pm3d corners2color c1 map
set size square
unset key
unset border
unset colorbox
splot "random.dat" matrix
