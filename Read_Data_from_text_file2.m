filename='dollars.txt';
fileid=fopen(filename,'r'); % r: to open the file for reading
dollar=char(36);
myformat=['%d' dollar ' '];
z=fscanf(fileid,myformat) % the extracted data will exclude the special character
fclose(fileid); %to close the file
filename2='NewFile.txt';
fileid2=fopen(filename2,'w');
pound=char(163);
format=['%d' pound '\n'] % "\n" new line character
fprintf(fileid2,format,z)
fclose(fileid2)