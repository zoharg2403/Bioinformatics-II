function [Graph] = CompositionGraph(Patterns)
% we define CompositionGraph(Patterns) as a graph with |Patterns| isolated 
% edges. Every edge is labeled by a k-mer from Patterns, and the starting 
% and ending nodes of an edge are labeled by the prefix and suffix of the 
% k-mer labeling that edge.

PatternsNum = length(Patterns); % number of patterns (k mers) in Patterns

edges = reshape(Patterns,[PatternsNum 1]);
nodes1 = reshape(cellfun(@(c) c(1:end-1), Patterns, 'UniformOutput', false), [PatternsNum 1]);
nodes2 = reshape(cellfun(@(c) c(2:end), Patterns, 'UniformOutput', false), [PatternsNum 1]);

Graph = [edges, nodes1, nodes2];

end

