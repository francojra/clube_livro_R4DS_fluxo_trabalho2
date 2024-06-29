
# Clube do Livro R for Data Science (2ed) --------------------------------------------------------------------------------------------------
# Encontro 4: Fluxo de trabalho (Parte 2) --------------------------------------------------------------------------------------------------
# Mediadoras: Beatriz Milz e Karina Ferrara Barros -----------------------------------------------------------------------------------------
# Data: 28/06/2024 -------------------------------------------------------------------------------------------------------------------------

# Capítulo 8 - Fluxo de trabalho: obtendo ajuda --------------------------------------------------------------------------------------------

# Pesquisando no Google --------------------------------------------------------------------------------------------------------------------

### O Google é bom com mensagens de erro
### Comando para trocar idioma para inglês (pesquisar erro em inglês)
### Google exclusivo para R chamado RSeek

2 + x

Sys.setenv(LANGUAGE = "en")

2 + x

Sys.setenv(LANGUAGE = "pt") 
# Para voltar para português, fecha e abre de novo
# ou clica em session e "Restart R"

# Pesquisando no StackOverflow: https://stackoverflow.com/ ---------------------------------------------------------------------------------

### Incluir tags entre [] para especificar melhor a busca
### Por exemplo, se quer saber sobre o [R], ele filtra apenas R e não Python, SPSS, etc.

## Criar um reprex (exemplo reproduzível)

### Serve para não divulgar seu próprio código e dados
### Pacote reprex

y <- 1:4
mean(y)

reprex::reprex() # Formata em Markdown para colar no StackOverflow ou GitHub

### Para executar o reprex, seleciona e copia o seu código (crtl + c) e 
### dá um run em reprex()
### Isso torna o código mais limpo, com a resposta e fácil dos leitores entenderem
### Valoriza o tempo das pessoas que te ajudam
### Outra forma rápida: seleciona o código > Addins > Reprex selection

# Necessário: ------------------------------------------------------------------------------------------------------------------------------

### a) Tornar reprodutível: incluir pacotes, dados e código. Também, verificar 
### utilização da versão atualizada

### Para tidyverse:

library(tidyverse)
tidyverse_update()

### Outro pacotes:

pacotes_antigos <- old.packages()

### b) Simplificar