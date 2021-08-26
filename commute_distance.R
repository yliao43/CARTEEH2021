setwd('C:/Users/uwmly/Desktop/CE-CERT/CARTEEH')
commute1 = read.csv('commute1_mx.csv')
commute2 = read.csv('commute2_mx.csv')
commute3 = read.csv('commute3_mx.csv')

commute1 = commute1[which(commute1$distance < 160000),]
commute2 = commute2[which(commute2$distance < 160000),]
commute3 = commute3[which(commute3$distance < 160000),]

commute1$far = ifelse(commute1$distance<40000,'0-40',ifelse(commute1$distance>=40000 & commute1$distance<80000,'40-80',
                                                           ifelse(commute1$distance >=80000 & commute1$distance<120000,'80-120','120-160')))
commute2$far = ifelse(commute2$distance<40000,'0-40',ifelse(commute2$distance>=40000 & commute2$distance<80000,'40-80',
                                                           ifelse(commute2$distance >=80000 & commute2$distance<120000,'80-120','120-160')))
commute3$far = ifelse(commute3$distance<40000,'0-40',ifelse(commute3$distance>=40000 & commute3$distance<80000,'40-80',
                                                           ifelse(commute3$distance >=80000 & commute3$distance<120000,'80-120','120-160')))

write.csv(commute1,'commute1_mx_1.csv',row.names = F)
write.csv(commute2,'commute2_mx_2.csv',row.names = F)
write.csv(commute3,'commute3_mx_3.csv',row.names = F)