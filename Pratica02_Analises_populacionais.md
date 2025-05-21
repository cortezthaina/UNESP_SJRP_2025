# Prática 2 - Análises populacionais
## DAPC/PCA

Para iniciar as análises populacionais, cheque se todos os arquivos necessários constam no diretório 'pratica2'. 

```
labex:project/ $ ls pratica2
```

Devem constar:
```
PCA-DAPC.R
Saccocirrus.arp
Saccocirrus.fasta
Saccocirrus.hap
Saccocirrus.phy
Saccocirrus_popart.txt
Saccocirrus_code.txt
```

Acesse o compilador R por meio do link https://posit.cloud/. Clique em 'Sign up' e inicie uma conta gratuitamente. 
Crie um novo projeto RStudio, conforme o indicado na figura abaixo.                  
  ![image](https://github.com/user-attachments/assets/6e300b1f-5784-46b0-8a05-59e813feedb2)

Ao lado direito inferior da tela, clique em 'Upload' na aba 'Files' conforme abaixo:
  ![image](https://github.com/user-attachments/assets/b54501ff-0b6b-4e41-b439-536507cf2465)            
Faça upload dos arquivos 'PCA-DAPC.R', 'Saccocirrus.fasta' e 'Saccocirrus-codes.txt'.

Clique no arquivo 'PCA-DAPC.R' para abrir o script. Rode-o conforme instruções. 

## Arlequin
Abra o executável 'WinArl35.exe'. Clique em 'Open Project'. Selecione o arquivo 'Saccocirrus.arp'.
Selecione as análises desejadas conforme instruções. Seu painel deve ficar dessa maneira:
![image](https://github.com/user-attachments/assets/dfb01d8e-3214-4a72-b4ab-d2572f8b2b81)

Clique em 'Start'. 
Abra a pasta 'Saccocirrus.res' gerada no diretório de origem. Abra o arquivo "Saccocirrus.xml' em um editor de texto. 

## PopART
Abra o executável 'popart.exe'. Clique no ícone 'Nex'. Permita visualizar todos os tipos de arquivos e selecione 'Saccocirrus_popart.txt'. Vá em Network -> TCS Network. 
Clique no ícone de cores e selecione a paleta desejada. Você deve visualizar o painel desta maneira:
![image](https://github.com/user-attachments/assets/c8122e3e-e7fe-4c41-99ea-e41728f86b92)

Faça as modificações estéticas que desejar conforme instruções. 

## IQ-Tree (Galaxy)
Acesse a plataforma Galaxy em https://usegalaxy.org/. Busque por 'IQTREE' na caixa de busca ao lado direito superior da tela conforme abaixo:          
![image](https://github.com/user-attachments/assets/cca5865c-5458-4855-a54d-72d14b3a9d56)

Selecione a opção 'IQ-TREE'. 
Selecione seu input através dos três pontos na caixa de seleção. 
![image](https://github.com/user-attachments/assets/47710313-7429-4a88-8dfe-dcc7d26704ff)      

Selecione o arquivo em pratica2/Saccocirrus.phy.
Adicione o nome do nosso outgroup: 'Phjouinae'. 
Especifique seu tipo de dataset: DNA.
Seu painel deve ficar dessa forma:
![image](https://github.com/user-attachments/assets/f9e190c9-6a6d-4526-9662-d00b2ac263c6)      

Em boostrap parameters, insira 1000 ultrafast bootstrap replicates:
![image](https://github.com/user-attachments/assets/4e88827d-4a6f-47f8-a142-75d2bb43c624)      

Por fim, clique em 'Run tool'. Aguarde os resultados. 

Quando os resultados estiverem prontos (cerca de 10-15 min), faça download do arquivo 'Report and final tree'. 
![image](https://github.com/user-attachments/assets/9d697790-f111-4931-aee6-5edf29c895f0)

Abra o arquivo e analise. Copia a linha que contém a árvore consenso ao final do arquivo:
![image](https://github.com/user-attachments/assets/a26bef6c-5f2a-4b7e-896f-e3b5b1c0a61e)

Cole em um novo arquivo de texto (.txt) nomeado da forma que preferir. 
Abra o programa Figtree clicando no executável FigTreev1.4.4.exe. Vá em File -> Open. Selecione o arquivo criado. 
Na caixa que pergunta sobre o valor embutido na árvore, escreva BS, que se refere ao valor de bootstrap.
![image](https://github.com/user-attachments/assets/359f0667-b653-4b1d-acfb-550effe53524)

Você deverá ver um painel deste:
![image](https://github.com/user-attachments/assets/59784a2a-b171-4999-9b2a-5659f844de13)


Selecione o terminal 'Phjouinae' e clique em 'Reroot'. Selecione a caixa de Branch Labels e selecione o valor de BS. Analise a árvore.
![image](https://github.com/user-attachments/assets/c3e5c539-2695-4350-aa75-eb2d2bf9592c)


**Caso o Figtree não funcione**, abra a plataforma ETE-Toolkit Tree View em https://etetoolkit.org/treeview/. 
Cole a árvore na caixa do formato newick e clique em View Tree!
![image](https://github.com/user-attachments/assets/9fa7788d-0df6-41ae-a283-c51a58bb8568)



