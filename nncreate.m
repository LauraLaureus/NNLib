function [netModel] = nncreate(inputFeatures, numLayers, arrayDimensions, numOutputNeurons)

% nncreate: creates a model of fullyconnected neural network
% inputfeatures is the number of features every sample has (scalar)
% numLayers is the number of hiddenLayers the network will have (scalar)
% arrayDimensions is the array with the number of neurons of every hidden
% layer. (numeric array)
% numOutputNeurons is the number of expected outputs (scalar)
netModel = cell(1,1+numLayers+1);

netModel{2} = rand([inputFeatures,arrayDimensions(1)]);
for i=2:numLayers
    netModel{i+1} = rand([arrayDimensions(i-1),arrayDimensions(i)]);
end
netModel{1+numLayers+1} = rand([arrayDimensions(i),numOutputNeurons]);

end