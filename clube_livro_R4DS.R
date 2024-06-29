
# Clube do Livro R for Data Science (2ed) --------------------------------------------------------------------------------------------------
# Encontro 4: Fluxo de trabalho (Parte 2) --------------------------------------------------------------------------------------------------
# Mediadoras: Beatriz Milz e Karina Ferrara Barros -----------------------------------------------------------------------------------------
# Data: 28/06/2024 -------------------------------------------------------------------------------------------------------------------------

# Capítulo 8 - Fluxo de Trabalho: obtendo ajuda --------------------------------------------------------------------------------------------

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

### Outros pacotes:

pacotes_antigos <- old.packages()

### Dica: Tools > Check for Package Updates

### b) Simplificar: usar dados do próprio R, inserir comentários, remover o que
### não é relacionado ao problema. Cuidado com seus dados oficiais, use exemplos.

# Incluir os dados -------------------------------------------------------------------------------------------------------------------------

dput(mtcars) # Fornece os dados para selecionar e copiar

library(reprex)
reprex()

### Dados do R ou do pacote dados

### Copia apenas os dados ou coluna necessária para resolver o problema

library(dados)
pinguins
starwars
diamante
mtcarros
mtcars

# Indicações para acompanhar  --------------------------------------------------------------------------------------------------------------

## Blog do Tidyverse: https://www.tidyverse.org/blog/
## R Weekly: https://rweekly.org/
## Curso-R (lives sobre atualizações): https://www.instagram.com/cursoo_r/

# Capítulo 4 - Fluxo de Trabalho: estilo de código -----------------------------------------------------------------------------------------

## Guia de estilo tidyverse: https://style.tidyverse.org/
## É uma convenção de estilo de código
## Facilita a leitura de outras pessoas, para você mesmo no futuro e para
## pedir ajuda

## Pacote styler:

library(styler)

### Comando do R Studio: ctrl/cmd + shift + p
### Seleciona o código > ctrl/cmd + shift + p > Pesquisa style > Style selection 
### Botão Addins também econtra o Style de forma fácil

x<-("estilo") # Código desorganizado

x <- ("estilo") # Após o Style selection, ele organiza seu código

### Style active file: organiza todo o código do script

## Para nomes:

### Usar minúsculas e _
### Não alternar minúsculas e maiúsculas

### Evite escrever assim:
VOOSCURTOS <- voos |> filter(tempo_voo < 60)

### Tente escrever assim:
voos_curtos <- voos |> filter(tempo_voo < 60)

## Sobre espaços:

### Tente escrever assim:
z <- (a + b)^2 / d # Espaço em ambos os lados dos operadores, exceto ^

### Evite escrever assim:
z <- ( a + b ) ^ 2/d # Não coloque espaços dentro ou froa de parênteses

### Tente escrever assim:
mean(x, na.rm = TRUE) # Espaço após a vírgula sempre como na gramática

### Evite escrever assim:
mean(x,na.rm = TRUE)

