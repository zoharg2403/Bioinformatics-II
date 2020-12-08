function [AdjancyList] = OverlapGraph(Kmers)
% Solve the Overlap Graph Problem (restated below).
% Input: A collection Patterns of k-mers.
% Output: The overlap graph Overlap(Patterns), in the form of an adjacency list. (You may return the nodes and their edges in any order.)

AdjancyList = {}; % initializing output cell

for i = 1:length(Kmers)
    curKmer_suffix = Kmers{i}(2:end); % current K mer suffix (last k-1 symbols in cur_suffix)
    curKmer_cellString = strcat(Kmers{i}, '->'); % this string will be the input to the output cell (AdjancyList{i})
    EdgeNum = 0; % counting number of edges. if EdgeNum == 0 the curKmer_cellString will not be included in AdjancyList
    for j = 1:length(Kmers)
        if curKmer_suffix == Kmers{j}(1:end-1) % if suffix_i == prefix_j
           curKmer_cellString = strcat(curKmer_cellString, Kmers{j}, {' '}); % add Kmer_j to the string input to the output cell
           EdgeNum = EdgeNum + 1; % counting number of edges
        end
    end 
    if EdgeNum % if EdgeNum~=0
        AdjancyList = [AdjancyList, curKmer_cellString]; % add curKmer_cellString to output cell
    end 
end
