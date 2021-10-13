import pandas as pd
import os
table = pd.read_html('https://en.wikipedia.org/wiki/Comma-separated_values')

df = table[1]
print(df)

os.chdir('D:\YEAR 3\PROGRAMMING FOR DATA SCIENCE\Practice Assignments\st_2195_assignment_2\python_csv')

df.to_csv(r'cars.csv', index = False, header = True)

df2 = pd.read_csv('cars.csv')
df2
