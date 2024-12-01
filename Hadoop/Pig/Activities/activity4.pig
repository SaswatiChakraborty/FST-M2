-- Load input file from HDFS
inputFile = LOAD '/root/input.txt' AS (line:chararray);
-- Tokeize the lines into words
words = FOREACH inputFile GENERATE FLATTEN(TOKENIZE(line)) AS word;
-- Group the words (MAP)
grpd = GROUP words BY word;
-- Count the occurence of each word (Reduce)
totalCount = FOREACH grpd GENERATE $0 AS word, COUNT($1) AS no_of_words;
-- to remove old outputs
rmf /root/PigOutput1
-- Store the result in HDFS
STORE totalCount INTO '/root/PigOutput1';  
