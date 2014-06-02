

$fn=128;
au = 6*1.6180339887;
module a3()
{
for ( i = [0 : 40 : 360] ){
    rotate( i * 1 ,[0, 0, 1])
    translate([au/2, au/2, 0])
    cylinder(r = au/2, h=au/2);
}
}
a3();



translate([0, 0, au/2]){
color("Lightgrey") minkowski()
{
 cube([au/2,au/2,au/4],center=true);
 cylinder(r=au/2,h=au/3);


}
}


use <texto.scad>
 translate([-au/2, 0, au]){
scale([au/20,au/20,au/20]) color("LightSeaGreen") drawtext("Effi");
}

