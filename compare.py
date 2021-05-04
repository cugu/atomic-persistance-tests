import csv
import json
import os

import tabulate

seen = dict()

with open('reports/empty-autoruns.csv/autoruns.csv', newline='', encoding="utf-16le") as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        # if not row['Entry Location'] in seen:
        #    seen[row['Entry Location']] = dict()
        seen[row['Entry Location'] + ": " + row['Entry']] = True

autoruns = dict()

for filename in sorted(os.listdir("reports")):
    if "empty" not in filename and filename.endswith('autoruns.csv'):
        new = set()
        with open("reports/" + filename + '/autoruns.csv', newline='', encoding="utf-16le") as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                if not row['Entry Location'] + ": " + row['Entry'] in seen:
                    if "HKLM\\System\\CurrentControlSet\\Services" not in row['Entry Location'] \
                            and row['Enabled'] == "enabled" \
                            and "UpdateConfiguration" not in row['Entry']:
                        # if not row['Entry Location'] in new:
                        #    new[row['Entry Location']] = dict()
                        new.add(row['Entry Location'] + ": " + row['Entry'])
        # table.append([i, filename, new])
        autoruns[filename.replace("-autoruns.csv", "")] = new

# print(tabulate.tabulate(table))

print("--------------------------")

seen = set()

with open('reports/empty-discoruns.json/discoruns.json') as jsonfile:
    data = json.load(jsonfile)
    for row in data:
        seen.add(row['entry'])

i = 1

table = []

for filename in sorted(os.listdir("reports")):
    if "empty" not in filename and filename.endswith('discoruns.json'):
        new = set()
        with open("reports/" + filename + '/discoruns.json') as jsonfile:
            data = json.load(jsonfile)
            for row in data:
                if not row['entry'] in seen:
                    if "elevation_service.exe" not in row['entry']:
                        new.add(row['entry'])
        table.append([i, filename.replace("-discoruns.json", ""), "\n".join(new),
                      "\n".join(autoruns[filename.replace("-discoruns.json", "")])])
        i += 1

print(tabulate.tabulate(table, headers=["No", "Name", "Disco", "Auto"]))
