clear, clc, close all

% Folder pointing towards the matlab function
opt.matlab_code_folder = 'matlab_code/example_for_readme';

% The function name to generate to c
opt.matlab_function = 'Addition';

% Here you specify the shape of your inputs
% coder.typeof( int/bool/dobule, [dim_x dim_y], [dynamic_x dynamic_y])
% the dynamic_x, dynamic_y 0/1 depending on the input dimension can change
% For more info read up on the Matlab Codegen docs
opt.arguments = {coder.typeof(1.0,[1 1], [0 0]),...
                 coder.typeof(1.0,[1 1], [0 0])};

% Settings for the Matlab coder
cfg = coder.config('lib');
cfg.TargetLang = 'C++';

% Remove unecessary extra stuff that will help increase readability in the
% code
cfg.SaturateOnIntegerOverflow = false;
cfg.SupportNonFinite = false;
cfg.FilePartitionMethod = 'SingleFile'; % Easier with one single file


% Start the code generation
addpath(genpath(opt.matlab_code_folder));


codegen('-config',cfg,opt.matlab_function,'-args',opt.arguments,'-v','-d',['./' opt.matlab_function '/'])