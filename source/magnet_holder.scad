diameter = 21;
//magnet_hole_dia = 6.4;
magnet_hole_dia = 6.55;
//magnet_hole_depth = 4;
magnet_hole_depth = 3.2;
height = 10;
//shaft_dia = 3.05;
shaft_dia = 3.3;
shaft_depth = 8;
hole_offset = 5.8;


difference() {
  cylinder(h=height,d=diameter);
  for (i = [hole_offset,-hole_offset]) {
    translate([i,0,height]) 
      cylinder(h=magnet_hole_depth*2,d=magnet_hole_dia,center=true,$fn=30);
  }
  cylinder(h=2*shaft_depth, d=shaft_dia, center=true,$fn=30);
  #cylinder(h=2 ,d2=shaft_dia,d1=shaft_dia+0.8,,center=true,$fn=30);
}


