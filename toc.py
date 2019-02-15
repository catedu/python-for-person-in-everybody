import re

# Para meter python detrás de ''' en vscode:
# Busca: \n^(```)\n(\S)
# Sustituye por: \n$1python\n$2
#
# En la versión española:
# Busca \n^```(\S)
# Sustituye por: \n```python\n$1
#
# Para cambiar el formato de los títulos en la versión inglesa:
# Busca: ^(#+\s)\[(.*)\]\((.*)\)
# Sustituye por: $1$2 {$3}
#
# Para cambiar el formato de los títulos en la versión española:
# Busca: ^(#+\s)\[(.*)\]\s\((.*)\)
# Sustituye por: $1$2 {$3}

text = '''

'''


pattern = re.compile(r"(#+\s)(.*)(\{#)(.*)\}")
index = pattern.findall(text)

for item in index:
    print(f"* [{item[1][:-1]}](#{item[3]})")

print('hecho')