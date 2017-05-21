#PREPROCESARE
#Eliminare TAGuri XML

import re
import codecs


def pars_xml(file_xml, file_txt):

	t = codecs.open(file_xml, "r", "utf-8")
	text = t.read()
	t.close()
	text = re.sub('<[^<]+>', " " , text)
	lista_cuvinte = filter (lambda x:re.match("^[a-zA-Z]+$",x),[x for x in re.split("[\s:/,.:?!-\"']",text)])

	test = ' '.join(list(lista_cuvinte))

	f = open(file_txt, "w") 
	f.write(test)
	f.close()

pars_xml("records00005.xml", "records00005.txt")
pars_xml("records00007.xml", "records00007.txt")
pars_xml("records00011.xml", "records00011.txt")

