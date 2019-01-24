import re

with open('02-variables.md', 'r') as file:
    text = file.read()


pattern = re.compile(r"(#+\s)(.*)(\{#)(.*)\}")
index = pattern.findall(text)

for item in index:
    print(f"* [{item[1]}](#{item[3]})")
