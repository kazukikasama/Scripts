# Obtener la lista de archivos en la carpeta
$archivos = Get-ChildItem -Path "D:\D\Desktop\noriyuki"

# Crear una matriz vacía
$matriz = @()

# Iterar sobre los archivos
foreach ($archivo in $archivos) {
    # Obtener el nombre del archivo
    $nombre = $archivo.BaseName

    # Obtener la extensión del archivo
    $extension = $archivo.Extension

    # Agregar el archivo a la matriz
    $matriz += @{
        name = $nombre
        artist = "Noriyuki Asakura"
        url = $nombre + $extension
        cover = "portada.jpg"
    }
}

# Escribir la matriz en un archivo de texto
$matriz | ConvertTo-Json | Out-File "D:\D\Desktop\noriyuki\archivo.json"
