function [Graph] = PathGraph(Text,k)
% PathGraph(Text, k) is the path consisting of |Text|-k+1 edges, where the
% i-th edge of this path is labeled by the i-th k-mer in Text and the i-th 
% node of the path is labeled by the i-th (k - 1)-mer in Text.

Graph = {};

for i = 1:length(Text)-k+1
   Kmer_i = Text(i:i+k-1);
   Graph = [Graph; {Kmer_i, Kmer_i(1:end-1), Kmer_i(2:end)}];
end
end

