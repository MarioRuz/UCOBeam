function det = myDet(A)
% A is a SxS polynomial matrix. Each component of the 3D matrix is a 
% column vector of length (M+1) which M is the order of the highest 
% polynomial term 
% First stage of A corresponds to order lambda^0 terms
% Last  stage of A corresponds to order lambda^M terms
S = size(A(:,:,1),1);
if S == 1
    det = squeeze(A(1,1,:));
    return
end
det = 0;
top_row = A(1,:,:); %matrix
A(1,:,:) = [];
    for i = 1:S
        A_i = A;
        A_i(:,i,:) = [];
        vectemp = squeeze(top_row(:,i,:));
        term = conv(vectemp,myDet(A_i)); 
        term = (-1)^(i+1)*term;
        det = SumaPolc(det,term); % Use sum by columns
    end
end