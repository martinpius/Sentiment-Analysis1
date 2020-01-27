# Sentiment-analysis
These codes generate interactive word clouds and sentiment scores plot for opinion mining concerning Boeing 737 Max tragedy
#Installing and require all necessary packages for the project
install.packages("httr")
install.packages("ROAuth")
install.packages("syuzhet")
require(plyr)
require(wordcloud)
require(ggplot2)
require(tm)
require(dplyr)
require(SentimentAnalysis)
require(httr)
require(ROAuth)
require(twitteR)
require(stringr)
require(RCurl)
require(syuzhet)
require(rtweet)
Consumer_key="-----------"
Consumer_secret="------------------"
access_secreat="................."
access_token="//////////////////////"
setup_twitter_oauth(Consumer_key,Consumer_secret,access_token,access_secreat)
install.packages("devtools")
devtools::install_github("mkearney/rtweet")
require(rtweet)
library(rtweet)
rm(list = ls())
$Pooling the related tweets and save in my local machine.
Boingleo=searchTwitteR("Boeing+ Max+crash", n=100000, resultType = "recent", lang = "en")
Airline1=searchTwitter("Southwest +Airlines+Max", n=100000, resultType = "recent", lang = "en")
Airline1

Airline11=ldply(Airline1, function(t) t$toDataFrame())
write.csv(Airline1, file = "AirCanada.csv")
write.table(Airline11$text,"AirCanada.txt", sep = "\t")

Airline2=searchTwitter("Air+Canada+Max",n=10000,resultType = "recent,lang = "en")
                       Airline2
                       
                       Airline22=ldply(Airline2, function(t) t$toDataFrame())
                       write.csv(Airline22, file = "AirCanada.csv")
                       write.table(Airline22$text,"AirCanada.txt", sep = "\t")
                       
                       Airline3=searchTwitter("American+Airline+Max",n=100000,resultType = "recent",lang = "en")
                       Airline3
                       
                       Airline33=ldply(Airline3, function(t) t$toDataFrame())
                       write.csv(Airline33, file = "AmericanAirlines.csv")
                       write.table(Airline33$text,"AmericanAirlines.txt", sep = "\t")
                       
                       Airline4=searchTwitter("China+Southern+Max",n=100000,resultType = "recent",lang = "en")
                       Airline4
                       
                       Airline44=ldply(Airline4, function(t) t$toDataFrame())
                       write.csv(Airline44, file = "ChinaSouthern.csv")
                       write.table(Airline44$text,"ChinaSouthern.txt", sep = "\t")
                       
                       Airline5=searchTwitter("Norwegian+Air+Max",n=100000,resultType = "recent",lang = "en")
                       Airline5
                       
                       Airline55=ldply(Airline5, function(t) t$toDataFrame())
                       write.csv(Airline55, file = "NorwegianAir.csv")
                       write.table(Airline55$text,"NorwegianAir.txt", sep = "\t")
                       
                       Airline6=searchTwitter("Air+China+Max",n=100000,resultType = "recent",lang = "en")
                       Airline6
                       
                       Airline66=ldply(Airline6, function(t) t$toDataFrame())
                       write.csv(Airline66, file = "AirChina.csv")
                       write.table(Airline66$text,"AirChina.txt", sep = "\t")
                       
                       Politic1=searchTwitter("Trump+Max",n=1000,resultType = "recent",lang = "en")
                       Politic1
                       
                       Trump=ldply(Politic1, function(t) t$toDataFrame())
                       write.csv(Trump, file = "DonaldTrrump.csv")
                       write.table(Trump$text,"DonaldTrump.txt", sep = "\t")
                       
                       Politic3=searchTwitter("Marc+Garneau+Max",n=1000,resultType = "recent",lang = "en")
                       Politic3
                       
                       MarcGarneau=ldply(Politic3, function(t) t$toDataFrame())
                       write.csv(MarcGarneau, file = "MarcGarneau.csv")
                       write.table(MarcGarneau$text,"MarcGarneau.txt", sep = "\t")
                       
                       Public=searchTwitter("Ethiopian+Max+crash",n=10000,resultType = "recent",lang = "en")
                       Public
                       
                       Public1=ldply(Public, function(t) t$toDataFrame())
                       write.csv(Public1, file = "Public.csv")
                       write.table(Public1$text,"Public.txt", sep = "\t")
                       
                       CNN=searchTwitter("CNN+Ethiopian + Max+ crash",n=10000,resultType = "recent",lang = "en")
                       CNN
                       
                       CNN1=ldply(CNN, function(t) t$toDataFrame())
                       write.csv(CNN1, file = "CNN.csv")
                       write.table(CNN1$text,"CNN.txt", sep = "\t")
                       
                       BBC=searchTwitter("BBC+Ethiopian + Max+ crash",n=1000,resultType = "recent",lang = "en")
                       BBC
                       
                       BBC1=ldply(BBC, function(t) t$toDataFrame())
                       write.csv(BBC1, file = "BBC.csv")
                       write.table(BBC1$text,"BBC.txt", sep = "\t")
                       
                       TheGuardian=searchTwitter("The+Guardian+Ethiopian + Max+ crash",n=1000,since = "2019-03-05",lang = "en")
                       TheGuardian
                       
                       Guardian=ldply(TheGuardian, function(t) t$toDataFrame())
                       write.csv(Guardian, file = "TheGuardian.csv")
                       write.table(Guardian$text,"TheGuardian.txt", sep = "\t")
                       
                       NYT=searchTwitter("New York Times+Ethiopian + Max+ crash",n=1000,resultType = "recent",lang = "en")
                       NYT
                       
                       NYT1=ldply(NYT, function(t) t$toDataFrame())
                       write.csv(NYT1, file = "NewYorkTimes.csv")
                       write.table(NYT1$text,"NewYorkTimes.txt", sep = "\t")
                       
                       INDE=searchTwitter("The Independent+Ethiopian + Max+ crash",n=1000,resultType = "recent",lang = "en")
                       INDE
                       
                       INDE1=ldply(INDE, function(t) t$toDataFrame())
                       write.csv(INDE1, file = "Independent.csv")
                       write.table(INDE1$text,"Independent.txt", sep = "\t")
                       
                       SKY=searchTwitter("SkyNews+Ethiopian + Max+ crash",n=1000,resultType = "recent",lang = "en")
                       SKY
                       
                       SKY1=ldply(SKY, function(t) t$toDataFrame())
                       write.csv(SKY1$text, file = "SKY.csv")
                       write.table(SKY1$text,"SKY.txt", sep = "\t")
                       
                       ######Importing the texts from my local machine and work-out#####
                       file.choose()
                       FolderA="/Users/mac/Desktop/Data Mining /Data mining with R/AirlineN"
                       list.files(path = FolderA)
                       filelist=list.files(path = FolderA,pattern = "*.txt")
                       filelist=paste(FolderA,"/",filelist,sep = "")
                       filelist
                       a1=lapply(filelist,FUN=readLines)
                       a1=lapply(a1,FUN=paste,collapse=" ")
                       MegacorpusA=a1
                       str(a1)
                       require(tm)
                       MegacorpusA=Corpus(VectorSource(MegacorpusA))
                       MegacorpusA
                       file.choose()
                       FolderB="/Users/mac/Desktop/Data Mining /Data mining with R/Boeing"
                       list.files(path = FolderB)
                       filelist=list.files(path = FolderB,pattern = "*.txt")
                       filelist=paste(FolderB,"/",filelist,sep = "")
                       filelist
                       a2=lapply(filelist,FUN=readLines)
                       a2=lapply(a2,FUN=paste,collapse=" ")
                       MegacorpusB=a2
                       MegacorpusB=Corpus(VectorSource(MegacorpusB))
                       
                       file.choose()
                       FolderMP="/Users/mac/Desktop/Data Mining /Data mining with R/Media"
                       list.files(path = FolderMP)
                       filelist=list.files(path = FolderMP,pattern = "*.txt")
                       filelist=paste(FolderMP,"/",filelist,sep = "")
                       filelist
                       a3=lapply(filelist,FUN=readLines)
                       a3=lapply(a3,FUN=paste,collapse=" ")
                       MegacorpusM=a3
                       MegacorpusM=Corpus(VectorSource(MegacorpusM))
                       
                       ######################################### Batch 1 ######################################################
                       ##Cleaning the corpus####
                       inspect(MegacorpusA[1])
                       MegatextA <- tm_map(MegacorpusA, content_transformer(tolower))
                       #MegatextG<- tm_map(MegaCorpusG,function(x) stri_trans_tolower(x))
                       # remove hashtags
                       MegatextA<- tm_map(MegatextA, function(x) gsub("#\\S+", "", x))
                       inspect(Megatext2[1])
                       # remove URLs
                       MegatextA<- tm_map(MegatextA, function(x) gsub("http\\S+", "", x))
                       # remove numbers
                       MegatextA<- tm_map(MegatextA, removeNumbers)
                       # remove punctuation other than .
                       # first change other sentence stops like ?! to .
                       MegatextA<- tm_map(MegatextA, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextA<- tm_map(MegatextA, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextA<- tm_map(MegatextA, function(x) gsub(" \\.", ".", x))
                       MegatextA<- tm_map(MegatextA, function(x) gsub("\\. ", ".", x))
                       #inspect(Megatext[1])
                       inspect(MegatextA[5])
                       MegatextA=tm_map(MegatextA, removeWords, stopwords('english'))
                       MegatextA<- tm_map(MegatextA, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextA<- tm_map(MegatextA, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextA<- tm_map(MegatextA, function(x) gsub(" \\.", ".", x))
                       MegatextA<- tm_map(MegatextA, function(x) gsub("\\. ", ".", x))
                       MegatextA<-tm_map(MegatextA,removePunctuation)
                       MegatextA<-tm_map(MegatextA,removeWords,c("rt"))
                       MegatextA=tm_map(MegatextA,function(x) gsub(pattern="\\b[A-z]\\b{1}",replace=" ", x))
                       #MegatextA=tm_map(MegatextA, removeWords, stopwords('english'))
                       MegatextA=tm_map(MegatextA,stemDocument,language='english')
                       MegatextA=tm_map(MegatextA, removeWords,c("canada","air","airlines","aircanada","american",
                                                                 "max","china","southern","norwegian","southwest"))
                       MegatextA=tm_map(MegatextA,removeWords,c('airplan','aircraft','fli'))
                       MegatextA<-tm_map(MegatextA, stripWhitespace)
                       inspect(MegatextA[1])
                       MegatdmA=TermDocumentMatrix(MegatextA)
                       MegatdmA=as.matrix(MegatdmA)
                       dim(MegatdmA)
                       MegatdmA[1:10,1:6]
                       
                       #################################################### Batch2 ################################################################
                       inspect(MegacorpusB[1])
                       MegatextB <- tm_map(MegacorpusB, content_transformer(tolower))
                       #MegatextG<- tm_map(MegaCorpusG,function(x) stri_trans_tolower(x))
                       # remove hashtags
                       MegatextB<- tm_map(MegatextB, function(x) gsub("#\\S+", "", x))
                       inspect(MegatextB[1])
                       # remove URLs
                       MegatextB<- tm_map(MegatextB, function(x) gsub("http\\S+", "", x))
                       # remove numbers
                       MegatextB<- tm_map(MegatextB, removeNumbers)
                       # remove punctuation other than .
                       # first change other sentence stops like ?! to .
                       MegatextB<- tm_map(MegatextB, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextB<- tm_map(MegatextB, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextB<- tm_map(MegatextB, function(x) gsub(" \\.", ".", x))
                       MegatextB<- tm_map(MegatextB, function(x) gsub("\\. ", ".", x))
                       #inspect(Megatext[1])
                       inspect(MegatextB[1])
                       MegatextB=tm_map(MegatextB, removeWords, stopwords('english'))
                       MegatextB<- tm_map(MegatextB, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextB<- tm_map(MegatextB, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextB<- tm_map(MegatextB, function(x) gsub(" \\.", ".", x))
                       MegatextB<- tm_map(MegatextB, function(x) gsub("\\. ", ".", x))
                       MegatextB<-tm_map(MegatextB,removePunctuation)
                       MegatextB<-tm_map(MegatextB,removeWords,c("rt"))
                       MegatextB=tm_map(MegatextB,function(x) gsub(pattern="\\b[A-z]\\b{1}",replace=" ", x))
                       #MegatextB=tm_map(MegatextB, removeWords, stopwords('english'))
                       MegatextB=tm_map(MegatextB,stemDocument,language='english')
                       MegatextB=tm_map(MegatextB, removeWords,c("max","boeing","crash","crashed"))
                       MegatextB<-tm_map(MegatextB, stripWhitespace)
                       MegatextB<-tm_map(MegatextB,removeWords,c("boeings","crashes"))
                       inspect(MegatextB[1])
                       MegatdmB=TermDocumentMatrix(MegatextB)
                       MegatdmB=as.matrix(MegatdmB)
                       dim(MegatdmB)
                       MegatdmB[1:10,]
                       wordcloud(MegatextB)
                       ################################################ Batch 3 ####################################################################
                       inspect(MegacorpusM[2])
                       MegatextM <- tm_map(MegacorpusM, content_transformer(tolower))
                       #MegatextG<- tm_map(MegaCorpusG,function(x) stri_trans_tolower(x))
                       # remove hashtags
                       MegatextM<- tm_map(MegatextM, function(x) gsub("#\\S+", "", x))
                       inspect(MegatextM[1])
                       # remove URLs
                       MegatextM<- tm_map(MegatextM, function(x) gsub("http\\S+", "", x))
                       # remove numbers
                       MegatextM<- tm_map(MegatextM, removeNumbers)
                       # remove punctuation other than .
                       # first change other sentence stops like ?! to .
                       MegatextM<- tm_map(MegatextM, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextM<- tm_map(MegatextM, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextM<- tm_map(MegatextM, function(x) gsub(" \\.", ".", x))
                       MegatextM<- tm_map(MegatextM, function(x) gsub("\\. ", ".", x))
                       #inspect(Megatext[1])
                       inspect(MegatextM[1])
                       MegatextM=tm_map(MegatextM, removeWords, stopwords('english'))
                       MegatextM<- tm_map(MegatextM, function(x) gsub("[?!,.]", ".", x))
                       # remove all other punctuation
                       MegatextM<- tm_map(MegatextM, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                       # remove spaces before and after fullstop
                       MegatextM<- tm_map(MegatextM, function(x) gsub(" \\.", ".", x))
                       MegatextM<- tm_map(MegatextM, function(x) gsub("\\. ", ".", x))
                       MegatextM<-tm_map(MegatextM,removePunctuation)
                       MegatextM<-tm_map(MegatextM,removeWords,c("rt"))
                       MegatextM=tm_map(MegatextM,function(x) gsub(pattern="\\b[A-z]\\b{1}",replace=" ", x))
                       #MegatextB=tm_map(MegatextB, removeWords, stopwords('english'))
                       MegatextA=tm_map(MegatextA,stemDocument,language='english')
                       MegatextM=tm_map(MegatextM, removeWords,c("max","ethiopian","cnn","bbc","crash","guardian",
                                                                 "new","york","times","independent","skynews",
                                                                 "bbcafrica","bbcworld","cnni","air","aircraf",
                                                                 "aircr","aircraft"))
                       MegatextM=tm_map(MegatextM, removeWords,c("cnni","air","aircraf","aircr","aircraft"))
                       MegatextM<-tm_map(MegatextM, stripWhitespace)
                       inspect(MegatextM[1])
                       MegatdmM=TermDocumentMatrix(MegatextM)
                       MegatdmM=as.matrix(MegatdmM)
                       dim(MegatdmM)
                       MegatdmM[1:10,1:7]
                       
                       wordcloud(MegatextM)
                       
                       #BAR PLOT
                       Wa=rowSums(MegatdmA)
                       Wa
                       Wsa=subset(Wa,Wa>=1000)
                       Wsa
                       pdf('airlines.pdf')
                       barplot(Wsa, las=2, col=rainbow(50),
                               ylab = 'Counts',
                               main = 'Most frequent words counts for airlines data')
                       dev.off()
                       #Word cloud
                       W2a=sort(rowSums(MegatdmA),decreasing = T)
                       set.seed(2345)
                       wordcloud(words = names(W2a), freq = W2a,
                                 colors=brewer.pal(8,"Dark2"),min.freq = 100,
                                 scale=c(4,0.3), random.order = F, rot.per = 0.3)
                       install.packages("wordcloud2")
                       library(wordcloud2)
                       W3a=data.frame(names(W2a), W2a)
                       colnames(W3a)<-c("words", "freq")
                       head(W3a)
                       #WC1=wordcloud2(W3a,size = 1.6,color = 'random-dark',
                       # backgroundColor = 'black')
                       wordcloud2(W3a,size = 2,shape = 'circle',minRotation = -pi/2,maxRotation = -pi/2,
                                  color = rep_len(c('green','blue','red','black'),nrow(W3a)),
                                  backgroundColor = 'gold')
                       #WC1
                       library("htmlwidgets")
                       saveWidget(WC1,"tmp.html",selfcontained = F)
                       # and in png
                       webshot("tmp.html","fig_1.pdf", delay =5, vwidth = 480, vheight=480)
                       
                       WC11=letterCloud(W3a,
                                        word = "a",
                                        size=2)
                       W11
                       saveWidget(WC11,"tmp.html",selfcontained = F)
                       # and in png
                       webshot("tmp.html","fig_2.pdf", delay =5, vwidth = 480, vheight=480)
                       
                       
                       Wb=rowSums(MegatdmB)
                       Wb
                       Wsb=subset(Wb,Wb>=400)
                       Wsb
                       pdf('boeing.pdf')
                       barplot(Wsb, las=2, col=rainbow(50),ylab = 'Counts',
                               main = 'Most frequently words count for Boeing company data')
                       dev.off()
                       #Word cloud
                       W2b=sort(rowSums(MegatdmB),decreasing = T)
                       set.seed(2345)
                       wordcloud(words = names(W2b), freq = W2b,
                                 colors=brewer.pal(8,"Dark2"),min.freq = 100,
                                 scale=c(4,0.3), random.order = F, rot.per = 0.3)
                       install.packages("wordcloud2")
                       library(wordcloud2)
                       W3b=data.frame(names(W2b), W2b)
                       colnames(W3b)<-c("words", "freq")
                       head(W3b)
                       wordcloud2(W3b,size = 1.3,shape = 'circle',
                                  color = rep_len(c('green','blue','red','black'),nrow(W3b))  )
                       letterCloud(W3b,
                                   word = "B",
                                   size=2)
                       
                       Wmp=rowSums(MegatdmM)
                       Wmp
                       Wmp1=subset(Wmp,Wmp>=200)
                       Wmp1
                       pdf('MediaP.pdf')
                       barplot(Wmp1, las=2, col=rainbow(50),
                               ylab = 'Count',
                               main = 'Most frequent words for media and public data')
                       dev.off()
                       #Word cloud
                       Wpm=sort(rowSums(MegatdmM),decreasing = T)
                       set.seed(2345)
                       wordcloud(words = names(Wpm), freq = Wpm,
                                 colors=brewer.pal(8,"Dark2"),min.freq = 100,
                                 scale=c(4,0.3), random.order = F, rot.per = 0.3)
                       install.packages("wordcloud2")
                       library(wordcloud2)
                       Wpmr=data.frame(names(Wpm), Wpm)
                       colnames(Wpmr)<-c("words", "freq")
                       head(Wpmr)
                       #wordcloud2(Wpmr,size = 2,minRotation = -pi/2,maxRotation = -pi/2,
                       # shape = 'circle',backgroundColor = 'black',
                       #color = rep_len(c('red','yellow','green'),nrow(Wpmr)))
                       
                       wordcloud2(Wpmr,size = 2,shape = 'circle',minRotation = -pi/2,maxRotation = -pi/2,
                                  color = rep_len(c('green','blue','red','black'),nrow(W3b)),
                                  backgroundColor = 'yellow')
                       
                       
                       letterCloud(Wpmr,
                                   word = "p",
                                   size=2)
                       
                       ###########################Sentiment Analysis###################$$$$$$$$$$$$$$$$$#######################
                       install.packages('ggraph')
                       install.packages('igraph')
                       require(ggraph)
                       require(igraph)
                       install.packages('tidytext')
                       install.packages('lubridate')
                       require(tidytext)       
                       require(syuzhet)
                       require(lubridate)
                       require(reshape2)
                       require(scales)
                       airlinesdata<-unlist(a1)
                       airlinesdata[1]
                       S1=get_nrc_sentiment(airlinesdata)
                       head(S1)
                       S1$Airlines=c('Air Canada','Air China','American Airlines','China Southern',
                                     'Norwegian Air','Southwest Airlines')
                       S1
                       data.S1 <- melt(S1, id.vars='Airlines')
                       pdf('plot1.pdf')
                       ggplot(data.S1, aes(Airlines, value)) +   
                         geom_bar(aes(fill = variable), position = "dodge", stat="identity")+
                         ggtitle('Sentiment scores plots for different Airlines')+
                         theme(plot.title = element_text(hjust = 0.5))+
                         theme(axis.text.x = element_text(angle = 90, hjust = 1))+
                         coord_flip()
                       dev.off()
                       
                       boeingdata<-unlist(a2)
                       boeingdata[1]
                       S2=get_nrc_sentiment(boeingdata)
                       head(S2)
                       S2$Boeing=c('Boeing Company')
                       S2
                       data.S2 <- melt(S2, id.vars='Boeing')
                       pdf('plot2.pdf')
                       ggplot(data.S2, aes(Boeing, value)) +   
                         geom_bar(aes(fill = variable), position = "dodge", stat="identity")+
                         ggtitle('Sentiment scores plots for Boeing Company')+
                         theme(plot.title = element_text(hjust = 0.5))+
                         theme(axis.text.x = element_text(angle = 90, hjust = 1))+
                         coord_flip()
                       dev.off()
                       
                       MediaPublic<-unlist(a3)
                       MediaPublic[1]
                       S3=get_nrc_sentiment(MediaPublic)
                       head(S3)
                       S3$Entity=c('BBC','CNN','The independent','New York Times',
                                   'Public','SKY','The Guardian')
                       S3
                       data.S3 <- melt(S3, id.vars='Entity')
                       
                       pdf('plot3.pdf')
                       ggplot(data.S3, aes(Entity, value)) +   
                         geom_bar(aes(fill = variable), position = "dodge", stat="identity")+
                         ggtitle('Sentiment scores plots for different Communication media and the public')+
                         theme(plot.title = element_text(hjust = 0.5))+
                         theme(axis.text.x = element_text(angle = 90, hjust = 1))+
                         coord_flip()
                       dev.off()
                       
                       file.choose()
                       FolderMax="/Users/mac/Desktop/Data Mining /Data mining with R/Boeing/Max731"
                       list.files(path = FolderMax)
                       filelist=list.files(path = FolderMax,pattern = "*.txt")
                       filelist=paste(FolderMax,"/",filelist,sep = "")
                       filelist
                       Max=lapply(filelist,FUN=readLines)
                       Max=lapply(Max,FUN=paste,collapse=" ")
                       Max731a=Max
                       str(Max731a)
                       
                       Max731c<-unlist(Max731a)
                       str(Max731c)
                       S4=get_nrc_sentiment(Max731c)
                       S4
                       S4$Entity=c('Air Canada','Air China','American Airline','China Southern',
                                   'Norwegian Air','Southwest Airline','Public','CNN','BBC',
                                   'The Independent','SKY','New York Times','The Guardian',
                                   'Boeing')
                       S4
                       data.S4 <- melt(S4, id.vars='Entity')
                       pdf('plot4n.pdf')
                       ggplot(data.S4, aes(Entity, value)) +   
                         geom_bar(aes(fill = variable), position = "dodge", stat="identity")+
                         ggtitle('Sentiment scores plots for boeing 737 Max')+
                         theme(plot.title = element_text(hjust = 0.5))+
                         theme(axis.text.x = element_text(angle = 90, hjust = 1))+
                         coord_flip()
                       dev.off()
                       
                       ##################################################
                       Mostfriquentlyterms=findFreqTerms(MegatdmA,lowfreq = 800)
                       Mostfriquentlyterms
                       CorrelationA<-findAssocs(MegatdmA,'ground',0.80)
                       CorrelationA
                       CorrelationA1<-findAssocs(MegatdmA,'will',0.88)
                       CorrelationA1
                       #################
                       rm(list = ls())
                       #Initialization
                       libs<-c('tm','plyr','class')
                       lapply(libs, require, character.only=TRUE)
                       #Set options
                       options(stringsAsFactors = FALSE)
                       ########################################### KNN predictive model############################################ 
                       #Set parameters
                       candidates<-c('Airlines','Boeing','CommunicationMedia')
                       pathname<-"/Users/mac/Desktop/Data Mining /Data mining with R/Airlines/Max731"
                       
                       #Cleaning
                       Cleancorpus<-function(corpus){
                         corpus.tmp<-tm_map(corpus,tolower)
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub("#\\S+", "", x))
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub("http\\S+", "", x))
                         corpus.tmp<- tm_map(corpus.tmp, removeNumbers)
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub("[?!,.]", ".", x))
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub("[^[:alnum:][:space:].]", "", x))
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub(" \\.", ".", x))
                         corpus.tmp<- tm_map(corpus.tmp, function(x) gsub("\\. ", ".", x))
                         corpus.tmp<-tm_map(corpus.tmp, removePunctuation)
                         corpus.tmp<-tm_map(corpus.tmp, removeWords, c('rt'))
                         corpus.tmp=tm_map(corpus.tmp,function(x) gsub(pattern="\\b[A-z]\\b{1}",replace=" ", x))
                         corpus.tmp<-tm_map(corpus.tmp, removeWords, stopwords('english'))
                         corpus.tmp<-tm_map(corpus.tmp,stemDocument,language='english')
                         corpus.tmp<-tm_map(corpus.tmp, removeWords,c("max","boeing","crash","crashed","boeings","crashes"))
                         corpus.tmp<-tm_map(corpus.tmp, removePunctuation)
                         corpus.tmp<-tm_map(corpus.tmp, stripWhitespace)
                         #corpus.tmp <- Corpus(VectorSource(corpus.tmp))
                         return(corpus.tmp)
                       }
                       
                       #Building tdm
                       generateTDM<-function(cand, path){
                         t.dir<-sprintf('%s/%s', path,cand)
                         t.cor<-Corpus(DirSource(directory = t.dir, encoding = "UTF-8"))
                         t.cor.clean<-Cleancorpus(t.cor)
                         #t.cor.clean<-Corpus(VectorSource(t.cor.clean))
                         t.tdm.clean<-TermDocumentMatrix(t.cor.clean)
                         t.tdm.clean<-removeSparseTerms(t.tdm.clean, 0.7)
                         resulti<-list(name=cand, tdm=t.tdm.clean)
                       }
                       tdm<-lapply(candidates,generateTDM,path=pathname)
                       str(tdm)
                       
                       #Attach names
                       BindcandidatetoTDM<-function(tdm){
                         t.mat<-t(data.matrix(tdm[['tdm']]))
                         t.df<-as.data.frame(t.mat,stringsAsFactors=F)
                         t.df<-cbind(t.df,rep(tdm[['name']],nrow(t.df)))
                         colnames(t.df)[ncol(t.df)]<-'targetcandidate'
                         return(t.df)
                       }
                       
                       bindCandidateToTDM <- function(tdm) {
                         t.mat <- t(data.matrix(tdm[["tdm"]]))
                         t.df <- as.data.frame(t.mat, stringsAsFactors = FALSE)
                         
                         t.df <- cbind(t.df, rep(tdm[["name"]], nrow(t.df)))
                         colnames(t.df)[ncol(t.df)] <- "targetcandidate"
                         return(t.df)
                       }
                       candTDM <- lapply(tdm, bindCandidateToTDM)
                       
                       CandTDM<-lapply(tdm,BindcandidatetoTDM)
                       str(candTDM)
                       candTDM
                       #stack the data frame
                       tdm.stack <- do.call(rbind.fill, candTDM)
                       tdm.stack[is.na(tdm.stack)] <- 0
                       
                       # hold out
                       train.idx <- sample(nrow(tdm.stack), ceiling(nrow(tdm.stack) * 0.7))
                       test.idx <- (1:nrow(tdm.stack)) [- train.idx]
                       
                       # model – KNN
                       tdm.cand <- tdm.stack[, "targetcandidate"]
                       tdm.stack.nl <- tdm.stack[, !colnames(tdm.stack) %in% "targetcandidate"]
                       
                       knn.pred <- knn(tdm.stack.nl[train.idx, ], tdm.stack.nl[test.idx, ], tdm.cand[train.idx])