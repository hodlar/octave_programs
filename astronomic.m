#{
This function returns the right asension and declination from a given point in cartesian coordinates.
The output are the world coordinates (right asension and declination) of the given point.
As input it asks for the name of the analized image and the points to be analized
#}

function [X_vec,Y_vec]  = astronomic(name,x,y)
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

X_vec = CRVAL1 + (dim1 - CRPIX1) * CDELT1;
Y_vec = CRVAL2 + (dim2 - CRPIX2) * CDELT2;

endfunction
