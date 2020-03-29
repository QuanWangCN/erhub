mean.abr.d00=c(52.74509804,30.68627451,17.25490196,17.05882353,30.49019608,52.15686275)
mean.abr.d07=c(84.23076923,66.15384615,56.92307692,56.53846154,68.46153846,82.69230769)
mean.abr.d14=c(81.25, 64.375, 55.625, 54.375, 68.75,    82.5)
mean.abr.d28=c(90.5,76, 67, 66.5, 73.5, 91)
mean.abr.d56=c(100,90,72.5,77.5,87.5,100)
s0=data.frame(mean.abr.d00,mean.abr.d07,mean.abr.d14,mean.abr.d28,mean.abr.d56)
rownames(s0)=c("Freq04K","Freq08K","Freq12K","Freq16K","Freq24K","Freq32K")
library(pheatmap)
pheatmap(mat = s0,cluster_rows = F,cluster_cols = F,
         color=colorRampPalette(c("blue","red"))(100),
         fontsize_row=8,
         fontsize_col=8,
         scale="none",
         cellheight=10,
         cellwidth=15)

mean.hc.d00=c(80,90,80)
mean.hc.d07=c(50,40,30)
mean.hc.d14=c(30,30,20)
mean.hc.d28=c(20,28,25)
mean.hc.d56=c(18,25,23)
s1=data.frame(mean.hc.d00,mean.hc.d07,mean.hc.d14,mean.hc.d28,mean.hc.d56)
rownames(s1)=c("Apical","Middle","Basal")
pheatmap(mat = s1,cluster_rows = F,cluster_cols = F,
         color=colorRampPalette(c("red","blue"))(100),
         fontsize_row=8,
         fontsize_col=8,
         scale="none",
         cellheight=10,
         cellwidth=15)
mean.sgn.d00=c(3000,3200,3300)
mean.sgn.d07=c(3001,3150,3150)
mean.sgn.d14=c(2980,3100,3101)
mean.sgn.d28=c(2600,2700,2500)
mean.sgn.d56=c(2200,2200,2100)
s2=data.frame(mean.sgn.d00,mean.sgn.d07,mean.sgn.d14,mean.sgn.d28,mean.sgn.d56)
rownames(s2)=c("Apical","Middle","Basal")

