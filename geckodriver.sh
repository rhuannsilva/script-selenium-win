sudo apt get update && sudo apt get upgrade

sudo apt-get install firefox

wget "https://github.com/mozilla/geckodriver/releases/download/v0.33.0/geckodriver-v0.33.0-linux64.tar.gz"

# Verificar se o download foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Download concluído."

    sudo tar -xvzf geckodriver*

    echo "Arquivo Descompactado"

    sudo chmod +x geckodriver

    sudo mv geckodriver /usr/local/bin/
    
    echo "Instalação concluída."
else
    echo "O download falhou. Verifique a URL ou a conexão com a internet."
fi