classdef TextFormatAdapter < TempDataAdapter
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here

properties
    reader
end 
    methods
        function obj= TextFormatAdapter()
            %UNTITLED4 Construct an instance of this class
            %   Detailed explanation goes here
            obj.reader =TempTxtDataReader() ;
        end

        function Data= getData(obj)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
             C = obj.reader.readData();
             Data = struct('time', C(:, 1), 'temp', C(:, 2));
        end
    end
end