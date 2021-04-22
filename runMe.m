clear all; clc;
ur = 'https://bit.ly/3e50uRt';
str = webread(ur);
%expression = '<(table).*?</\1>';
expr = 'Set 1: .{28}';
Data = regexp(str,expr,'match');
expr1 = '\d{4}';
timeSt1 = 'Timestamp:.{24}';
Timestamp = regexp(str,timeSt1,'match');
saveFile = [Data; Timestamp];
save('sendMe.mat', 'saveFile')


