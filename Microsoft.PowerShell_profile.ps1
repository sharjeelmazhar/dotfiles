# oh-my-posh init pwsh --config 'C:\Users\sharj\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json' | Invoke-Expression

# $PromptStyle = 'powerlevel10k_rainbow'
# $PromptStyle = 'wopian'
$PromptStyle = '1_shell'

$SetPromptStyle = "oh-my-posh init pwsh --config 'C:\Users\sharj\AppData\Local\Programs\oh-my-posh\themes\$PromptStyle.omp.json' | Invoke-Expression"

# Now you can call it like this
Invoke-Expression $SetPromptStyle


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module Terminal-Icons
Import-Module z

function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Define a function that runs lsd with the given arguments
function Invoke-Lsd {
    lsd $args 
}


# Create an alias for ls that points to the function
New-Alias -Name ls -Value Invoke-Lsd -Force

function Invoke-Lsdll {
    lsd -lah $args
}
New-Alias -Name ll -Value Invoke-Lsdll -Force




