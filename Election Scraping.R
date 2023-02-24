
library(dplyr)
library(rvest)
library(RSelenium)
library(XML)
library(xlsx)


driver<- rsDriver(port=4569L,browser = "firefox")
remDr <- driver[["client"]]

part_A_1950<-vector(mode="list",length = 73)

## 1950 table 
for(f in 1:73) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1950&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1950[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}

# Converting to excel 
for(i in 1:73){
  a<-part_A_1950[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="tt1.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


# 1954

part_A_1954<-vector(mode="list",length = 74)

for(f in 1:74) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1954&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1954[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
######
for(i in 1:73){
  a<-part_A_1954[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1954.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


######

part_A_1957<-vector(mode="list",length = 77)
for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1957&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1957[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
#####
for(i in 1:77){
  a<-part_A_1957[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1957.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}



#####
part_A_1961<-vector(mode="list",length = 77)

for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1961&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1961[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}

####
for(i in 1:77){
  a<-part_A_1961[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1961.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


part_A_1965<-vector(mode="list",length = 77)

for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1965&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1965[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
####
for(i in 1:77){
  a<-part_A_1965[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1965.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}



part_A_1969<-vector(mode="list",length = 77)

for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1969&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1969[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
for(i in 1:77){
  a<-part_A_1969[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1969.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


part_A_1973<-vector(mode="list",length = 67)

for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1973&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1973[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
for(i in 1:77){
  a<-part_A_1973[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1973.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


part_A_1977<-vector(mode="list",length = 77)

for(f in 1:77) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1977&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1977[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
for(i in 1:77){
  a<-part_A_1977[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1977.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


part_A_1983<-vector(mode="list",length = 7000)

for(f in c(1:93,101:102,601:604,1601:1602,3401:3406,3501:3503,4201:4202,4501:4502,5501:5502,6701:6702)){
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1983&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1983[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}
for(i in c(1:93,101:102,601:604,1601:1602,3401:3406,3501:3503,4201:4202,4501:4502,5501:5502,6701:6702)){
  a<-part_A_1983[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1983.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}






part_A_1987<-vector(mode="list",length = 7000)

for(f in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1987&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1987[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}

for(i in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)){
  a<-part_A_1987[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1987.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}





part_A_1991<-vector(mode="list",length = 7000)

for(f in c(1:93,101:103,601:604,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3409,3501:3504,3801:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1991&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1991[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}


for(i in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)){
  a<-part_A_1991[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1991.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}



part_A_1995<-vector(mode="list",length = 7000)

for(f in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1995&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1995[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}

for(i in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)){
  a<-part_A_1995[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1995.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}


part_A_1999<-vector(mode="list",length = 7000)

for(f in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)) {
  
  
  links<-paste0("https://www.tbmm.gov.tr/develop/owa/secim_sorgu.secim_cevresi_partiler?p_secim_yili=1999&p_il_kodu=",f)
  remDr$navigate(links)
  part_A_1999[[f]]<- htmlParse(remDr$getPageSource()[[1]])%>%readHTMLTable(doc=,header = T)
  
  
  
}

for(i in c(1:93,101:103,601:605,701:702,901:902,1001:1002,1601:1602,2101:2102,2501:2502,2701:2702,3101:3102,3301:3302,3401:3408,3501:3504,3802:3802,4101:4102,4201:4203,4501:4502,4601:4602,5201:5202,5501:5502,5801:5802,6301:6302,6101:6102,6701:6702)){
  a<-part_A_1999[[i]][["NULL"]]
  if (!is.null(a)){
    write.xlsx(a, file="part_adi_1999.xlsx", sheetName = paste(i), 
               col.names = TRUE, row.names = TRUE, append = T)
  }
}
