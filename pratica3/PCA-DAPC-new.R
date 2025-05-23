# Instala e carrega apenas os pacotes necessários
pacotes <- c("adegenet", "ade4", "ape", "FactoMineR", "factoextra", "ggplot2")
instalar <- pacotes[!pacotes %in% installed.packages()]
if(length(instalar) > 0) install.packages(instalar)
lapply(pacotes, library, character.only = TRUE)

# Lê os dados genéticos no formato FASTA
seqs <- read.dna("Caso1.fasta", format = "fasta")

# Converte sequência em objeto genind
gen <- DNAbin2genind(seqs)

# PCA a partir da matriz genética
pca <- PCA(X = gen, scale.unit = TRUE, graph = FALSE)

# Screeplot: variância explicada por cada componente
fviz_screeplot(pca, addlabels = TRUE, ylim = c(0, 70), main = "", xlab = "", ylab = "")

# Armazena % de variância explicada pelos 2 primeiros eixos
pc1_var <- round(pca$eig[1, "percentage of variance"], 2)
pc2_var <- round(pca$eig[2, "percentage of variance"], 2)

# Gráfico PCA com cores por espécie
fviz_pca_biplot(pca, label = "ind", geom.var = "none",
                pointshape = 21, pointsize = 5) +
  labs(x = paste0("PC1 (", pc1_var, "%)"), 
       y = paste0("PC2 (", pc2_var, "%)")) +
  theme_bw()

# Encontra número ótimo de clusters com k-means (com base na PCA)
k2 <- find.clusters(gen, clust = NULL)

# DAPC com base nos grupos definidos
dapc2 <- dapc(gen, k2$grp)

# Plota scatterplot da DAPC (grupos encontrados)
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

# Plota compoplot da DAPC com rótulos por espécie
compoplot(dapc2,
          show.lab = TRUE,
          cex.lab = 1,
          cex.names = 1,
          legend = FALSE)
