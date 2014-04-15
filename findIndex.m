function [ index ] = findIndex(vector, value)
for i=1:numel(vector)
    if vector(1,i) == value
        index = i;
    end
end
end

