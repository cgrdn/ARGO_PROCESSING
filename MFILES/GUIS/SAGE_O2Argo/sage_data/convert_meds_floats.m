meds_float_tracker = 'C:\\Users\GordonC\Documents\projects\meds-dmqc\dmqc_tracker.csv';
opts = detectImportOptions(meds_float_tracker);
data = readtable(meds_float_tracker, opts);

for i=1:numel(data.wmo)
    sprof2odv(data.wmo(i), 'meds');
end