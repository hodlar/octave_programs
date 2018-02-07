function [CRVAL1, CRVAL2, CRPIX1, CRPIX2] = take_values(name)
CRVAL1 = fitsheader("img.fit","CRVAL1");
CRVAL2 = fitsheader("img.fit","CRVAL2");
CRPIX1 = fitsheader("img.fit","CRPIX1");
CRPIX2 = fitsheader("img.fit","CRPIX2");
endfunction
