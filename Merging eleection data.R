install.packages("readxl")
install.packages("tidyr")
install.packages("dplyr")
library(readxl)
library(tidyr)
library(dplyr)
part_adi_2011<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/part_adi_2011.xlsx")
part_adi_2011<-part_adi_2011[-c(1:9),-c(1,3:8)]
colnames(part_adi_2011)<-part_adi_2011[1,]
part_adi_2011<-part_adi_2011[-1,]
colnames(part_adi_2011)[1]<-"district_name"
part_adi_2011<-part_adi_2011%>%
  pivot_longer(-district_name, names_to = "part_adi", values_to = "alinan_oy")
year<-rep(2011,times=length(part_adi_2011$part_adi))
part_adi_2011<-cbind(part_adi_2011,year)
#####
part_adi_2015<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/part_adi_2015-1.xlsx")
part_adi_2015<-part_adi_2015[-c(1:9),-c(1,3:8)]
colnames(part_adi_2015)<-part_adi_2015[1,]
part_adi_2015<-part_adi_2015[-1,]
colnames(part_adi_2015)[1]<-"district_name"
part_adi_2015_1<-part_adi_2015%>%
  pivot_longer(-district_name, names_to = "part_adi", values_to = "alinan_oy")
year<-rep("2015-1",times=length(part_adi_2015_1$part_adi))
part_adi_2015_1<-cbind(part_adi_2015_1,year)

##
part_adi_20152<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/part_adi_2015-2.xlsx")
part_adi_20152<-part_adi_20152[-c(1:9),-c(1,3:8)]
colnames(part_adi_20152)<-part_adi_20152[1,]
part_adi_20152<-part_adi_20152[-1,]
colnames(part_adi_20152)[1]<-"district_name"
part_adi_2015_2<-part_adi_20152%>%
  pivot_longer(-district_name, names_to = "part_adi", values_to = "alinan_oy")
year<-rep("2015-2",times=length(part_adi_2015_2$part_adi))
part_adi_2015_2<-cbind(part_adi_2015_2,year)

######
part_adi_2018<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/part_adi_2018.xlsx")
part_adi_2018<-part_adi_2018[-c(1:9),-c(1,3:8)]
colnames(part_adi_2018)<-part_adi_2018[1,]
part_adi_2018<-part_adi_2018[-1,]
colnames(part_adi_2018)[1]<-"district_name"
part_adi_2018<-part_adi_2018%>%
  pivot_longer(-district_name, names_to = "part_adi", values_to = "alinan_oy")
year<-rep(2018,times=length(part_adi_2018$part_adi))
part_adi_2018<-cbind(part_adi_2018,year)
##############
part_adi_2002_2007<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/General_Iller_1961_2018.xlsx")


target<-c(2002,2007)
part_adi_2002_2007<-part_adi_2002_2007%>%filter(year %in% target)
part_adi_2002_2007<-part_adi_2002_2007%>%arrange(year)
part_adi_2002_2007$locale[is.na(part_adi_2002_2007$locale)] <- "aa"
part_adi_2002_2007<-part_adi_2002_2007%>%filter(locale=="aa")
part_adi_2002_2007<-part_adi_2002_2007[,-c(3,5:8)]

part_adi_2002_2007<-part_adi_2002_2007[, -grep("seats", colnames(part_adi_2002_2007))]
lastone<-part_adi_2002_2007
lastone<-lastone[,-3]
year<-lastone$year
lastone<-lastone[,-2]
colnames(lastone)[1]<-"district_name"
lastone<-lastone%>%
  pivot_longer(-district_name,names_to = "part_adi",values_to = "alinan_oy")
part_adi_2002_2007<-lastone
year<-rep(c(2002,2007),each=5508)#####11016/2

lastone<-cbind(lastone,year)
part_adi_2002_2007<-lastone

############################################
od<-read_excel("/Users/ugurcanevci/Dropbox/voting blocs/part_adi_2015-1.xlsx")
od<-od[-c(1:9),-c(1,3:8)]
colnames(od)<-od[1,]
od<-od[-1,]
colnames(od)[1]<-"district_name"
################################################
x1<-part_adi_2015_T$district_name
ord<-od$district_name
f1<-factor(x1,levels = ord)
sort(f1)
last_2015<-part_adi_2015_T[order(f1),]
part_adi_2015_T<-last_2015


adition_data<-rbind(part_adi_2002_2007,part_adi_2011,part_adi_2015_1,part_adi_2015_2,part_adi_2018)
orani<-rep(0,times=(length(adition_data$part_adi)))
adition_data<-cbind(adition_data,orani)
adition_data<-adition_data[,c(1,2,3,5,4)]
###############
write.xlsx(adition_data, file="part_adi_2002_2018.xlsx", 
           col.names = TRUE, row.names = TRUE, append = T)
df_final2<-rbind(df_final,adition_data)
write.xlsx(df_final2, file="part_adi_1950_2018.xlsx", 
           col.names = TRUE, row.names = TRUE, append = T)
