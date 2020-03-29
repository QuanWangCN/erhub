library(pheatmap)
mean.hc.d00=c(75.86,86.21,80.17)
mean.hc.d07=c(48.21,37.5,39.29)
mean.hc.d14=c(70.83,33.33,45.83)
mean.hc.d28=c(59.38,31.25,21.88)
mean.hc.d56=c(16.67,16.67,25)
s1=data.frame(mean.hc.d00,mean.hc.d07,mean.hc.d14,mean.hc.d28,mean.hc.d56)
rownames(s1)=c("Apical","Middle","Basal")
pheatmap(mat = s1,cluster_rows = F,cluster_cols = F,
         color=colorRampPalette(c("red","blue"))(100),
         fontsize_row=8,
         fontsize_col=8,
         scale="none",
         cellheight=10,
         cellwidth=15)
pdf(file = "aabba.pdf")
pheatmap(mat = s1,cluster_rows = F,cluster_cols = F,
         color=colorRampPalette(c("red","blue"))(100),
         fontsize_row=8,
         fontsize_col=8,
         scale="none",
         cellheight=10,
         cellwidth=15)
graphics.off()