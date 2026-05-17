import os
import re

docs_dir = r"c:\PruebaAntigravity\Elastic-SIEM\Elastic-SIEM-Lab\docs"

for root, _, files in os.walk(docs_dir):
    for f in files:
        if f.endswith('.md'):
            filepath = os.path.join(root, f)
            with open(filepath, 'r', encoding='utf-8') as file:
                content = file.read()
            
            # Reemplazar ![alt](path) por <img src="path" alt="alt" width="700">
            new_content = re.sub(r'!\[([^\]]+)\]\(([^)]+)\)', r'<img src="\2" alt="\1" width="700">', content)
            
            with open(filepath, 'w', encoding='utf-8') as file:
                file.write(new_content)

print("Imágenes redimensionadas.")
