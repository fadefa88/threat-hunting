$securityServices = @(
    "msmpeng",
    "windefend",
    "mssense",
    "sense",
    "microsoft.tri.sensor",
    "microsoft.tri.sensor.updater",
    "cavp",
    "cb",
    "carbonblack",
    "carbonblackk",
    "cbcomms",
    "cbstream",
    "csfalconservice",
    "csfalconcontainer",
    "csagent",
    "csdevicecontrol",
    "csfalconservice",
    "xagt",
    "xagtnotif",
    "fe_avk",
    "fekern",
    "feelam",
    "fewscservice",
    "ekrn",
    "eguiproxy",
    "egui",
    "eamonm",
    "eelam",
    "ehdrv",
    "ekrnepfw",
    "epfwwfp",
    "ekbdflt",
    "epfw",
    "fsgk32st",
    "fswebuid",
    "fsgk32",
    "fsma32",
    "fssm32",
    "fnrb32",
    "fsaua",
    "fsorsp",
    "fsav32",
    "f-secure gatekeeper handler starter",
    "f-secure network request broker",
    "f-secure webui daemon",
    "fsma",
    "fsorspclient",
    "f-secure gatekeeper",
    "f-secure hips",
    "fsbts",
    "fsni",
    "fsvista",
    "f-secure filter",
    "f-secure recognizer",
    "fses",
    "fsfw",
    "fsdfw",
    "fsms",
    "fsdevcon"
    "ds_agent"
);

$currentServices = Get-Service | Select-Object -Property Name;
foreach ($svc in $currentServices) {
    foreach ($secSvc in $securityServices) {
        if ($svc.Name -like $secSvc) {
            $svcDetails = Get-Service -name $svc.Name | Select-Object -Property Name, DisplayName, Status;
            Write-Host "[!] Security service found:";
            Write-Host "    Service Name:`t", $svcDetails.Name;
            Write-Host "    Display Name:`t", $svcDetails.DisplayName;
            Write-Host "    Status:`t`t", $svcDetails.Status;
            Write-Host "";
        }
    }
}
