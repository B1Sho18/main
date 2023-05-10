classdef (Abstract) TempDataAdapter
    %TEMPDATADAPTER Interface for temperature data adapter
    
    methods (Abstract)
        data = getData(obj);
        %GETDATA Reads temperature data and returns as 1xN struct
        %
        % The data is returned as 1xN struct with fields 'time' and 'temp' per row
    end
end