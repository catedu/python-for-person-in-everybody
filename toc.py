import re

# Para meter python detrás de ''' en vscode:
# Busca: \n^(```)\n(\S)
# Sustituye por: \n$1python\n$2

text = '''

'''


pattern = re.compile(r"(#+\s)(.*)(\{#)(.*)\}")
index = pattern.findall(text)

for item in index:
    print(f"* [{item[1][:-1]}](#{item[3]})")

print('hecho')