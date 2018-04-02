function [X_vec,Y_vec]  = astronomic_delt(name,x,y)
[NAXIS1, NAXIS2, CRPIX1, CRPIX2, CRVAL1, CRVAL2, PC1_1, PC2_2, CD1_1, CD2_2] = take_values(name);

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

X_vec = x * CDELT1;
Y_vec = y * CDELT2;

endfunction
