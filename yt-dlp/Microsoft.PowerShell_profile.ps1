# --- Functions for yt-dlp with specific configs (in mpv folder) ---

# Function to run yt-dlp with the 480p config
function Invoke-Ytdlp480 {
    param(
        [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
        [string[]]$urls
    )
    Write-Host "Using 480p config (from C:\Users\AMMAR\AppData\Local\Programs\mpv)..." -ForegroundColor Cyan
    # --- Path updated to mpv folder ---
    yt-dlp --config-location "C:\Users\AMMAR\AppData\Local\Programs\mpv\yt-dlp.conf" @urls
}

# Function to run yt-dlp with the 720p config
function Invoke-Ytdlp720 {
    param(
        [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
        [string[]]$urls
    )
    Write-Host "Using 720p config (from C:\Users\AMMAR\AppData\Local\Programs\mpv)..." -ForegroundColor Cyan
    # --- Path updated to mpv folder ---
    yt-dlp --config-location "C:\Users\AMMAR\AppData\Local\Programs\mpv\720.conf" @urls
}

# Function to run yt-dlp with the Full Quilty config
function Invoke-FQ {
    param(
        [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
        [string[]]$urls
    )
    Write-Host "Using Full Quilty config (from C:\Users\AMMAR\AppData\Local\Programs\mpv)..." -ForegroundColor Cyan
    # --- Path updated to mpv folder ---
    yt-dlp --config-location "C:\Users\AMMAR\AppData\Local\Programs\mpv\FQ.conf" @urls
}

# Function to run yt-dlp with the Audio config
function Invoke-YtdlpAudio {
    param(
        [Parameter(Mandatory=$true, ValueFromRemainingArguments=$true)]
        [string[]]$urls
    )
    Write-Host "Using Audio config (from C:\Users\AMMAR\AppData\Local\Programs\mpv)..." -ForegroundColor Cyan
    # --- Path updated to mpv folder ---
    yt-dlp --config-location "C:\Users\AMMAR\AppData\Local\Programs\mpv\Audio.conf" @urls
}

# --- Aliases with requested names ---
Set-Alias -Name dv -Value Invoke-Ytdlp480 -Option AllScope #480p
Set-Alias -Name d720 -Value Invoke-Ytdlp720 -Option AllScope #720p
Set-Alias -Name FQ -Value Invoke-FQ -Option AllScope #Full Quilty
Set-Alias -Name da   -Value Invoke-YtdlpAudio -Option AllScope #Audio

# Updated message
Write-Host "yt-dlp aliases (dv, d720, FQ , da) loaded." -ForegroundColor Green
