$Headers=@{}
$Headers.Add("X-RapidAPI-Key", "")
$Headers.Add("X-RapidAPI-Host", "indeed-jobs-api.p.rapidapi.com")

$Endpoint = 'https://indeed-jobs-api.p.rapidapi.com/indeed-us/?offset=0&keyword=powershell&location=florida'
$Results = Invoke-WebRequest -Uri $Endpoint -Method GET -Headers $Headers

foreach ($Result in $Results){

Write-Host $Result | Select company_name, job_title, salary

}
