# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"N41.9","system":"icd10"},{"code":"N51.0","system":"icd10"},{"code":"N42.8","system":"icd10"},{"code":"N42.1","system":"icd10"},{"code":"N41","system":"icd10"},{"code":"N41.8","system":"icd10"},{"code":"N40.X","system":"icd10"},{"code":"N42","system":"icd10"},{"code":"N42.2","system":"icd10"},{"code":"N40","system":"icd10"},{"code":"N41.3","system":"icd10"},{"code":"N41.0","system":"icd10"},{"code":"N41.1","system":"icd10"},{"code":"N95.1","system":"icd10"},{"code":"N41.2","system":"icd10"},{"code":"N42.0","system":"icd10"},{"code":"N95.3","system":"icd10"},{"code":"N42.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-genitourinary-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
