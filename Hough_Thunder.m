function result = Hough_Thunder(pic,target,threshold)
%HOUGH_THUNDER 此处显示有关此函数的摘要
%   此处显示详细说明
[y,x] = find(target);
cx = round(mean(x));
cy = round(mean(y));
x_map = cx-x;
y_map = cy-y;
[W,L] = size(pic);
[ys,xs] = find(pic);
h_space = zeros(W,L);
for flag = [ys,xs]'
    ycs = y_map + flag(1);
    xcs = x_map + flag(2);
    r_ind = ycs>0&ycs<=W&xcs>0&xcs<=L;
    h_space = h_space + accumarray([ycs(r_ind),xcs(r_ind)],1,[W,L]);
end
figure;
imshow(h_space,[]);
[yt,xt] = find(h_space >= sum(target(:)*threshold));
result = zeros(W,L);
for ii = 1:length(yt)
    result = result + accumarray([yt(ii)-y_map,xt(ii)-x_map],1,[W,L]);
end
result = double(cat(3,ones(W,L),~result,~pic));
end

