function tree = genTree_Shannon(stringOrFreqs)
    % GENTREE Generate a Huffman tree either from a given list of
    %   frequencies or from string used to compute frequencies.
    
    if iscell(stringOrFreqs)        % frequencies given
        syms = stringOrFreqs(1, :)';
        freqs = [stringOrFreqs{2, :}]';
    else                            % frequencies not given
        syms = cellstr(char(32:126)');
        syms{1} = ' ';
        count = @(c) sum(ismember(stringOrFreqs, c));
        freqs = cellfun(count, syms);
    end
    
end
