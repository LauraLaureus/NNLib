function [classifyResults] = nnpredict(netModel,data)

classifyResults = [];
for d=1:size(data,2)
    %%TODO add data to first param  to netModel and pass it to feedforward
    [~,output] = nnfeedforward(netModel,data(:,2));
    classifyResults(d) = output;
end

end