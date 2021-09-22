//cover slip dimensions
CSlipX = 24;
CSlipY = 24;
CSlipZ = 0.4;

//tolerance variable takes care of different printers having slight variations in precision
tolerance = 0.1;

//the cover slip will sit in a frame:
//the frame can have pre-defined border sizes:
borderX = 2;
borderY = 2;
borderZ = 1;

offsetX=4;
offsetY=4;

difference(){
cube([CSlipX+2*tolerance+2*borderX,CSlipY+2*tolerance+2*borderY,CSlipZ+2*tolerance+2*borderZ]);


translate([borderX,borderY,borderZ-0.5]){
cube([CSlipX+2*tolerance,CSlipY+2*tolerance+5,CSlipZ+2*tolerance]);
}//end translate

translate([borderX+offsetX/2,borderY+offsetY/2,-borderZ]){
cube([CSlipX-offsetX+2*tolerance,CSlipY+2*tolerance+5,CSlipZ+10+2*tolerance]);
}//end translate
}//end difference




/*
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

*/