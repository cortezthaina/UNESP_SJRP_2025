# Prática 1 - Introdução ao Linux, arquivos fasta e fastq
## Acessando o terminal Linux remotamente

Acesse o site https://labex.io/tutorials/linux-online-linux-playground-372915 e clique em 'Practice Now'. Clique no símbolo da Virtual Machine. A tela inicial será essa abaixo:
![image](https://github.com/user-attachments/assets/592820ec-eb0e-412f-b8cc-02cb9ff62c2e)

Dê um double clique em xfce4-terminal. Você deverá ver o terminal dessa maneira:
![image](https://github.com/user-attachments/assets/afa8ca31-1787-4643-8341-6aaaa0d3cf6d)

Em verde, está indicado o nome do seu computador ou servidor (labex). Em azul, o caminho (ou
endereço) no qual você se encontra (project). Para checar o diretório atual o qual você se encontra,
use o comando pwd.

```
tcortez@AcerTCS:~$ pwd
/home/tcortez
```

Para criação de um novo arquivo, podem ser utilizados os comandos touch ou nano. O comando
nano abrirá o arquivo para edição, enquanto o comando touch somente criará o arquivo.
Execute:

```
usuario@DESKTOP-00RFJVC:~$ nano text.txt
```

Será aberto um documento em branco. Digite o seguinte texto:

```
String1~
String2&gt;
string3
string 4
S t r i n g 6
String7String8String9
String*10
```

Para sair do documento pressione Ctrl + x e, em seguida, a tecla Y para salvar a edição e Enter
para sobrescrever o arquivo (caso deseje, no futuro, criar um novo arquivo a partir da edição
feita, aqui o nome do arquivo deve ser modificado). 

Para ver o arquivo de texto criado na tela do terminal, use o comando cat.

```
usuario@DESKTOP-00RFJVC:~$ cat text.txt

String1~
String2&gt;
string3
string 4
S t r i n g 6
String7String8String9
St ring*10
```

Para checar os arquivos contidos no diretório em que você se encontra, use o
comando ls (list). 

```
usuario@DESKTOP-00RFJVC:~$ ls
```

Visualize informações adicionais utilizando os argumentos -l (retorna os resultados em lista), -s
(tamanho dos arquivos), -h (tamanhos em formato mais compreensíveis) e -a (mostra arquivos
ocultos, isto é, cujo nome começa com “.”).

Dentro da pasta atual, liste as pastas existentes usando:

```
usuario@DESKTOP-00RFJVC:~$ ls -l -h -a

total 17K
drwxr-x--- 11 deadg deadg 16 Mar 14 15:55 .
drwxr-xr-x 6 root root 6 Mar 14 15:29 ..
-rw------- 1 deadg deadg 7 Mar 14 15:35 .bash_history
-rw-r--r-- 1 deadg deadg 220 Mar 14 15:29 .bash_logout
-rw-r--r-- 1 deadg deadg 3.7K Mar 14 15:29 .bashrc
drwx------ 2 deadg deadg 3 Mar 14 15:34 .cache
drwxrwxr-x 3 deadg deadg 13 Jun 3 2020 FastQ-Screen-0.14.1
drwxrwxr-x 3 deadg deadg 3 Mar 14 15:49 .local
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:55 pratica1
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:34 pratica2
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:35 pratica3
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:35 pratica4
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:35 pratica5
drwxrwxr-x 2 deadg deadg 2 Mar 14 15:35 pratica6
-rw-r--r-- 1 deadg deadg 807 Mar 14 15:29 .profile
-rw-rw-r-- 1 deadg deadg 209 Mar 14 15:55 .wget-hsts
     1     2   3    4      5      6        7

```
Algo similar ao exemplo acima deve ser exibido.

Essas colunas representam:
1. Permissões
2. Links físicos para este arquivo
3-4. Nome do grupo e de usuário
5. Espaço utilizado pelo arquivo   
6. Momento em que foi feita a última edição       
7. Nome do arquivo.
Cada linha representa um arquivo ou diretório dentro do diretório “Documents/”.


> [!CAUTION]
> No Linux, não se recomenda o uso de espaço, acentos e cedilha em títulos de arquivos ou diretórios. Caso realmente precise criar um diretório com espaço no título, use aspas (ex: “nome o diretório”). Ainda assim, dê preferência ao underline (_) ou outro caractere.


Para encontrar determinada sequência de caracteres alvo (também chamadas de strings), deve-se utilizar o comando grep, o qual realizará um print das linhas que contenham os dados de
busca. Por exemplo, para encontrar apenas as linhas que contenham o texto “String” no arquivo
criado anteriormente (teste.txt), deve-se executar:

```
usuario@DESKTOP-00RFJVC:~$ grep "String" text.txt
String1~
String2&gt;
String7String8String9
```

Contabilize quantas vezes a string desejada aparece

```
usuario@DESKTOP-00RFJVC:~$ grep -c "String" text.txt
String1~
String2&gt;
String7String8String9
```

> [!IMPORTANT]
> Observe que foram identificados somente os termos que iniciavam com letra maiúscula (String). Isto ocorre porque o sistema diferencia, em suas buscas e linhas de comando, caracteres maiúsculos e minúsculos.

## Copiando, movendo e renomeando arquivos e pastas

Para copiar um arquivo, use o comando cp, indicando o nome do arquivo a ser copiado e o nome que a nova cópia terá.

```
usuario@DESKTOP-00RFJVC:~$ cp text.txt copia.txt
```

Para copiar para outro diretório, adicione o caminho desse diretório antes do nome da cópia.

Para remover arquivos, use o comando rm seguido do nome do arquivo que deseja excluir.

```
usuario@DESKTOP-00RFJVC:~$ rm copia.txt
```

> [!CAUTION]
> **Lembre-se, o sistema Linux não alerta ou pede confirmação de exclusão de seus arquivos. Portanto, arquivos excluídos não vão para lixeira ou pastas temporárias e, logo, são perdidos definitivamente, sem possibilidade de recuperação. Sempre tenha um backup dos seus arquivos!**

## Arquivos fasta
### Linux


Para download dos arquivos do github pelo terminal, use o comando git clone:

```
git clone https://github.com/cortezthaina/UNESP_SJRP_2025/
```

Entre no diretório do curso.

```
cd UNESP_SJRP_2025
```

A seguir, vamos entender o que é uma sequência fasta.

Para isso, utilize o comando "cat" para printar o arquivo "seq.fasta".

```
cat seq.fasta
```

Observe que a primeira linha printada contém o o caractere ">" e uma descrição. Esta primeira linha é chamada de header e contém informações sobre a sequência que se seguira no documento. É importante destacar que o header deve estar contido em uma única linha. As linhas que se seguem o header contém a sequência, que neste caso é de DNA. Porém, sequências fasta podem conter sequencias de DNA, RNA e proteínas.

Para contabilizar quantas sequências temos neste arquivo, vamos utilizar do comando 'grep', que identifica linhas com um padrão específico. 

```
grep -c ">" seq.fasta
```

Perceba que o arquivo contém cinco sequencias em formato fasta que obedecem a mesma estrutura do arquivo anterior. Porém as sequências não estão identificadas.

### Windows
Para download dos arquivos do github pelo Windows, clique no item <> Code e, em seguida, em 'Download ZIP'
![image](https://github.com/user-attachments/assets/cd4b4601-9917-4528-8aed-4de180436427)

Abra o arquivo em pratica1/seq.fasta em um editor de texto, preferencialmente Notepad++.
Contabilize as sequências.

### BLAST

Agora, nós vamos tentar identificar estas sequências utilizando a ferramenta BLAST.

Clique no link a seguir: https://blast.ncbi.nlm.nih.gov/Blast.cgi

Perceba que o BLAST possui diferentes ferramentas de busca que podem ser utilizadas de acordo com o tipo de sequência que nós fornecemos como input e do tipo de base de dados.

1. Selecione a opção *Nucleotide BLAST*, já que estamos utilizando sequências de nucleotídeos como input e queremos utilizar a base de dados de nucleotídeos do NCBI.
2. Copie e cole as sequências presentes no arquivo "seq2.fasta" no campo indicando na figura abaixo.

<img width="491" alt="Screen Shot 2023-10-03 at 9 44 10 AM" src="https://github.com/rafaeliwama/STB_bioinformatics/assets/46658489/544f180b-47ce-48b4-aa9b-be6adc75c629">

3. Deixe o restante dos parâmetros como estão e clique em *BLAST*.
4. A página seguinte contém os resultados do *BLAST* da primeira sequência utilizada como input. Observe que os resultados das outras sequências podem ser acessados no campo especificado na figura abaixo.

<img width="652" alt="Screen Shot 2023-10-03 at 9 51 14 AM" src="https://github.com/rafaeliwama/STB_bioinformatics/assets/46658489/4cead7f4-3847-43c0-b10e-df095f3077e1">

5. Para cada sequência, o blast retorna uma série de informações (figura abaixo), pertinentes ao alinhamento entre a sequência que nós fornecemos (query) e as sequências presentes na base de dados (target). O campo descrição (retângulo verde) presente na tabela contém informações sobre a sequência *target*. Observe que a table contém várias informações úteis sobre o alinhamento, como o nome da espécie da qual a sequência foi extraída, informações sobre a identidade da sequência (porcentagem de nucleotídeos idênticos entre a sequência *query* e *target*, e o *e-value*. O valor de *e-value* (retângulo vermelho) é o número de hits, de sequências aleátórias, esperado para um *Score* de um determinado valor. Quanto maior o *Score* menor o e-value. Por exemplo, um e-value de 10 significa que para um score *x*, 10 sequências aleatórias com o mesmo *Score* são esperadas. A lógica do e-value é que sequências homólogas são mais similares do que sequências não homólogas, desta forma, o *Score* de um alinhamento de sequências homólogas serão maiores do que *Scores* entre sequências não homólogas. Nós utilizamos um e-value de 1e-5 (0.00001) como significativo para se estabelecer relações de homologia entre sequências.

<img width="647" alt="Screen Shot 2023-10-03 at 9 52 52 AM" src="https://github.com/rafaeliwama/STB_bioinformatics/assets/46658489/edacf379-2d13-4a99-9b59-7f5ab581f636">

6. Explore as outras abas, como a aba *Alignments* apontada pela seta.
7. Utilizando os resultados do BLAST, qual o nome das espécies às quais as sequências contidas no arquivo *seq.fasta* pertencem?

   
## Arquivo fastq
### Windows
Abra o arquivo em pratica1/ERR12983424_2_fastqc em um editor de texto comum.

Observe que a diferentemente do arquivo fasta, o arquivo em formato fastq não inicia com '>'. Neste caso, os identificadores das sequências são linhas iniciadas por '@'. O arquivo contém, pra cada sequências, quatro linhas que nos fornecem informações de qualidade. São elas:
```
1a linha -> ID da sequência (sequence identifier)
2a linha -> Sequência
3a linha -> ID do quality score (inicia com +)
4a linha -> Quality score
```
Para contabilizar as sequências e avaliar sua qualidade, rodaremos o software FASTQC.

Acesse a plataforma Galaxy em https://usegalaxy.org/. Busque por 'Fastqc' na caixa de busca ao lado direito superior da tela conforme abaixo:          
![image](https://github.com/user-attachments/assets/b9b8e676-4868-4f0f-932f-00c2549664cb)


Selecione a opção 'Fastqc'. 
Selecione seu input através dos três pontos na caixa de seleção. Adicione o formato 'fastq' e clique em 'Start'. 
![image](https://github.com/user-attachments/assets/47710313-7429-4a88-8dfe-dcc7d26704ff)    

Após o upload, clique em 'Run Tool'. Aguarde ~5 minutos e acesse os resultados no painel lateral no link 'Fsastqc Raw Data'
![image](https://github.com/user-attachments/assets/9d79d1ee-1dec-4fa5-96ce-16e3df650d35)

Acesse os resultados contidos no ERR12983424_2_fastq_fastqc.html.

### Linux
Dentro do diretório do curso, em pratica1/, utilize o comando "head" para printar as primeiras 15 linhas do arquivo "ERR12983424_2.fastq".

```
head ERR12983424_2.fastq
```

Observe que a diferentemente do arquivo fasta, o arquivo em formato fastq não inicia com '>'. Neste caso, os identificadores das sequências são linhas iniciadas por '@'. O arquivo contém, pra cada sequências, quatro linhas que nos fornecem informações de qualidade. São elas:
```
1a linha -> ID da sequência (sequence identifier)
2a linha -> Sequência
3a linha -> ID do quality score (inicia com +)
4a linha -> Quality score
```

Arquivos fastq contém quantidades muito altas de sequência, se tornando inviável de visualizar no terminal. Portanto, contabilize quantas linhas o arquivo contém. 

```
wc -l ERR12983424_2.fastq
```

Entretanto, assumindo que cada sequência é representada por 4 linhas, você pode dividir este valor por 4 para obter o número de leituras ou utilizar o grep:

```
grep -c '^@ERR' ERR12983424_2.fastq
```

Uma forma de avaliarmos a qualidade geral de todas as sequências obtidas é por meio da ferramenta FastQC (https://github.com/s-andrews/FastQC). O software utilizará das linhas com quality score (QS) para avaliar a distribuição da qualidade por par de base. 

Para rodar o programa, baixe o diretório que contém o executável.

```
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip
unzip fastqc_v0.12.1.zip
```

Agora, corra a análise com o executável dentro de FastQC/

```
FastQC/fastqc ERR12983424_2.fastq
```

Acesse os resultados contidos no ERR12983424_2_fastq_fastqc.html.

Caso haja algum erro e/ou impossibilidade de rodar o script, abra o arquivo ERR12983424_2_fastqc.html que está no diretório do curso em um navegador de internet e avalie os gráficos. 
