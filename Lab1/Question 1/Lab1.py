#135860 Sitati Lewis ICS 4B
#135865 Omwenga Farajah 
#112473 Ogutu Tracy
#112272 Sulmon Bahati
#110328-Alfred Mwaniki
#120047 Wanje Kelvin
#137255 Nicole Were

def split_words(sentence):
  words = sentence.split(" ")
  return words

def main():
  sentence = input("Enter a sentence:")
  words = split_words(sentence)
  for word in words:
    print(word)

if __name__ == "__main__":
  main()