function [classifyResults] = nnpredict(netModel,data)

classifyResults = [];
for d=1:size(data,2)
    [~,output] = nnfeedforward(netModel,data(:,2));
    classifyResults(d) = output;
end

end