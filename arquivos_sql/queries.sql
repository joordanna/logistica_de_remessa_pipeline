-- observando a tabela completa
SELECT * FROM LogisticsTable;

-- total de registros
SELECT COUNT(*) AS Total_Registros
FROM LogisticsTable;

-- top 10 cidades de origem mais frequentes
SELECT TOP(10) Origin, COUNT(*) AS Total_Envios
FROM LogisticsTable
GROUP BY Origin
ORDER BY Total_Envios DESC;

-- top 10 destinos de origem mais frequentes
SELECT TOP(10) Destination, COUNT(*) AS Total_Envios
FROM LogisticsTable
GROUP BY Destination
ORDER BY Total_Envios DESC;

-- tarifa média por cidade de origem
SELECT Origin, AVG(Tariff) AS Tarifa_Media
FROM LogisticsTable
GROUP BY Origin
ORDER BY Tarifa_Media DESC;

-- total de VAS Charges por destino (taxas por serviços adicionais)
SELECT Destination, SUM(VAS_Charges) AS Total_VAS
FROM LogisticsTable
GROUP BY Destination
ORDER BY Total_VAS DESC;

-- análise de prazo - tempo total entre Receive_Date e Expiry_Date
SELECT 
    Consignment_No,
    DATEDIFF(DAY, Receive_Date, Expiry_Date) AS Dias_Para_Vencer
FROM LogisticsTable;

-- distribuição dos modos de pagamento
SELECT Mode_of_Payment, COUNT(*) AS Total
FROM LogisticsTable
GROUP BY Mode_of_Payment;