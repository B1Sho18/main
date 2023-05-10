classdef DatFormatAdapter < TempDataAdapter
    % This class adapts the output format of TempDatDataReader to match
    % the expected output format of the TempDataAdapter.

    properties
        reader
    end
    
    methods
        function obj = DatFormatAdapter()
            % Constructor for DatFormatAdapter class
            obj.reader = TempDatDataReader();
        end
        
        function Data = getData(obj)
            % Reads data using the TempDatDataReader and adapts the output format
            % to match the expected output format of the TempDataAdapter.
            
            C = obj.reader.readData();
            Data = struct('time', C(:, 1), 'temp', C(:, 2));
        end
    end
end
