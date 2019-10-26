// DoES Liverpool Microscope to PiCam Adaptor


//first print microscope
//FocusWidth = 28.06;
microscopeFocusWidth = 29.06;

outer();
translate([0,0,18])outer2();
translate([0,0,30])rotate([180,0,0])camHolder();
//piOpticsAssembly();

module piOpticsAssembly(){
    difference(){
        import("builds/optics_modified_partsandcrafts.stl", convexity= 5);
        rotate([0,0,45])translate([-1,12,-9])cube([12,2,3], center=true);
    }
}

module camHolder(){
    rotate([0,0,45])translate([0,-11,-7])cube([20,5,4], center=true);
    difference(){
        piOpticsAssembly();
        cylinder(d=40, h=23.5, $fn=32);
    }
}

module outer(){
    //shell for the microscope 
    difference(){
    cylinder(d=35, h=18, $fn=32);
    cylinder(d=microscopeFocusWidth, h=38, center=true, $fn=32);
}
}

module outer2(){
    //shell for the microscope 
    difference(){
    cylinder(d=36, h=18, $fn=32);
    cylinder(d=24, h=38, center=true, $fn=32);
}
}
