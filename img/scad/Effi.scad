

$fn=128;
au = 1.6180339887;
module a3()
{
for ( i = [0 : 40 : 360] ){
    rotate( i * 1 ,[0, 0, 1])
    translate([au/2, au/2, 0])
    cylinder(r = au/2, h=au/2);
}
}
a3();



translate([0, 0, au/4]){
color("Lightgrey") minkowski()
{
 cube([au/2,au/2,au/8],center=true);
 cylinder(r=au/2,h=au/2);
}
}


use <cry.scad>
 translate([-au/2, -au/3, au*3/4]){
scale([au/10,au/10,au/10]) color("LightSeaGreen") drawtext(":(");
}

