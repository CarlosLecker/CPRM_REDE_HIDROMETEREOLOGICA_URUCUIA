#CABEÇALHO----------------------------------------------------------------------
# SEI-BAHIA
# DIGEO/CRNA
# ESTAGIÁRIO - CARLOS ALBERTO ARAÚJO PEREIRA
# TEMA: PROJETO BALANÇO HÍDRICO DO ESTADO DA BAHIA
# FONTE DOS DADOS: INMET 1991 - 2021 
#CODIFICAÇÃO ORIGINAL ISO-8859-1 CODIFICAÇÃO DO PROJETO UTF-8
#PACOTES NECESSÁRIOS------------------------------------------------------------
if (!require(dplyr))
  install.packages("dplyr")
if (!require(magrittr))
  install.packages("magrittr")
if (!require(forcats))
  install.packages("forcats")
if (!require(tidyr))
  install.packages("tidyr")
if (!require(lubridate))
  install.packages("lubridate")
if (!require(readxl))
  install.packages("readxl")

#CARREGANDO OS PACOTES----------------------------------------------------------
library(tidyr)
library(magrittr)
library(dplyr)
library(lubridate)
library(readxl)
library(stringr)

#ALIMENTANDO A BASE DE DADOS----------------------------------------------------

BASE <- read.csv2("BASE_2000_2001.CSV", encoding = "UTF-8") %>% arrange(MES)
