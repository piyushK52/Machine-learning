function file_contents = readFile(filename)
%READFILE reads a file and returns its entire contents 
%   file_contents = READFILE(filename) reads a file and returns its entire
%   contents in file_contents
%

% Load File
fid = fopen(filename);
if fid
    file_contents = fscanf(fid, '%c', inf); % inf means to read till the end of the file
    fclose(fid);
else
    file_contents = '';
    fprintf('Unable to open %s\n', filename);
end

end

