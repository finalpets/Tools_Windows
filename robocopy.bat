@ECHO OFF
SETLOCAL
SET _source=C:\Users\Giscela\Desktop\PETS\TEST

SET _dest=C:\Users\Giscela\Desktop\PETS\copy

SET _what=/COPYALL /MIR
:: /COPYALL :: COPY ALL file info
:: /B :: copy files in Backup mode.:: /MIR :: MIRror a directory tree
SET _options=/R:0 /W:0 /LOG:C:\batch\RoboLog.txt /NFL /NDL
:: /R:n :: number of Retries
:: /W:n :: Wait time between retries
:: /LOG :: Output log file
:: /NFL :: No file logging
:: /NDL :: No dir logging
ROBOCOPY %_source% %_dest% %_what%
