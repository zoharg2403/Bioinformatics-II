function [Graph] = DeBruijnGraph_AnotherWay(Patterns)
% DeBruijn Graph from k-mers Problem: Construct the de Bruijn graph from a set of k-mers.
% Input: A collection of k-mers Patterns.
% Output: The adjacency list of the de Bruijn graph DeBruijn(Patterns).

% Given an arbitrary collection of k-mers Patterns (where some k-mers may 
% appear multiple times), we define CompositionGraph(Patterns) as a graph 
% with |Patterns| isolated edges. Every edge is labeled by a k-mer from Patterns, 
% and the starting and ending nodes of an edge are labeled by the prefix and 
% suffix of the k-mer labeling that edge. 
% initGraph is a cell with 3 columns: 1 = edge, 2 = 1st node (suffix), 3 = 2nd node (prefix)

initGraph = CompositionGraph(Patterns);

% in the initGraph every k-mer in Patterns is isolated edge between its suffix and prefix

% We then define DeBruijn(Patterns) by gluing identically labeled nodes in 
% CompositionGraph(Patterns). the graph resulting from ?gluing all nodes in 
% initGraph with identical labels

UniqueNodes = unique(initGraph(:,2));
Graph = {}; % initializing the output Graph (DeBruijn Graph)
for i = 1:length(UniqueNodes)
    curNodeIdx = find(ismember(initGraph(:,2), UniqueNodes{i}));
    Graph = [Graph; UniqueNodes(i), {initGraph(curNodeIdx,3)}];
end
    







end

