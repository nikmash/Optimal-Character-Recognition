Nc=max(max(L));
f=figure;
imagesc(L);
hold on;
Features=[];

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
        Features=[Features; theta, roundness, inmo];
        
    end

end
%saveas(f,'results.jpg','jpg')

  