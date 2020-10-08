#! /bin/bash -x

#1ft=12in then 42 in=?ft
#rectangular plot of 60 feet*40 feet in meters
#calculate area of 25 such plots in acres

#constants
INCH=0.083 #feet
MTR=3.28 #foot
ACR=4047 #metersquare

x=$(( 42 / $INCH ));
y=$(( 60 * 40 ));
y=$(( $y / $MTR ));
y=$(( $y / $MTR ));
z=$(($y * $ACR));

echo "42 inch = " $x "feet"
echo "60 x 40 size plot in meter square= " $y
echo "25 such plots have area = " $z "Acres"
