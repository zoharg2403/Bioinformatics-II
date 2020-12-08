function [Graph] = DeBruijnGraph(Text,k)
% De Bruijn Graph from a String Problem: Construct the de Bruijn graph of a string.
% Input: An integer k and a string Text.
% Output: DeBruijnk(Text).

% part A - PathGraph
initGraph = PathGraph(Text,k);

% part B - gloing identical nodes 
Graph = {}; % initializing Output graph
nodes = unique (initGraph(:, 2:3));
for i = 1:length(nodes)
    cur_node = nodes{i};
    cur_node_idx = find(ismember(initGraph(:,2), nodes{i}));
    Graph = [Graph; {cur_node},{initGraph(cur_node_idx,3)}];
end

end

