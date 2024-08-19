MERGE TargetProducts AS Target
    USING SourceProducts	AS Source
    ON Source.ProductID = Target.ProductID
    
    -- For Inserts
    WHEN NOT MATCHED BY Target THEN
        INSERT (ProductID,ProductName, Price) 
        VALUES (Source.ProductID,Source.ProductName, Source.Price)
    
    -- For Updates
    WHEN MATCHED THEN UPDATE SET
        Target.ProductName	= Source.ProductName,
        Target.Price		= Source.Price;