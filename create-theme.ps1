$cyberpunkTheme = @'
name: Cyberpunk Neon
accent: '#00F6FF'
cursor: '#FF3EBF'
background: '#0D0221'
foreground: '#F0F0F0'
details: darker
terminal_colors:
  bright:
    black: '#242135'
    blue: '#00F6FF'
    cyan: '#00FFBD'
    green: '#75FB4C'
    magenta: '#FF3EBF'
    red: '#FF1C1C'
    white: '#F0F0F0'
    yellow: '#FFF01C'
  normal:
    black: '#0D0221'
    blue: '#00B3FF'
    cyan: '#00CACA'
    green: '#00FF7F'
    magenta: '#D835FF'
    red: '#FF0055'
    white: '#ADADAD'
    yellow: '#FFB000'

background:
  top: '#0D0221'
  bottom: '#20073D'
'@

$themesDir = "$env:APPDATA\warp\Warp\data\themes"
$themeFile = "$themesDir\cyberpunk_neon.yaml"

# Create themes directory if it doesn't exist
if (-not (Test-Path $themesDir)) {
    New-Item -Path $themesDir -ItemType Directory -Force | Out-Null
}

# Write the theme to a file
$cyberpunkTheme | Out-File -FilePath $themeFile -Encoding utf8

Write-Output "Cyberpunk Neon theme has been created at: $themeFile" 