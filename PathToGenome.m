function [S] = PathToGenome(k_mers)
% String Spelled by a Genome Path Problem. Reconstruct a string from its genome path.
% Input: A sequence path of k-mers Pattern1, … ,Patternn such that the last k - 1 symbols of Patterni are equal to the first k-1 symbolsof Patterni+1 for 1 ? i ? n-1.
% Output: A string Text of length k+n-1 such that the i-th k-mer in Text is equal to Patterni (for 1 ? i ? n).

% the input needs to be a row vector
k_mers = reshape(k_mers,1,length(k_mers));

% get first symbol from each k mer except the last k mer
first_symbol = cellfun(@(c) c(1),k_mers(1:end-1));
% join first_symbol with the last k mer into a string
S = strcat(first_symbol, k_mers(end));


end

