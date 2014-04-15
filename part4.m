%PART 4

im = imread('test.bmp');
im1 = reshape(im,prod(size(im)),1);
th = 200;
im2 = im;
im2(im>=th) = 0;
im2(im<th) = 1;
L = bwlabel(im2);
boundingBox
FeaturesTest = Features;
idTestArray = [];

for i=1:10
    for j=1:7
        idTestArray = [idTestArray; i];
    end
end


%NORMALIZATION

for i=1:length(means)%size(means)
    FeaturesTest(:,i) = FeaturesTest(:,i) - means(:,i);
    FeaturesTest(:,i) = FeaturesTest(:,i) / stddev(:,i);
end

testDistance = dist2(FeaturesTest, Features);
figure
imagesc(testDistance);
testsortMatrix = testDistance;
testPrediction = [];
for i=1:length(testDistance)
    testsortMatrix(i,:) = sort(testsortMatrix(i,:));
    p = testsortMatrix(i,2);
    idIndex = findIndex(testDistance(i,:),p);
    predictionID = idTestArray(idIndex, 1);
    testPrediction = [testPrediction; predictionID];
end
idTestArray = reshape(idTestArray,70,1);
testPrediction = testPrediction';
ConfMatrix = ConfusionMatrix(idTestArray, testPrediction, 10);
figure
imagesc(ConfMatrix);
recognitionRate = (trace(ConfMatrix))/(sum(sum(ConfMatrix)))