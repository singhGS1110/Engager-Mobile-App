# -----------------------------
# CONFIGURATION - CHANGE THESE
# -----------------------------
$solutionPath = "C:\Office_Work\MobileApp\EngagerMobile.Mariteam.sln"
$sonarProjectKey = "Engager-Mobile-App"
$sonarToken = "sqp_9b7ad92428028a3ad3622a4ac4750f0d87fc8ef4"
$sonarHost = "http://localhost:9000"  # change if remote
$buildConfig = "Debug"

# -----------------------------
# 1. Start SonarQube Analysis
# -----------------------------
SonarScanner.MSBuild.exe begin /k:"$sonarProjectKey" /d:sonar.login="$sonarToken" /d:sonar.cs.opencover.reportsPaths="coverage.xml" /d:sonar.host.url="$sonarHost"

# -----------------------------
# 2. Build the Solution
# -----------------------------
msbuild $solutionPath /t:Rebuild /p:Configuration=$buildConfig

# -----------------------------
# 3. Find All Test DLLs
# -----------------------------
Write-Host "Searching for test DLLs..."
$testDlls = Get-ChildItem -Path (Split-Path $solutionPath -Parent) -Recurse -Filter "*.Tests.dll" | Where-Object { $_.FullName -notmatch "obj\\" }

if (-not $testDlls) {
    Write-Host " No test projects found. Ending analysis."
    SonarScanner.MSBuild.exe end /d:sonar.login="$sonarToken"
    exit
}

$testDllsString = $testDlls.FullName -join " "
Write-Host " Found test assemblies:" 
$testDlls | ForEach-Object { Write-Host $_.FullName }

# -----------------------------
# 4. Run OpenCover on Test DLLs
# -----------------------------
OpenCover.Console.exe `
    -target:"vstest.console.exe" `
    -targetargs:"$testDllsString" `
    -output:"coverage.xml" `
    -register:user

# -----------------------------
# 5. Optional - Generate HTML Report
# -----------------------------
reportgenerator -reports:"coverage.xml" -targetdir:"coverage-report" -reporttypes:Html
Write-Host " HTML report generated at coverage-report\index.html"

# -----------------------------
# 6. End SonarQube Analysis
# -----------------------------
SonarScanner.MSBuild.exe end /d:sonar.login="$sonarToken"
Write-Host " Analysis complete. Check SonarQube for coverage results."

