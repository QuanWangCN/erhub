xx=read.csv(file = "~/Desktop/20181126001.csv")
batch=c(rep(2,6),rep(3,6),rep(1,10))
group=c("Noise","Noise","Noise","Con","Con","Con","Con","Con","Con","Noise",
        "Noise","Noise","Con","Con","Noise", "Con","Con","Noise","Noise", "Noise",
        "Con","Noise")
xx=xx[!duplicated(xx$ENTREZ_GENE_ID),]
rownames(xx)=xx[,1]
xx=xx[,-1]
sapply(xx, class)#Test whether it is numeric or not

library(WGCNA)
options(stringsAsFactors = FALSE)
allowWGCNAThreads()
traitData = read.csv("~/Desktop/ClinicalTraits.csv")
allTraits=traitData
femaleSamples = rownames(datExpr)
traitRows = match(femaleSamples, allTraits$Mice)
datTraits = allTraits[traitRows, -1]
rownames(datTraits) = allTraits[traitRows, 1]
sampleTree2 = hclust(dist(datExpr), method = "average")
traitColors = numbers2colors(datTraits, signed = FALSE)
# Plot the sample dendrogram and the colors underneath.
plotDendroAndColors(sampleTree2, traitColors,
                    groupLabels = names(datTraits),
                    main = "Sample dendrogram and trait heatmap")

# Define numbers of genes and samples
nGenes = ncol(datExpr)
nSamples = nrow(datExpr)
# Recalculate MEs with color labels
MEs0 = moduleEigengenes(datExpr, moduleColors)$eigengenes
MEs = orderMEs(MEs0)
moduleTraitCor = cor(MEs, datTraits, use = "p");
moduleTraitPvalue = corPvalueStudent(moduleTraitCor, nSamples)

textMatrix = paste(signif(moduleTraitCor, 2), "\n(",
                   signif(moduleTraitPvalue, 1), ")", sep = "")
dim(textMatrix) = dim(moduleTraitCor)
# Display the correlation values within a heatmap plot
labeledHeatmap(Matrix = moduleTraitCor,
               xLabels = names(datTraits),
               yLabels = names(MEs),
               ySymbols = names(MEs),
               colorLabels = FALSE,
               colors = greenWhiteRed(50),
               textMatrix = textMatrix,
               setStdMargins = FALSE,
               cex.text = 0.5,
               zlim = c(-1,1),
               main = paste("Module-trait relationships"))
ModRed=names(datExpr)[moduleColors=="red"]
write.csv(x = names(datExpr)[moduleColors=="grey"],file = "~/Desktop/ModGray.csv")
