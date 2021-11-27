

term6question_response <- read.csv(here(data_path,"cyber-security-6_question-response.csv"))
term6question_response <- tibble(head(term6question_response))

xx <- group_by(term6question_response, quiz_question,correct)
yy <- filter(xx,correct=="true")

sel <- select(term6question_response,quiz_question,correct)
zz <- summarise(xx,n())

