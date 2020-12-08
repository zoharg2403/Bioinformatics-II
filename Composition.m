function [k_mers] = Composition(Text,k)
% String Composition Problem: Generate the k-mer composition of a string.
% Input: An integer k and a string Text.
% Output: Composition_k(Text), where the k-mers are arranged in lexicographic order.
% Examples: 
%   Composition('TATGGGGTGC',3) = {ATG, GGG, GGG, GGT, GTG, TAT, TGC, TGG}.
%   Composition('CAATCCAAC',5) = {AATCC,ATCCA, CAATC, CCAAC, TCCAA}.

k_mers = {};

% get all k mers
for i = 1:length(Text)-k+1
    cur_kmer = Text(i:i+k-1);
    k_mers = [k_mers,{cur_kmer}];
end

% sorting k mers in lexicograph order
k_mers = sort(k_mers);

end

