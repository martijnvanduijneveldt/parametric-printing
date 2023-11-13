
/* [Label settings] */
label = 0.5;

echo("Will render with label value : ", str(label));

drawCircle(str(label));


module drawCircle(labelText){
    union(){    
        translate([0,22,0]){
            difference() {
                translate([0,0,0.5])
                    cube([20,10, 1],true);
                translate([0,0,0.6+0.001])
                linear_extrude(height = 0.4) {
                    text(labelText, halign="center", valign="center", size = 5);
                }
            }
        }
        translate([0,16,0.5])
            cube([2,4,1], true);
        cylinder(d=30, h=3, $fn=360);
    }
}