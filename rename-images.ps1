# Corneta Metais - Image Rename Script
# Renames WhatsApp-style filenames to SEO-friendly names and updates HTML references

$projectRoot = $PSScriptRoot

# ---- ACO-CORTEN ----
$cortenDir = Join-Path $projectRoot "assets\aco-corten"
$cortenFiles = @{
    "WhatsApp Image 2026-05-31 at 14.09.36.jpeg" = "projeto-aco-corten-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.09.37.jpeg" = "projeto-aco-corten-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.09.371.JPG" = "fachada-aco-corten-londrina.JPG"
    "WhatsApp Image 2026-05-31 at 14.09.372.jpeg" = "painel-aco-corten-decorativo.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.08.jpeg" = "revestimento-corten-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.0834.jpeg" = "revestimento-corten-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.09.jpeg" = "porta-pivotante-corten.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.10.jpeg" = "detalhe-corten-textura.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.11.jpeg" = "projeto-corten-residencial-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.111.jpeg" = "projeto-corten-residencial-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.12.jpeg" = "acabamento-corten-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.13.jpeg" = "acabamento-corten-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.14.jpeg" = "corten-fachada-comercial.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.142.jpeg" = "corten-painel-externo.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.15.jpeg" = "corten-jardim-paisagismo.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.16.jpeg" = "corten-detalhe-solda.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.18.jpeg" = "corten-projeto-grande-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.181.jpeg" = "corten-projeto-grande-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.19.jpeg" = "corten-muro-decorativo.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.20.jpeg" = "corten-escultura-urbana.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.23.jpeg" = "corten-brise-moderno.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.231.jpeg" = "corten-pergolado.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.2312.jpeg" = "corten-churrasqueira.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.25.jpeg" = "corten-totem-sinalizacao.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.251.jpeg" = "corten-jardineira.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.261.jpeg" = "corten-lareira.jpeg"
    "WhatsApp Image 2026-05-31 at 14.20.274.jpeg" = "corten-mobiliario.jpeg"
    "WhatsApp Image 2026-05-31 at 2.jpeg" = "corten-projeto-especial.jpeg"
}

# ---- ACO-INOX ----
$inoxDir = Join-Path $projectRoot "assets\aco-inox"
$inoxFiles = @{
    "WhatsApp Image 2026-05-31 at 13.19.38.jpeg" = "escada-aco-inox-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.39.jpeg" = "escada-aco-inox-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.391.jpeg" = "escada-aco-inox-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.3911.jpeg" = "escada-aco-inox-04.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.561.jpeg" = "guarda-corpo-vidro-inox-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.572.jpeg" = "guarda-corpo-vidro-inox-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.573.jpeg" = "guarda-corpo-vidro-inox-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.58.jpeg" = "corrimao-inox-escovado.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.581.jpeg" = "corrimao-inox-polido.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.59.jpeg" = "guarda-corpo-inox-residencial.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.591.jpeg" = "guarda-corpo-inox-comercial.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.592.jpeg" = "guarda-corpo-inox-sacada.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.003.jpeg" = "inox-acabamento-espelhado.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.01.jpeg" = "inox-acabamento-escovado.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.011.jpeg" = "inox-acabamento-dourado.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.013.jpeg" = "inox-acabamento-rose.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.001.jpeg" = "projeto-inox-residencial-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.012.jpeg" = "projeto-inox-residencial-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.02.jpeg" = "projeto-inox-residencial-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.03.jpeg" = "projeto-inox-residencial-04.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.031.jpeg" = "corrimao-inox-escada-londrina.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.042.jpeg" = "inox-porta-pivotante.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.043.jpeg" = "inox-movel-decorativo.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.054.jpeg" = "inox-mesa-centro.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.06.jpeg" = "inox-bancada-cozinha.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.062.jpeg" = "inox-banheiro-detalhe.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.07.jpeg" = "inox-fachada-comercial.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.072.jpeg" = "inox-vitrine-loja.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.08.jpeg" = "inox-porta-entrada.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.081.jpeg" = "inox-estrutura-vidro.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.0823.jpeg" = "inox-pergolado-moderno.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.10.jpeg" = "inox-cobertura-vidro.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.101111.jpeg" = "inox-projeto-grande.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.111.jpeg" = "inox-revestimento-parede.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.13.jpeg" = "inox-escada-helicoidal.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.136.jpeg" = "projeto-inox-destaque-londrina.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.139.jpeg" = "inox-guarda-corpo-escada.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.14.jpeg" = "inox-detalhe-acabamento.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1499.jpeg" = "inox-puxador-porta.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.15.jpeg" = "inox-sacada-panoramica.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.151.jpeg" = "inox-varanda-moderna.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1511.jpeg" = "inox-escada-caracol-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1512.jpeg" = "inox-escada-caracol-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.154.jpeg" = "inox-escada-caracol-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1611111.jpeg" = "inox-projeto-corporativo-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.164.jpeg" = "inox-projeto-corporativo-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.181.jpeg" = "inox-portao-residencial.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.19.jpeg" = "inox-grade-moderna.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.192.jpeg" = "inox-cerca-elegante.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.22.jpeg" = "inox-projeto-premium-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.223.jpeg" = "inox-projeto-premium-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.235.jpeg" = "inox-projeto-premium-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.59.54.jpeg" = "inox-estrutura-metalica-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.59.546.jpeg" = "inox-estrutura-metalica-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.59.55.jpeg" = "inox-cobertura-moderna.jpeg"
    "WhatsApp Image 2026-05-31 at 13.59.559.jpeg" = "inox-cobertura-vidro-grande.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.321.jpeg" = "inox-acabamento-fino-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.33.jpeg" = "inox-acabamento-fino-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.3555.jpeg" = "inox-acabamento-fino-03.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.36.jpeg" = "inox-projeto-especial-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.361.jpeg" = "inox-projeto-especial-02.jpeg"
    "WhatsApp Image 2026-05-31 at 17.11.59.jpeg" = "vidro-curvo-guarda-corpo-inox.jpeg"
}

# ---- VIDRO-CURVO ----
$vidroDir = Join-Path $projectRoot "assets\vidro-curvo"
$vidroFiles = @{
    "WhatsApp Image 2026-05-31 at 13.25.561.jpeg" = "vidro-curvo-guarda-corpo-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.573.jpeg" = "vidro-curvo-guarda-corpo-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.58.jpeg" = "vidro-curvo-sacada-panoramica.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.581.jpeg" = "vidro-curvo-fachada-moderna.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.59.jpeg" = "vidro-curvo-residencial-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.591.jpeg" = "vidro-curvo-residencial-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.25.592.jpeg" = "vidro-curvo-residencial-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.003.jpeg" = "vidro-curvo-acabamento-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.01.jpeg" = "vidro-curvo-acabamento-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.011.jpeg" = "vidro-curvo-acabamento-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.26.013.jpeg" = "vidro-curvo-acabamento-04.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.001.jpeg" = "vidro-curvo-projeto-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.012.jpeg" = "vidro-curvo-projeto-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.02.jpeg" = "vidro-curvo-projeto-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.03.jpeg" = "vidro-curvo-cobertura-londrina.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.031.jpeg" = "vidro-curvo-detalhe-curvatura.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.042.jpeg" = "vidro-curvo-temperado-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.043.jpeg" = "vidro-curvo-temperado-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.054.jpeg" = "vidro-curvo-laminado.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.06.jpeg" = "vidro-curvo-escada.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.062.jpeg" = "vidro-curvo-varanda.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.07.jpeg" = "vidro-curvo-comercial.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.072.jpeg" = "vidro-curvo-vitrine.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.081.jpeg" = "vidro-curvo-estrutura.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.10.jpeg" = "vidro-curvo-panoramico.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.111.jpeg" = "vidro-curvo-elegante.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.13.jpeg" = "vidro-curvo-grande-formato.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.139.jpeg" = "vidro-curvo-detalhe.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.14.jpeg" = "vidro-curvo-acabamento-fino.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.151.jpeg" = "vidro-curvo-moderno-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1511.jpeg" = "vidro-curvo-moderno-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.1512.jpeg" = "vidro-curvo-moderno-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.154.jpeg" = "vidro-curvo-moderno-04.jpeg"
    "WhatsApp Image 2026-05-31 at 13.41.164.jpeg" = "vidro-curvo-premium.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.181.jpeg" = "vidro-curvo-portao.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.19.jpeg" = "vidro-curvo-fachada-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.50.192.jpeg" = "vidro-curvo-fachada-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.59.55.jpeg" = "vidro-curvo-cobertura.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.33.jpeg" = "vidro-curvo-fino.jpeg"
    "WhatsApp Image 2026-05-31 at 17.11.59.jpeg" = "vidro-curvo-guarda-corpo-destaque.jpeg"
}

# ---- SERVICOS-ESPECIAIS ----
$servDir = Join-Path $projectRoot "assets\servicos-especiais"
$servFiles = @{
    "WhatsApp Image 2026-05-31 at 13.19.38.jpeg" = "servico-especial-escada-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.39.jpeg" = "servico-especial-escada-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.391.jpeg" = "servico-especial-escada-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.19.3911.jpeg" = "servico-especial-escada-04.jpeg"
    "WhatsApp Image 2026-05-31 at 13.56.05.jpeg" = "servico-especial-projeto-01.jpeg"
    "WhatsApp Image 2026-05-31 at 13.56.061.jpeg" = "servico-especial-projeto-02.jpeg"
    "WhatsApp Image 2026-05-31 at 13.56.072.jpeg" = "servico-especial-projeto-03.jpeg"
    "WhatsApp Image 2026-05-31 at 13.56.073.jpeg" = "servico-especial-projeto-04.jpeg"
    "WhatsApp Image 2026-05-31 at 14.02.29.jpeg" = "servico-especial-custom-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.02.306.jpeg" = "servico-especial-custom-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.32.jpeg" = "servico-especial-detalhe-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.321.jpeg" = "servico-especial-detalhe-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.33.jpeg" = "servico-especial-acabamento.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.34.jpeg" = "servico-especial-estrutura-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.342.jpeg" = "servico-especial-estrutura-02.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.343.jpeg" = "servico-especial-estrutura-03.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.3545.jpeg" = "servico-especial-montagem.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.3555.jpeg" = "servico-especial-solda.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.36.jpeg" = "servico-especial-grande-01.jpeg"
    "WhatsApp Image 2026-05-31 at 14.08.361.jpeg" = "servico-especial-grande-02.jpeg"
}

# Function to rename files and collect mapping for HTML updates
function Rename-ImageFiles {
    param(
        [string]$Directory,
        [hashtable]$FileMap
    )
    
    $renames = @()
    foreach ($old in $FileMap.Keys) {
        $oldPath = Join-Path $Directory $old
        $newName = $FileMap[$old]
        $newPath = Join-Path $Directory $newName
        
        if (Test-Path $oldPath) {
            if (-not (Test-Path $newPath)) {
                Rename-Item -Path $oldPath -NewName $newName -Force
                Write-Host "  Renamed: $old -> $newName" -ForegroundColor Green
                $renames += @{ Old = $old; New = $newName }
            } else {
                Write-Host "  SKIP (target exists): $old -> $newName" -ForegroundColor Yellow
            }
        } else {
            Write-Host "  NOT FOUND: $old" -ForegroundColor DarkGray
        }
    }
    return $renames
}

# Function to update HTML file references
function Update-HtmlReferences {
    param(
        [string]$FilePath,
        [string]$AssetSubdir,
        [hashtable]$FileMap
    )
    
    if (-not (Test-Path $FilePath)) { return }
    
    $content = Get-Content -Path $FilePath -Raw -Encoding UTF8
    $changed = $false
    
    foreach ($old in $FileMap.Keys) {
        $newName = $FileMap[$old]
        $oldRef = "/assets/$AssetSubdir/$old"
        $newRef = "/assets/$AssetSubdir/$newName"
        
        if ($content.Contains($oldRef)) {
            $content = $content.Replace($oldRef, $newRef)
            $changed = $true
        }
        
        # Also check for relative paths
        $oldRelRef = "./assets/$AssetSubdir/$old"
        $newRelRef = "./assets/$AssetSubdir/$newName"
        if ($content.Contains($oldRelRef)) {
            $content = $content.Replace($oldRelRef, $newRelRef)
            $changed = $true
        }
    }
    
    if ($changed) {
        Set-Content -Path $FilePath -Value $content -Encoding UTF8 -NoNewline
        Write-Host "  Updated references in: $(Split-Path $FilePath -Leaf)" -ForegroundColor Cyan
    }
}

$htmlFiles = @(
    (Join-Path $projectRoot "index.html"),
    (Join-Path $projectRoot "aco-corten.html"),
    (Join-Path $projectRoot "aco-inox.html"),
    (Join-Path $projectRoot "vidro-curvo.html"),
    (Join-Path $projectRoot "servicos-especiais.html"),
    (Join-Path $projectRoot "contato.html")
)

Write-Host "`n=== Renaming Aco Corten Images ===" -ForegroundColor White
Rename-ImageFiles -Directory $cortenDir -FileMap $cortenFiles

Write-Host "`n=== Renaming Aco Inox Images ===" -ForegroundColor White
Rename-ImageFiles -Directory $inoxDir -FileMap $inoxFiles

Write-Host "`n=== Renaming Vidro Curvo Images ===" -ForegroundColor White
Rename-ImageFiles -Directory $vidroDir -FileMap $vidroFiles

Write-Host "`n=== Renaming Servicos Especiais Images ===" -ForegroundColor White
Rename-ImageFiles -Directory $servDir -FileMap $servFiles

Write-Host "`n=== Updating HTML References ===" -ForegroundColor White

foreach ($htmlFile in $htmlFiles) {
    Update-HtmlReferences -FilePath $htmlFile -AssetSubdir "aco-corten" -FileMap $cortenFiles
    Update-HtmlReferences -FilePath $htmlFile -AssetSubdir "aco-inox" -FileMap $inoxFiles
    Update-HtmlReferences -FilePath $htmlFile -AssetSubdir "vidro-curvo" -FileMap $vidroFiles
    Update-HtmlReferences -FilePath $htmlFile -AssetSubdir "servicos-especiais" -FileMap $servFiles
}

Write-Host "`n=== DONE ===" -ForegroundColor Green
Write-Host "All WhatsApp-style filenames have been renamed to SEO-friendly names." -ForegroundColor Green
