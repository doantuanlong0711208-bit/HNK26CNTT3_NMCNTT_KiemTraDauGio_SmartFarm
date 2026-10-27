Write-Output "BAO CAO SU CO HE THONG" > .\backup\bao-cao-su-co.txt
Write-Output "THOI GIAN TAO BAO CAO: 27/10 " >> .\backup\bao-cao-su-co.txt
Write-Output "==============================" >> .\backup\bao-cao-su-co.txt

Get-Content .\log-he-thong.log | Select-String "ERROR|CRITICAL" >> .\backup\bao-cao-su-co.txt

Write-Output "TONG SO SU CO:" >> .\backup\bao-cao-su-co.txt

(Get-Content .\log-he-thong.log | Select-String "ERROR|CRITICAL").count >> .\backup\bao-cao-su-co.txt

