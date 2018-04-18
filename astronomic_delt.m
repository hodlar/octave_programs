function [X_vec,Y_vec]  = astronomic_delt(name1, name2, x,y)
[NAXIS1, NAXIS2, CRPIX1, CRPIX2, CRVAL1_1, CRVAL2_1, PC1_1, PC2_2, CD1_1, CD2_2] = take_values(name);
[NAXIS1_2, NAXIS2_2, CRPIX1_2, CRPIX2_2, CRVAL1_2, CRVAL2_2, PC1_12, PC2_22, CD1_12, CD2_22] = take_values(name);

if( length(PC1_1) == 0 )
	CDELT1 = CD1_1;
	CDELT2 = CD2_2;
end

if( length(CD1_1) == 0 )
	CDELT1 = PC1_1;
	CDELT2 = PC2_2;
end

dim1 = 0:1:NAXIS1;
dim2 = 0:1:NAXIS2;

ERR1 = CRVAL1_1 - CRVAL1_2
ERR2 = CRVAL2_1 - CRVAL2_2

X_vec = (x * CDELT1) + ERR1;
Y_vec = (y * CDELT2) + ERR2;



endfunction
