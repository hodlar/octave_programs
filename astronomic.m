function [right_asension,declination]  = astronomic(name,x,y)
[CRPIX1, CRPIX2, CRVAL1, CRVAL2] = take_values(name)
deltax = x - CRPIX1
deltay = y - CRPIX2
delta_ra = deltax*0.0012335
delta_dec = deltay*.0012335
right_asension = CRPIX1 + delta_ra
declination = CRPIX2 + delta_dec
endfunction
