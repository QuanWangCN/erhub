library(pheatmap)
mean.abr.d00=c(52.74,30.68,17.25,17.05,30.49,52.15)
mean.abr.d07=c(84.23,66.15,56.92,56.53,68.46,82.69)
mean.abr.d14=c(81.25, 64.375, 55.625, 54.375, 68.75,82.5)
mean.abr.d28=c(90.5,76, 67, 66.5, 73.5, 91)
mean.abr.d56=c(100,90,72.5,77.5,87.5,100)
s0=data.frame(mean.abr.d00,mean.abr.d07,mean.abr.d14,mean.abr.d28,mean.abr.d56)
rownames(s0)=c("Freq04K","Freq08K","Freq12K","Freq16K","Freq24K","Freq32K")
pheatmap(mat = s0,cluster_rows = F,cluster_cols = F,
         color=colorRampPalette(c("blue","red"))(100),
         fontsize_row=8,
         fontsize_col=8,
         scale="none",
         cellheight=10,
         cellwidth=15)
library(reshape2)
s0$ID=rownames(s0)
s1=melt(s0)
library(ggplot2)
ggplot(data = s1,mapping = aes(x=ID,y=value,group=variable,color=variable))+
  geom_line()
pdf(file = "a1a2.pdf")
ggplot(data = s1,mapping = aes(x=ID,y=value,group=variable,color=variable))+
  geom_line()
graphics.off()