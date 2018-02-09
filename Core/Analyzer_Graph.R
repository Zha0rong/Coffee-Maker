# Title     : TODO
# Objective : TODO
# Created by: zha0rong
# Created on: 2/4/18
library('stringr')
library('tidyr')
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
Final_Data$ProgramDetail=Rust
