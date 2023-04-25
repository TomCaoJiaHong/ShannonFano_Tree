function code = encode(string, tree)

    function code = encSym(sym, tree)
    end

    encodeSymbol = @(c) encSym(c, tree);

    code = arrayfun(encodeSymbol, string, 'UniformOutput', false);
    code = char(48+uint8([code{:}]));

end

