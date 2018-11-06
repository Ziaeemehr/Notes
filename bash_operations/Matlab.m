Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2018-09-14T10:59:28+04:30

====== Matlab ======
Created Friday 14 September 2018

====== add foler and subfolders ======
addpath(genpath('./'))

====== find a function location ======
fileparts(which('init_EP_EP.m'))

====== print value of variables: ======

disp(ii)

for ii = 1:10
	x = sprintf('%f', ii);
	disp(x)
end

for ii = 1:10
	fprintf('%d', ii);
end

====== variable filename ======

filename = sprintf('r-%f.txt', prc_input); 
fileID = fopen(filename, 'w');
for ii = 1:length(PRC10)
	fprintf(fileID,'%15.6f \n',PRC10(ii));
end
