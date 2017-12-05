///smooth_view(view_index,view_speed);
///////////////////////
//ls  = lerp speed    //
//lx  = lerp x       //
//ly  = lerp y       //
//vi  = view index   //
///////////////////////
var vi = argument[0];
var ls = argument[1];
 
var lx = lerp ( view_xview[vi],( x-view_wview[vi]/2),ls );
var ly = lerp ( view_yview[vi],( y-view_hview[vi]/2),ls );
 
/////////////////////////////////////////
//keeps view inside boundaries of room //
/////////////////////////////////////////
view_xview = min( max( lx, 0 ), room_width - ( view_wview[vi]) );
view_yview = min( max( ly, 0 ), room_height - ( view_hview[vi]) );
