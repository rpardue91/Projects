$files = Get-ChildItem -Path C:\ -Filter "*.pst" -Recurse -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Fullname

Foreach($file in $files){
    echo $file
    (Get-Item -Path $file).Length/1MB
}
