# Alias
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Directory Alias
$stuff = 'D:\My_Folder\stuff'
$my_folder = 'D:\My_Folder'
$appdata = '~\AppData\Local'

# Adding 'which' utility
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# For surviving the god-awful abomination that is Powershell 7.3 color scheme
Import-Module Terminal-Icons

# Duplicate tab in same directory
function prompt {
  $loc = $executionContext.SessionState.Path.CurrentLocation;

  $out = "PS $loc$('>' * ($nestedPromptLevel + 1)) ";
  if ($loc.Provider.Name -eq "FileSystem") {
    $out += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
  }
  return $out
}

# Change cursor based on vi mode
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }
}
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# More PSReadLine configurations
Set-PSReadlineOption -EditMode vi
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
