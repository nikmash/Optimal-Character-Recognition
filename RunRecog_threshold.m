function RunRecog_threshold(filename)

%A training

im = imread('a.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

figure
imagesc(im)

im1 = reshape(im,prod(size(im)),1);

h=hist(double(im1),[0:1:255]);
peak=findpeaks(h)

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
AFeatures = Features;
idA = ones(size(AFeatures(:,1)));

%D training

im = imread('d.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
DFeatures = Features;
idD = ones(size(DFeatures(:,1)))*2;

%M training

im = imread('m.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
MFeatures = Features;
idM = ones(size(MFeatures(:,1)))*3;

%N training

im = imread('n.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
NFeatures = Features;
idN = ones(size(NFeatures(:,1)))*4;

%O training

im = imread('o.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);


im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
OFeatures = Features;
idO = ones(size(OFeatures(:,1)))*5;

%P training

im = imread('p.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
PFeatures = Features;
idP = ones(size(PFeatures(:,1)))*6;

%Q training

im = imread('q.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
QFeatures = Features;
idQ = ones(size(QFeatures(:,1)))*7;

%R training

im = imread('r.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
th = 220;
im2 = im;
im2(im>=th) = 0;
im2(im<th) = 1;
L = bwlabel(im2);
boundingBox
RFeatures = Features;
idR = ones(size(RFeatures(:,1)))*8;

%U training

im = imread('u.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
UFeatures = Features;
idU = ones(size(UFeatures(:,1)))*9;

%W training

im = imread('w.bmp');

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);

im1 = reshape(im,prod(size(im)),1);
h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBox
WFeatures = Features;
idW = ones(size(WFeatures(:,1)))*10;

Features = [AFeatures; DFeatures; MFeatures; NFeatures; OFeatures; PFeatures; QFeatures; RFeatures; UFeatures; WFeatures];
id = [idA; idD; idM; idN; idO; idP; idQ; idR; idU; idW];
means = mean(Features);
stddev = std(Features);

%For every item in the each column subtract the mean and divide by the standard deviation

for i=1:length(means)%size(means)
    Features(:,i) = Features(:,i) - means(:,i);
    Features(:,i) = Features(:,i) / stddev(:,i);
end
D = dist2(Features,Features);
figure
imagesc(D);
sortMatrix = D;
Prediction = [];
for i=1:length(D)
    sortMatrix(i,:) = sort(sortMatrix(i,:));
    p = sortMatrix(i,2);
    idIndex = findIndex(D(i,:),p);
    predictionID = id(idIndex,1);
    Prediction = [Prediction; predictionID];
end
id = id';
predictionID = predictionID';
ConfMat = ConfusionMatrix(id, Prediction, 10);
figure
imagesc(ConfMat);
recognitionRate = (trace(ConfMat))/(sum(sum(ConfMat)))

%PART 4

im = imread(filename);

se = strel([111;111;111]);
im = imerode(im, se);

im = imadjust(im);
im1 = reshape(im,prod(size(im)),1);

h=hist(double(im1),[0:1:255]);
peak=findpeaks(h);

if(peak>125)
    th = peak - 30;
    im2 = im;
    im2(im>=th) = 0;
    im2(im<th) = 1;
else
    th = peak + 30;
    im2 = im;
    im2(im>=th) = 1;
    im2(im<th) = 0;
end
    
L = bwlabel(im2);
boundingBoxR


Features = sortrows(Features, 7);
Features(:, 7) = [];

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