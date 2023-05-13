%draw the binary tree
function [] = drawTree(tree, name)
    %store the relationship and symbol names
    father = zeros(1,2*length(tree{1,1}));
    ttext = cell(1,2*length(tree{1,1}));
    %keep track number of nodes
    num = 0;
    
    %A recursive function, read a node, then add the node and it's childs
    %to father and ttext
    function [numout] = readtree(tree)
        %check if the node is leaf node
        if size(tree{1,2},2)==0
            %if leaf node, increase the node number and return
            num = num+1;
            numout = num;
        
    end
    
    
end