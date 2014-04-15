Nc=max(max(L));
f=figure;
imagesc(L);
hold on;
Features=[];
fileID = fopen('results.txt', 'w');
Results=[];

for i=1:Nc;
    [r,c]=find(L==i);
    maxr=max(r);
    minr=min(r);
    maxc=max(c);
    minc=min(c);
    rectangle('Position',[minc,minr,maxc-minc+1,maxr-minr+1],'EdgeColor','w');
    height = maxr - minr; 
    width = maxc - minc;
    threshold=7;
    if( height >threshold  && width > threshold)
        cim=im2(minr-1:maxr+1,minc-1:maxc+1);
        [centroid, theta, roundness, inmo] = moments(cim, 1);
        Features=[Features; theta, roundness, inmo, maxr];
        Results=[Results; minr, minc, height, width];
    end
end

fileID = fopen('results.txt','w');

idTestArray = [];

for i=1:10
    for j=1:7
        idTestArray = [idTestArray; i];
    end
end

Results = sortrows(Results, [1, 2]);
arrayResults = [Results idTestArray];
arrayResults = sortrows(arrayResults, [5, 2]);
for ii = 1:size(arrayResults,1)
    fprintf(fileID,'%d, %d, %d, %d, %d',arrayResults(ii,:));
    fprintf(fileID,'\n');
end
fclose(fileID);

for i=1:size(arrayResults(:,1))
    text(arrayResults(i,2)-10, arrayResults(i,1)-5, num2str(arrayResults(i,5)));
end
saveas(f,'results.jpg','jpg')
