classdef TempDatDataReader
    %TEMPDATDATAREADER reads temperature data from file

    properties
        dataFile = 'data_format2.dat';
    end

    methods
        function data = readData(obj)
            %READDATA reads data from file
            fid = fopen(obj.dataFile, 'r');
            data = textscan(fid, '%s%f', 'Delimiter', ',');
            fclose(fid);
            data = [data{1} num2cell(data{2})];
        end
    end
end