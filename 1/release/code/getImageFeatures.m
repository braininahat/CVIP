function [h] = getImageFeatures(wordMap, dictionarySize)
% Compute histogram of visual words
% Inputs:
% 	wordMap: WordMap matrix of size (h, w)
% 	dictionarySize: the number of visual words, dictionary size
% Output:
%   h: vector of histogram of visual words of size dictionarySize (l1-normalized, ie. sum(h(:)) == 1)

	% TODO Implement your code here
    
	%h = histogram(wordMap,dictionarySize,'Normalization','probability');
    %h = h.Values(:);
    h = transpose(histcounts(wordMap,dictionarySize,'Normalization','probability'));
    assert(numel(h) == dictionarySize);
end