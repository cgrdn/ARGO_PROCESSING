function dac = get_dac(wmo)

index_file = 'ar_index_global_meta.txt';
data = txt2mat(index_file, 9, 'Format', '%s,%d,%s,%d');