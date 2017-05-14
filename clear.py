#PREPROCESARE
#Eliminare TAGuri XML

import re

text = re.sub('<[^<]+>', " ", open("C:/Python27/exercitii/records/records00005.xml").read())
with open("C:/Python27/exercitii/records/records00005.txt", "w") as f:
	f.write(text)
text = re.sub('<[^<]+>', " ", open("C:/Python27/exercitii/records/records00005.xml").read())
with open("C:/Python27/exercitii/records/records00007.txt", "w") as f:
	f.write(text)
text = re.sub('<[^<]+>', " ", open("C:/Python27/exercitii/records/records00005.xml").read())
with open("C:/Python27/exercitii/records/records00011.txt", "w") as f:
	f.write(text)
