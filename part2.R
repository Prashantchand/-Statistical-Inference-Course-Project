data(ToothGrowth)
str(ToothGrowth)
vc<-ToothGrowth[ToothGrowth$supp=="VC",]$len
oj<-ToothGrowth[ToothGrowth$supp=="OJ",]$len
t.test(oj,vc,alternative="two.sided",paired=FALSE)


