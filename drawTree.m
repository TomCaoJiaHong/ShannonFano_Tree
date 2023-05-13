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
        else
            %if not leaf node, increase the node number then recusive call left
            %and right childs
            numleft = readtree(tree{1,2});
            num = num+1;
            nummid = num;
            numright = readtree(tree{1,3});
            %set left and right child's father to itself
            father(numleft) = nummid;
            father(numright) = nummid;
            numout = nummid;
            %update ttext array
            ttext{1,numleft} = tree{1,2}{1,1};
            ttext{1,nummid} = tree{1,1};
            ttext{1,numright} = tree{1,3}{1,1};
        end
    end
    
    %after define readtree function, call it and store the root number
    root = readtree(tree);
    %set the father of root to 0
    father(root) = 0;
    %then plots the tree use treeplot function from matlab
    figure();
    %'bo' means node is blue circle, 'r' means line is read
    treeplot(father(1,1:num),'bo','r');
    %set the layout
    [x,y] = treelayout(father(1,1:num));
    %add the symbol name to the plot
    text(x,y,string(ttext(1,1:num)));
    %set title
    title(name);
    
end