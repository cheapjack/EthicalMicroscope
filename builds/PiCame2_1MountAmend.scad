// PiCamera Optics Assembly


//translate([0,0,9.55])piOpticsAssembly();
//translate([0,-1.8,9])piCamCover();
//translate([10.5,-1.8,0])extraPin(5,1.25,1.745);
//translate([-10.5,-1.8,10])extraPin(5,1.25,1.745);
//translate([10.5,10.64,10])extraPin(5,1.25,1.745);
//translate([-10.5,10.64,10])extraPin(5,1.25,1.745);

mountBack();
//translate([0,0,0])mountFront();


module piOpticsAssembly(){
    difference(){
        import("builds/optics_modified_partsandcrafts.stl", convexity= 5);
        rotate([0,0,45])translate([-1,12,-9])cube([12,2,3], center=true);
    }
}

module piCamCover(){
    import("../builds/picamera_2_cover_modified.stl", convexity = 50);
}

module extraPin(height,hole_diameter,outer_width){
    difference(){
        cylinder($fn=24,height,hole_diameter+outer_width,hole_diameter+outer_width,false);
        translate([0,0,-1])cylinder($fn=24,height+2,hole_diameter,hole_diameter,false);
}
}

module mountBack(){
    import("files/pi_camera_v2.1_mount_back.stl", convexity = 50);
}

module mountFront(){
    import("files/pi_camera_v2.1_mount_front.stl", convexity = 50);
}
