function string = decode(code, tree)

    function [sym, remainingCode] = dec(code, tree)
        if length(tree{1})==1
            sym = tree{1};
            remainingCode = code;
    end


end