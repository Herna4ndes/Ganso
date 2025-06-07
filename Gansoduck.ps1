# Caminhos
$zipUrl = "https://github.com/Herna4ndes/Ganso/raw/main/DesktopGoose%20v0.31.zip"
$zipPath = "$env:APPDATA\goose.zip"
$extractPath = "$env:APPDATA\Goose"
$exePath = "$extractPath\DesktopGoose v0.31\GooseDesktop.exe"

# Baixa o arquivo zip
Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath

# Cria a pasta de extração (se não existir)
New-Item -ItemType Directory -Force -Path $extractPath

# Extrai o conteúdo
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# Executa o Goose
Start-Process $exePath
