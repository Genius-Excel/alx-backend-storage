-- This SWL script ranks band named 'Glam Rock' by their longetivity.

CREATE OR REPLACE VIEW band_lifespan AS
SELECT band_name,
	CASE
	   WHEN split IS NULL THEN 2022 - formed
	   ELSE split - formed
	END AS lifespan
FROM metal_bands WHERE style = 'Glam Rock';

-- Query to get combined result.
SELECT band_name, lifespan FROM band_lifespan ORDER BY lifespan DESC;
