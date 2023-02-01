
SELECT * 
FROM "main"."csv"."master_table"
WHERE var_name IN ('LEALE', 'APSNO2MEAN', 'APSPM25MEAN')
AND geo = 'L1AD';