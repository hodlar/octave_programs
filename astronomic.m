#{
This function returns the right asension and declination from a given point in cartesian coordinates.
The output are the world coordinates (right asension and declination) of the given point.
As input it asks for the name of the analized image and the points to be analized
#}

function [right_asension,declination]  = astronomic(name,x,y)
[CRPIX1, CRPIX2, CRVAL1, CRVAL2] = take_values(name);
deltax = x - CRPIX1;
deltay = y - CRPIX2;
delta_ra = deltax*0.0012335;
delta_dec = deltay*.0012335;
right_asension = CRPIX1 + delta_ra;
declination = CRPIX2 + delta_dec;
endfunction
