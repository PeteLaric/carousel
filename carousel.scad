// carousel.scad
// CC-BY 2020-12-09 Pete Laric
// http://www.PeteLaric.com
// Imports a 3D object in STL format, and creates a rotating carousel
// display, which can be made into an animated GIF or video.
// Demo video: https://youtu.be/6owXDVgqaXw

// To activate animation, select "View->Animate" from the
// menu and enter values into the appearing FPS and Steps input
// fields (e.g. 30 FPS and 200 Steps for this animation).

// import_offset: this is necessary because OpenSCAD still has no
// provision for automatically centering an imported STL object. :-(
import_offset=[-1300,-2623, 0];


module model() {
    rotate([0, 0, $t * 360])
        translate(import_offset)
            import("model.stl", convexity=3);
}


model();
