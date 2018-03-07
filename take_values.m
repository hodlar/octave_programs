function [CRVAL1, CRVAL2, CRPIX1, CRPIX2] = take_values(name)
CRVAL1 = fitsheader(name,"CRVAL1");
CRVAL2 = fitsheader(name,"CRVAL2");
CRPIX1 = fitsheader(name,"CRPIX1");
CRPIX2 = fitsheader(name,"CRPIX2");
endfunction
