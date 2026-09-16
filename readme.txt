====================================================================
PROJETO DE BANCO DE DADOS ESPACIAL - SISTEMA DE ROTAS DE EMERGENCIA
====================================================================
Aluno: Miguel Nascimento, Hugo Lins e Julia Aureliano
Professor: Alexandre Grotta
Disciplina: Banco de Dados 2
Estudo de Caso: Município de Hortolândia, SP

--- VISAO GERAL ---
Este projeto demonstra a integração entre PostgreSQL, PostGIS, 
pgRouting e QGIS para a criação de um sistema de roteamento 
dinâmico para a Defesa Civil. O sistema calcula a rota mais 
rápida utilizando o algoritmo de Dijkstra, respeitando o sentido 
das vias (mão única) e desviando de áreas de risco bloqueadas.

--- PRE-REQUISITOS ---
Para executar este projeto, o ambiente precisa ter:
1. PostgreSQL
2. Extensão PostGIS instalada e ativada
3. Extensão pgRouting instalada e ativada
4. QGIS (para visualização da interface geoposicionada)

--- COMO EXECUTAR O PROJETO ---

PASSO 1: RESTAURAR O BANCO DE DADOS
- Crie um novo banco de dados vazio no seu pgAdmin.
- Restaure o arquivo "backup_projeto_incendio.sql". 
- Este backup contem a malha viária extraída via osm2po e as 
  tabelas com as áreas de risco da cidade.

PASSO 2: VISUALIZACAO NO QGIS
- Va em "Banco de Dados > Gerenciador de BD" e conecte com as 
  suas credenciais do PostgreSQL.

PASSO 3: EXECUTANDO O MOTOR DE ROTAS
- Com o Gerenciador de BD aberto, abra a Janela SQL.
- Abra o arquivo "consulta_dijkstra.sql".
  e copie a instrução de calculo de rota.
- Cole na Janela SQL, execute e marque a opção "Carregar como nova 
  camada" selecionando a coluna "geom_way" para renderizar a 
  linha da viatura no mapa.

====================================================================