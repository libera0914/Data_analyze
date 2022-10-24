%% This script allows you to open and explore the data in a *.nc file
clear all % clear all variables
close all % close all windows

FileName = '../Model/o3_surface_20180701000000.nc'; % define the name of the file to be used, the path is included

Contents = ncinfo(FileName); % Store the file content information in a variable.


%% Section 2: Load all the model data together
[AllDataMem] = LoadAllData(FileName,Contents);

%% Section 3: Loading all the data for a single hour from all the models
% We combine the aboce code to cycle through the names and load each model.
% We load the data into successive 'layers' using 'idx', and let the other
% two dimensions take care of themselves by using ':'
 [HourDataMem] = LoadAllHours(FileName,Contents);
%% Section 4: Cycle through the hours and load all the models for each hour and record memory use
% We use an index named 'StartHour' in our loop
[HourMem] = LoadAllHours(FileName,Contents);
%% Section 5: Print our results
Reportresults  (AllDataMem,HourDataMem,HourMem)