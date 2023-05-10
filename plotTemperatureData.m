function plotTemperatureData(adapter)
    %PLOTTEMPERATUREDATA Plot temperature data
    
    %check adapter
    checkDataAdapter(adapter);

    plotData = adapter.getData();
    plot([plotData.time], [plotData.temp]);
    xlabel('Zeit');
    ylabel('Temperatur');
end

function checkDataAdapter(adapter)
    %CHECKDATADAPTER Check if adapter is a valid IDataAdapter
    
    if ~isa(adapter, 'IDataAdapter')
        error("Adapter not implemented correctly!")
    end
end