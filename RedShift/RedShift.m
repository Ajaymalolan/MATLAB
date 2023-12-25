% importing starData.mat file

load starData

% finding number of rows/ number of observations

nObs = size(spectra,1);

% assignining initial wavelength and step size.

lambdaStart = 630.02;
lambdaDelta = 0.14;

% calculating end wavelength

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta;

% storing array of wavelengths

lambda = (lambdaStart:lambdaDelta:lambdaEnd)';

% storing every value in spectra, you can load values of individual rows and columns

s = spectra;

% log scale plot and labels

loglog(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

% finding minimum values

[sHa,idx] = min(s);

% storing minima value

lambdaHa = lambda(idx);

% marking minima values

hold on
loglog(lambdaHa,sHa,"rs","MarkerSize",8)
hold off

% finding redshift factor

z = lambdaHa/656.28 - 1;

% finding speed

speed = z*299792.458;
