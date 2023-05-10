classdef TempTxtDataReader
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    methods
        function data = readData(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            f = fopen("data_format1.txt");
            r=textscan(f, '%s%f', 'Delimiter', ',');
            fclose(f);
            data=[r{1} num2cell(r{2})];
        end
    end
end