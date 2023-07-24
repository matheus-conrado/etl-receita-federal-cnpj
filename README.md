# ETL Receita Federal - CNPJ

## Introdução

Este projeto tem como finalidade coletar os dados do Cadastro Nacional da Pessoa Jurídica (CNPJ) que é um banco de dados gerenciado pela Secretaria Especial da Receita Federal do Brasil (RFB), Estes dados se tratam de dados cadastrais das pessoas jurídicas e outras entidades de interesse das administrações tributárias da União, dos Estados, do Distrito Federal e dos Municípios. No portal a periodicidade de atualização dos dados é mensal.

## Desenho da Arquitetura 

## Tecnologias Utilizadas

Para este projeto foram utilizados as seguintes tecnologias:
- Spark
- Python
- AWS:
  - S3
- Docker

## Arquivos do projeto 

+ ``receita_federal_extract_files.ipynb``: Este arquivo tem como principal objetivo acessar o link da api do portal de dados abertos e coletar os arquivos brutos para posteriormente serem processados.
+ ``receita_federal_transform_files.ipynb``: Este arquivo tem como principal objetivo extrair os arquivo que foram baixados no processo de extração, e aplicar uma modelagem prévia baseado nos schemas fornecidos na pasta ``schemas/`` a função ``_build_schema`` coleta o tipo de schema a ser aplicado nos dados e passa para a função de schema do Spark, com isso temos uma padronização seguindo o [dicionário de dados da RFB](https://www.gov.br/receitafederal/dados/cnpj-metadados.pdf).
+ ``receita_federal_load_files.ipynb``: Este arquivo tem como objetivo carregar os dados que foram tratados no processo do script ``receita_federal_transform_files.ipynb``. Nesta etapa podemos escolher dois métodos de carga. O primeiro seria baseada no schema fornecido, já realizar o envio dos dados para o Kafka que posteriormente poderia replicar para uma base de dados, ou realizar a gravação destes registros em um sistema de armazenamento de objetos como o S3 da AWS por exemplo.

## Fonte dos dados

Os dados foram coletados do portal de dados aberto do governo federal na seção de [Cadastro Nacional da Pessoa Jurídica - CNPJ](https://dados.gov.br/dados/conjuntos-dados/cadastro-nacional-da-pessoa-juridica---cnpj). Nos arquivos podemos ter acesso aos dados abertos sobre Cnaes, Empresas, Estabelecimentos, Motivos, Municipio, Naturezas, Paises, Qualificacoes, Simples Nacional e Socios.

## Considerações

Com este projeto agora temos informações precisas para decisões estratégicas. Este projeto continua em aperfeiçoamento, para se adaptar às mudanças estruturais e incorporar novos dados. Estou muito empolgado com o futuro e as oportunidades que surgirão.
