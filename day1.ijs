NB. utility that reads array from file
readarray =: 3 : 0
d =. fread y      NB. read from file
d =. toJ d 	  NB. convert various line breaks to LF
d =. cutopen d    NB. partition loaded data (convert to box for each line)
d =. 0 ". each d  NB. convert characters to numbers in each box
d =. > d          NB. open boxes
)


NB. part 1
NB. run: day11 'input11.txt'
day11 =: monad define
data =. readarray y
+/ _2 + <. data % 3
)