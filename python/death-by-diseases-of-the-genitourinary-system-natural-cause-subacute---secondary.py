# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"N00.5","system":"icd10"},{"code":"N00.4","system":"icd10"},{"code":"N00.7","system":"icd10"},{"code":"N76.2","system":"icd10"},{"code":"N71.0","system":"icd10"},{"code":"N17.1","system":"icd10"},{"code":"N30.0","system":"icd10"},{"code":"N00.8","system":"icd10"},{"code":"N73.0","system":"icd10"},{"code":"N76.0","system":"icd10"},{"code":"N00","system":"icd10"},{"code":"N73.3","system":"icd10"},{"code":"N17.2","system":"icd10"},{"code":"N00.2","system":"icd10"},{"code":"N76.3","system":"icd10"},{"code":"N17.8","system":"icd10"},{"code":"N00.1","system":"icd10"},{"code":"N00.6","system":"icd10"},{"code":"N17.0","system":"icd10"},{"code":"N76.1","system":"icd10"},{"code":"N17","system":"icd10"},{"code":"N00.3","system":"icd10"},{"code":"N14.2","system":"icd10"},{"code":"N17.9","system":"icd10"},{"code":"N14.1","system":"icd10"},{"code":"N70.0","system":"icd10"},{"code":"N00.9","system":"icd10"},{"code":"N00.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-genitourinary-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
