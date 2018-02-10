library('stringr')
library('tidyr')
library('ggplot2')
library('scales')
Data=read.csv('Data_table.csv')
colnames(Data)=c('Institution','ProgramDetail','DecisionDate','Status','DataAddedDate','Note')
Data=subset(Data,Data$Institution!='Institution')
Final_Data=separate(Data,DecisionDate,into = c('Decision','Date'),sep = 'via',remove = T)
Final_Data=separate(Final_Data,Date,into = c('Method','Date'),sep = ' on ',remove = T)
Final_Data=separate(Final_Data,Date,into = c('Date','Misc'),sep = ' Undergrad ',remove = T)
Final_Data$Misc=NULL
Final_Data$Note=NULL
Final_Data$Status=NULL
Final_Data$DataAddedDate=NULL
Rust=as.matrix(Final_Data[,2])
for (i in 1:nrow(Rust)) {
  Rust[i,]=gsub('PhD \\(','/ PhD \\(',Rust[i,])
  Rust[i,]=gsub('Masters \\(','/ Masters \\(',Rust[i,])
  Rust[i,]=gsub('Other \\(','/ Other \\(',Rust[i,])
  Rust[i,]=gsub('\\(\\?','/ \\(\\?',Rust[i,])
  Rust[i,]=gsub('\\(F','/ \\(F',Rust[i,])
  Rust[i,]=gsub('\\(S','/ \\(S',Rust[i,])
} #Use to separate the Program and Degree#
rm(i)
Rust=as.data.frame(Rust)
Rust=separate(Rust,V1,into = c('Program','Degree','Season'),sep = '/',remove = T)
for (i in 1:nrow(Rust)) {
  Rust[i,1]=gsub('\\(','',Rust[i,1])
  Rust[i,1]=gsub('\\)','',Rust[i,1])
  Rust[i,1]=gsub('\\,','',Rust[i,1])
}
rm(i)
Rust=as.matrix(cbind(Rust,Final_Data$Date))
colnames(Rust)=c('Program','Degree','Season','Date')
Rust=as.data.frame(Rust)
Rust=separate(Rust,Date,c('day','month','year'),sep = ' ',remove = T)
Rust$Date=paste(Rust$day,Rust$month,' ')
Rust$day=NULL
Rust$month=NULL
Rust$Date=format(Rust$Date,format='%b %d')
Rust$converted=as.Date(Rust$Date,'%d %b')
Rust$decision=Final_Data$Decision
Rust=na.omit(Rust)
png('FrequencyAnalysis_PHD_MASTER.png')
ggplot(Rust,aes(x=converted,fill = Degree))+geom_histogram(binwidth=10, colour="white")+scale_x_date(labels = date_format("%d-%b"), breaks =seq(min(Rust$converted)-1, max(Rust$converted)+1, 10))+theme(axis.text.x = element_text(angle = 90, hjust = 1,size = 10))+xlab('Date')+ylab('Frequency')
dev.off()
png('FrequencyAnalysis_Decision.png')
ggplot(Rust,aes(x=converted,fill = decision))+geom_histogram(binwidth=10, colour="white")+scale_x_date(labels = date_format("%d-%b"), breaks =seq(min(Rust$converted)-1, max(Rust$converted)+1, 10))+theme(axis.text.x = element_text(angle = 90, hjust = 1,size = 10))+xlab('Date')+ylab('Frequency')
dev.off()
png('FrequencyAnalysis_EachYear_boxplot.png')
ggplot(Rust,aes(x = year,y=converted,fill=year))+geom_boxplot()+scale_y_date(labels = date_format("%d-%b"), breaks =seq(min(Rust$converted)-1, max(Rust$converted)+1, 10))+theme(axis.text.x = element_text(angle = 90, hjust = 1,size = 10))+xlab('Date')+ylab('Frequency')
dev.off()