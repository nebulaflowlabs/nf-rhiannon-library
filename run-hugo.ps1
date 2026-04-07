param( )

$ErrorActionPreference = "Stop"

Push-Location (Split-Path -Parent $MyInvocation.MyCommand.Path)

try {
    & hugo server `
        --buildDrafts `
        --disableFastRender `
        --navigateToChanged `
        --port "1313" `
        --bind "0.0.0.0"
}
finally {
    Pop-Location
}