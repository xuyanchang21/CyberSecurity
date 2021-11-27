
library(here)
library(tidyverse)

data_path = here('data/')
csvfiles = sort.default(list.files(data_path,pattern=".csv$"))

as.list(strsplit(csvfiles[2],split = "_"))

yy <- unlist(lapply(csvfiles,strsplit,split = "_"))


xx = yy[seq(1,length(yy),2)]

lapply(xx, strsplit, split='-')

unlist(strsplit(xx[1],split = '-'))

kk = yy[seq(0,length(yy),2)]

type <- data.frame(xx=xx,kk=kk)

spread(type,kk,xx)