function [NAXIS1, NAXIS2, CRPIX1, CRPIX2, CRVAL1, CRVAL2, PC1_1, PC2_2, CD1_1, CD2_2] = take_values(name)
NAXIS1 = fitsheader(name,"NAXIS1");
NAXIS2 = fitsheader(name,"NAXIS2");
CRPIX1 = fitsheader(name,"CRPIX1");
CRPIX2 = fitsheader(name,"CRPIX2");
CRVAL1 = fitsheader(name,"CRVAL1");
CRVAL2 = fitsheader(name,"CRVAL2");
PC1_1 = fitsheader(name,"PC1_1");
PC2_2 = fitsheader(name,"PC2_2");
CD1_1  = fitsheader(name,"CD1_1");
CD2_2 = fitsheader(name,"CD2_2");

endfunction
