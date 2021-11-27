
library(here)
library(tidyverse)

data_path = here('data/')
csvfiles = sort.default(list.files(data_path,pattern=".csv$"))

as.list(strsplit(csvfiles[2],split = "_"))

yy <- unlist(lapply(csvfiles,strsplit,split = "_"))


xx = yy[seq(1,length(yy),2)]

lapply(xx, strsplit, split='-')

unlist(strsplit(xx[1],split = '-'))

num = unlist(lapply(xx, substr,16,16))

kk = yy[seq(0,length(yy),2)]

datatable_cyber <- data.frame(xx=xx,kk=kk)


term7enrolments <- read.csv(here(data_path,"cyber-security-7_enrolments.csv"))

gender <- term7enrolments$gender
gender <- gender[-which(gender=="Unknown")]

table(gender)
gendername = c('female','male','other')
infor = c(98,115,1)
cols = c("#ED1C24","#22B14C","#FFC90E")

piepercent = paste(round(100*infor/sum(infor)), "%")
pie(infor,labels=piepercent,main = "Gender Distribution", col=cols)
legend("topright", gendername, cex=0.8, fill=cols)


country = term7enrolments$country

country <- country[-which(country=="Unknown")]
country_count <- table(country)
country_count
barplot(country_count,main="Country Frequency",xlab="Country",ylab = "Frequency")
