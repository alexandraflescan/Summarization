import nltk
import re
import string
from nltk.corpus import stopwords 
from nltk.tokenize import word_tokenize
import codecs

def tokenize (file_txt, file_token):

    t = codecs.open(file_txt, "r", "utf-8")
    text = t.read()
    stop_words = set(stopwords.words("english"))
    words = word_tokenize(text)
    f = open (file_token, "w")
    for w in words:
      if w not in stop_words:
          f.write(w +"\n")

tokenize ("records00005.txt", "token00005.txt")
tokenize ("records00007.txt", "token00007.txt")
tokenize ("records00011.txt", "token00011.txt")

######REMOVE PUNCTUATION############
# regex = re.compile('[%s]')


    