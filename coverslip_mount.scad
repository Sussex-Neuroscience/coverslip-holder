//cover slip dimensions
CSlipX = 22;
CSlipY = 22;
CSlipZ = 0.4;

//tolerance variable takes care of different printers having slight variations in precision
tolerance = 0.1;

//the cover slip will sit in a frame:
//the frame can have pre-defined border sizes:
borderX = 3;
borderY = 3;
borderZ = 2;

//model the cover slip
module cover_slip(){
cube([CSlipX+2*tolerance,CSlipY+2*tolerance+10,CSlipZ+2*tolerance]);
}//end module

difference(){
cube([CSlipX+2*borderX,CSlipY+2*borderY,2*borderZ]);
translate([borderX*1.5,borderY*1.5,-(CSlipZ+5)]){
cube([CSlipX-borderX+2*tolerance,CSlipY+5,CSlipZ+10]);

}//end translate

translate([borderX,borderY,borderZ]){
cover_slip();

}//end translate
}//end difference

