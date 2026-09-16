# Sistema de Rotas de Emergência (Banco de Dados Espacial)

**Estudo de Caso:** Município de Hortolândia, SP  
**Disciplina:** Banco de Dados 2  
**Equipe:**  Hugo Lins, Miguel Nascimento e Julia Aureliano
**Professor:** Alexandre Grotta


## Visão Geral
Este projeto demonstra a integração entre **PostgreSQL, PostGIS, pgRouting e QGIS** para a criação de um sistema de roteamento dinâmico para a Defesa Civil. O sistema calcula a rota mais rápida utilizando o algoritmo de Dijkstra, respeitando o sentido das vias (mão única) e desviando de áreas de risco bloqueadas.

## Pré-requisitos
Para executar este projeto, o ambiente precisa ter:
- PostgreSQL
- Extensão PostGIS instalada e ativada
- Extensão pgRouting instalada e ativada
- QGIS (para visualização da interface geoposicionada)

## Como executar o projeto

### Passo 1: Restaurar o Banco de Dados
1. Crie um novo banco de dados vazio no seu pgAdmin.
2. Restaure o arquivo `backup_projeto_incendio.sql`. 
*(Este backup contém a malha viária extraída via osm2po e as tabelas com as áreas de risco da cidade).*

### Passo 2: Visualização no QGIS
Vá em **Banco de Dados > Gerenciador de BD** e conecte com as suas credenciais do PostgreSQL.

### Passo 3: Executando o Motor de Rotas
1. Com o Gerenciador de BD aberto, abra a Janela SQL.
2. Abra o arquivo `consulta_dijkstra.sql` e copie a instrução de cálculo de rota.
3. Cole na Janela SQL, execute e marque a opção **"Carregar como nova camada"** selecionando a coluna `geom_way` para renderizar a linha da viatura no mapa.
