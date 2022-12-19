@Echo off

:: Check for the pressed button 

runas /savecred /user:username@domain.com.br 

call Spooler.bat

timeout 8


exit 
