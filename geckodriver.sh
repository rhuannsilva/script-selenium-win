sudo apt get update && sudo apt get upgrade

wget "https://storage.googleapis.com/chrome-for-testing-public/119.0.6045.105/linux64/chromedriver-linux64.zip"

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