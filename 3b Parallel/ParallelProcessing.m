function ParallelProcessing(PoolSize)
%% 1: Load Data
%clear all
%close all

FileName = './Model/o3_surface_20180701000000.nc';

Contents = ncinfo(FileName);

Lat = ncread(FileName, 'lat');
Lon = ncread(FileName, 'lon');

RadLat = 30.2016;
RadLon = 24.8032;
RadO3 = 4.2653986e-08;

StartLat = 1;
NumLat = 400;
StartLon = 1;
NumLon = 700;



%PoolSize = 6;

StartHour = 1; 
NumHours = 25; 
Num2Process = 500; 

ParallelFunction(RadLat,RadLon,RadO3,StartLat,NumLat,StartLon,NumLon,PoolSize,StartHour,NumHours,Num2Process,FileName,Contents,Lat,Lon);