function [netModel] = nntrain(netModel,data,label)

%Make sure data samples are in a column vector!!!

for d=1:size(data,2)
    
    %place data in the first cell 
    netModel{1} = data(:,d);
    [netIntermediateModel,output] = nnfeedforward(netModel);
    netModel = nnbackpropagation(netModel, netIntermediateModel,output,label);
    

end