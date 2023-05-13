filename='DatatoRead.txt';
fileid=fopen(filename,'r'); % r: to open the file for reading
z=fscanf(fileid,'%c') % '%c' to read the special characters and spaces in the file
contains(z,'Senior')
fclose(fileid); %to close the file