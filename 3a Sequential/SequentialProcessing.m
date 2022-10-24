% function SequentialFunction(FileName,Contents,Lat,Lon,RadLat,RadLon,RadO3,StartLat,NumLat,StartLon,NumLon,HourNum,SizeLoop
clear all
close all

FileName = '../Model/o3_surface_20180701000000.nc';

Contents = ncinfo(FileName);

Lat = ncread(FileName, 'lat'); % load the latitude locations
Lon = ncread(FileName, 'lon'); % loadthe longitude locations
RadLat = 30.2016; % cluster radius value for latitude
RadLon = 24.8032; % cluster radius value for longitude
RadO3 = 4.2653986e-08; % cluster radius value for the ozone data
StartLat = 1; % latitude location to start laoding
NumLat = 400; % number of latitude locations ot load
StartLon = 1; % longitude location to start loading
NumLon = 700; % number of longitude locations ot load
%HourNum = 7;
StartHour =1; 
EndHour = 1;
SizeLoop = 250;


SequentialFunction(FileName,Contents,Lat,Lon,RadLat,RadLon,RadO3,StartLat,NumLat,StartLon,NumLon,StartHour,EndHour,SizeLoop);