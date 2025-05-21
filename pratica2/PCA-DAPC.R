# Instala e carrega apenas os pacotes necessários
pacotes <- c("adegenet", "ade4", "ape", "FactoMineR", "factoextra", "ggplot2")
instalar <- pacotes[!pacotes %in% installed.packages()]
if(length(instalar) > 0) install.packages(instalar)
lapply(pacotes, library, character.only = TRUE)

# Lê os dados genéticos no formato FASTA
seqs <- read.dna("Saccocirrus.fasta", format = "fasta")

# Converte sequência em objeto genind
gen <- DNAbin2genind(seqs)

# Lê a tabela com os metadados
samples <- read.table("Saccocirrus-codes.txt", sep = "\t", header = TRUE)

# PCA a partir da matriz genética
pca <- PCA(X = gen, scale.unit = TRUE, graph = FALSE)

# Screeplot: variância explicada por cada componente
fviz_screeplot(pca, addlabels = TRUE, ylim = c(0, 70), main = "", xlab = "", ylab = "")

# Armazena % de variância explicada pelos 2 primeiros eixos
pc1_var <- round(pca$eig[1, "percentage of variance"], 2)
pc2_var <- round(pca$eig[2, "percentage of variance"], 2)

# Gráfico PCA com cores por espécie
png("PCA.png", width = 1600, height = 1200, res = 200, units = 'px')
fviz_pca_biplot(pca, label = "none", geom.var = "none",
                fill.ind = as.factor(samples$Local),
                pointshape = 21, pointsize = 5) +
  labs(x = paste0("PC1 (", pc1_var, "%)"), 
       y = paste0("PC2 (", pc2_var, "%)")) +
  theme_bw()
dev.off()

# Encontra número ótimo de clusters com k-means (com base na PCA)
# escolha 7 PCs
k2 <- find.clusters(gen, clust = NULL)

# DAPC com base nos grupos definidos
# escolha 7 PCs
dapc2 <- dapc(gen, k2$grp)

# Plota scatterplot da DAPC (grupos encontrados)
png("DAPC-groups.png", width = 1200, height = 1200, units = "px", res = 250)
scatter(dapc2,
        cex = 1.8,
        clabel = 1,
        legend = FALSE,
        posi.leg = "topright",
        posi.da = "topright",
        posi.pca = "bottomright",
        scree.da = FALSE,
        scree.pca = FALSE,
        pch = c(15, 16, 17, 18),
        xax = 1, yax = 2,
        ratio.pca = 0.2)
dev.off()

# Plota compoplot da DAPC com rótulos por espécie
png("DAPC-compoplot.png", width = 1200, height = 700, units = "px", res = 200)
compoplot(dapc2,
          show.lab = TRUE,
          lab = samples$Local,
          cex.lab = 0.8,
          cex.names = 0.35,
          legend = FALSE)
dev.off()

# DAPC diretamente com espécies como grupos
dapc3 <- dapc(gen, samples$Local)

# Scatterplot da DAPC por espécie
png("DAPC-species.png", width = 1200, height = 1200, units = "px", res = 250)
scatter(dapc3,
        cex = 1,
        clabel = 0.55,
        legend = FALSE,
        posi.leg = "topright",
        posi.da = "topright",
        posi.pca = "bottomright",
        scree.da = FALSE,
        scree.pca = FALSE,
        pch = c(15, 16, 17, 18),
        xax = 1, yax = 2,
        ratio.pca = 0.2)
dev.off()

