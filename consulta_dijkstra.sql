SELECT rota.seq, ruas.osm_name, ruas.geom_way 
FROM pgr_dijkstra(
    'SELECT id, source, target, cost, reverse_cost FROM hortolandia_2po_4pgr',
    1927, 
    4070, 
    true
) AS rota
JOIN hortolandia_2po_4pgr AS ruas ON rota.edge = ruas.id;