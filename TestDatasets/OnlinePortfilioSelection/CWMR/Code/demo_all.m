function demo_all() 
% this program demos CWMR for on-line portfolio selection
% Copyright 2011 by Bin
%

% Simulation variables
opts.quiet_mode = 0;      % Display nothing. 0: display; 1: no display
opts.display_interval = 500;  % If display, the display interval
opts.log_mode = 1;         % Write .txt log file. 0: no log; 1: write log
opts.mat_mode = 1;         % Write .mat log file. 0: no mat; 1: write mat
opts.analyze_mode = 1;     % Analyze and display info. 0: no; 1: yes
opts.his = 0;              % Historical Mode. 0: no; 1: yes

% Dataset 
dataset = 'nyse_o';
% dataset = 'nyse_n';
% dataset = 'tse';
% dataset = 'msci';
% dataset = 'dja';
% dataset = 'ndx';
% dataset = 'week_nyse_o';
% dataset = 'week_nyse_n';

% CWMR algorithms
demo_manager('cwmr_var_start', dataset, {2, 0.5, 0}, opts);
demo_manager('cwmr_stdev_start', dataset, {2, 0.5, 0}, opts);

% benchmarks
demo_manager('market_start', dataset, {0}, opts);
demo_manager('best_start', dataset, {0}, opts);
demo_manager('bcrp_start', dataset, {0}, opts);

end