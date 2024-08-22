-- 3-glam_rock.sql

-- Select the database
USE holberton;

-- Select bands with Glam rock as their main style and calculate lifespan
SELECT 
    band_name,
    IFNULL(
        CASE 
            WHEN split IS NULL THEN 2022 - formed
            ELSE split - formed
        END,
        0
    ) AS lifespan
FROM 
    metal_bands
WHERE 
    main_style = 'Glam rock'
ORDER BY 
    lifespan DESC;
