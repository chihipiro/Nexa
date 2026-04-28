$env:PYTHONPATH = "src" + [System.IO.Path]::PathSeparator + $env:PYTHONPATH
$pythonArgs = $args | Where-Object { $_ -ne '-del' }

if ($args -contains '-del') {
    python -B -m nexa.app @pythonArgs
}else {
    python -m nexa.app @pythonArgs
}