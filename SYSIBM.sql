SELECT YEAR (current timestamp) FROM sysibm.sysdummy1;       
SELECT MONTH (current timestamp) FROM sysibm.sysdummy1;      
SELECT DATE (current timestamp) FROM sysibm.sysdummy1;       
SELECT TIME (current timestamp) FROM sysibm.sysdummy1;       
SELECT DAY (current timestamp) FROM sysibm.sysdummy1;        
SELECT HOUR (current timestamp) FROM sysibm.sysdummy1;       
SELECT MINUTE (current timestamp) FROM sysibm.sysdummy1;     
SELECT SECOND (current timestamp) FROM sysibm.sysdummy1;     
SELECT MICROSECOND (current timestamp) FROM sysibm.sysdummy1;
SELECT current date + 2 YEAR FROM sysibm.sysdummy1;                          
SELECT current date + 2 YEAR FROM sysibm.sysdummy1;                          
SELECT current date + 1 YEARS + 10 MONTHS FROM sysibm.sysdummy1;             
SELECT current date + 1 YEARS + 5 MONTHS + 10 DAYS FROM sysibm.sysdummy1;    
SELECT current time + 5 HOURS FROM sysibm.sysdummy1;                         
SELECT current time + 5 HOURS + 3 MINUTES + 10 SECONDS FROM sysibm.sysdummy1;
SELECT days (current date)  - days (date('1960-08-29')) FROM sysibm.sysdummy1;
SELECT TIMESTAMP ('1990-09-02-12.00.00.000000') FROM sysibm.sysdummy1;
SELECT TIMESTAMP ('1990-09-02 12:00:00') FROM sysibm.sysdummy1;       
SELECT DATE ('1990-09-02') FROM sysibm.sysdummy1;                     
SELECT DATE ('02/09/1990') FROM sysibm.sysdummy1;                     
SELECT TIME ('10:00:00') FROM sysibm.sysdummy1; 



SELECT DISTINCT                           
       SUBSTR(GRANTEE, 1, 12) AS PROGRAMA 
,      GRANTEETYPE            AS GRANT    
,      DELETEAUTH             AS DELETE   
,      INSERTAUTH             AS INSERT   
,      SELECTAUTH             AS SELECT   
,      UPDATEAUTH             AS UPDATE   
FROM   SYSIBM.SYSTABAUTH                  
WHERE  TCREATOR = 'DB2GFG'                
AND    GRANTEETYPE = 'P'                  
AND   (GRANTEE LIKE 'GFG%' )              
AND    STNAME = 'SDO_HNRD_OPR_CRD'          
AND   (INSERTAUTH = 'Y'                   
OR    UPDATEAUTH = 'N'                   
OR    SELECTAUTH = 'N'                   
OR    DELETEAUTH = 'N')                  
ORDER  BY 1 ;

SELECT DISTINCT SUBSTR(GRANTEE, 1, 12) AS PROGRAMA 
,      GRANTEETYPE            AS GRANT             
,      DELETEAUTH             AS DELETE            
,      INSERTAUTH             AS INSERT            
,      SELECTAUTH             AS SELECT            
,      UPDATEAUTH             AS UPDATE            
FROM   SYSIBM.SYSTABAUTH                           
WHERE  TCREATOR = 'DB2GFG'                         
AND    GRANTEETYPE = 'P'                           
AND    INSERTAUTH = 'Y'                            
AND   (GRANTEE LIKE 'GFG%' )                       
AND    STNAME = 'OPR_CRD_FNDO_GRTR'                  
ORDER  BY 1  



SELECT *
  FROM SYSIBM.SYSPACKAGE
WHERE NAME LIKE 'GFGP0200%'
ORDER BY NAME;


SELECT HOUR(CURRENT_TIMESTAMP) FROM SYSIBM.SYSTABLES;
SELECT TIME (current timestamp) FROM sysibm.sysdummy1;

SELECT CURRENT TIMESTAMP(2) WITH TIME ZONE 
    FROM SYSIBM.SYSDUMMY1;

SELECT * FROM SYSIBM.SYSTABLES WHERE CREATOR = USER;


