# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"N05.3","system":"icd10"},{"code":"N60.9","system":"icd10"},{"code":"N98.9","system":"icd10"},{"code":"N07.9","system":"icd10"},{"code":"N36.9","system":"icd10"},{"code":"N90.9","system":"icd10"},{"code":"N85.9","system":"icd10"},{"code":"N15.9","system":"icd10"},{"code":"N49.8","system":"icd10"},{"code":"N64.9","system":"icd10"},{"code":"N05.7","system":"icd10"},{"code":"N35.9","system":"icd10"},{"code":"N23","system":"icd10"},{"code":"N90.3","system":"icd10"},{"code":"N05.2","system":"icd10"},{"code":"N50.9","system":"icd10"},{"code":"N03.9","system":"icd10"},{"code":"N19.X","system":"icd10"},{"code":"N81.9","system":"icd10"},{"code":"N73.9","system":"icd10"},{"code":"N32.9","system":"icd10"},{"code":"N19","system":"icd10"},{"code":"N70.9","system":"icd10"},{"code":"N05.1","system":"icd10"},{"code":"N01.9","system":"icd10"},{"code":"N89.3","system":"icd10"},{"code":"N25.9","system":"icd10"},{"code":"N63","system":"icd10"},{"code":"N99.9","system":"icd10"},{"code":"N89.9","system":"icd10"},{"code":"N05.6","system":"icd10"},{"code":"N90.8","system":"icd10"},{"code":"N71.9","system":"icd10"},{"code":"N92.6","system":"icd10"},{"code":"N93.9","system":"icd10"},{"code":"N75.9","system":"icd10"},{"code":"N31.9","system":"icd10"},{"code":"N73.2","system":"icd10"},{"code":"N05.5","system":"icd10"},{"code":"N05.4","system":"icd10"},{"code":"N39.2","system":"icd10"},{"code":"N05.8","system":"icd10"},{"code":"N43.3","system":"icd10"},{"code":"N30.9","system":"icd10"},{"code":"N13.3","system":"icd10"},{"code":"N87.9","system":"icd10"},{"code":"N49.9","system":"icd10"},{"code":"N05","system":"icd10"},{"code":"N39.9","system":"icd10"},{"code":"N23.X","system":"icd10"},{"code":"N97.9","system":"icd10"},{"code":"N05.0","system":"icd10"},{"code":"N48.9","system":"icd10"},{"code":"N27.9","system":"icd10"},{"code":"N34.3","system":"icd10"},{"code":"N13.9","system":"icd10"},{"code":"N73.5","system":"icd10"},{"code":"N39.1","system":"icd10"},{"code":"N05.9","system":"icd10"},{"code":"N02.9","system":"icd10"},{"code":"N18.9","system":"icd10"},{"code":"N88.9","system":"icd10"},{"code":"N63.X","system":"icd10"},{"code":"N80.9","system":"icd10"},{"code":"N81.4","system":"icd10"},{"code":"N06.9","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-genitourinary-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
