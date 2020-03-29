s=read.csv(file = "~/Desktop/Parameter-s2.csv")
s=s[!duplicated(s$ENTREZ),]
FC=-s$log2FoldChange
ID=s$ENTREZ
names(FC)=as.character(ID)
LST=sort(x = FC,decreasing = T)
head(LST)
library(clusterProfiler)
xx.kegg=gseKEGG(geneList = LST,organism = "mmu",pvalueCutoff = 1)
head(xx.kegg)
myexp=data.frame(xx.kegg)
gseaplot(x = xx.kegg, geneSetID = "mmu04620",
         color="#7DE6C2", 
         color.line="#FF6369",
         color.vline='steelblue',
         title=xx.kegg$Description[141])
sessionInfo()