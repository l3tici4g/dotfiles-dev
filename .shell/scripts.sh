#! /usr/bin/env bash

#: | SCRIPTS FUNCIONS FOR SYSTEM

#: Limpando o sistema
cleanSystem() {
    # TODO: Neste cabeçalho, precisa deixar claro a funcionalidade do código e os avisos ao utilizá-lo.
    printf "====================================\n==  EFETUAR LIMPEZA DO SISTEMA  ==\n====================================\n"

    # TODO: inserir a estrutura de if-else para perguntar ao usuário se deseja prosseguir com a função.

    printf "Beleza! Vamos começar o trabalho. ;)\n"

    # TODO: Pergunte a senha do usuaŕio para prosseguir com os comandos. Isso permitirá que os comandos rodem sem precisar repetir a senha do usuário.

    printf "--- [1/5] Atualização dos repositórios e pacotes\n"
    #sudo dnf upgrade --refresh -y
    printf "\nSISTEMA ATUALIZADO COM SUCESSO! \nPróximo Passo...\n"

    printf "--- [2/5] Remoção dos dados em cache\n"
    #sudo dnf clean all
    printf "\nCACHE REMOVIDO COM SUCESSO! \nPróximo Passo...\n"

    # TODO: utilizar a estrutura if-else para detectar se há pacotes inúteis no sistema para serem removidos.
    # Isso porque o comando `dnf upgrade` acaba por autoremover os pacotes desnecessários por padrão.
    printf "--- [3/5] Remoção dos pacotes desnecessários\n"
    #sudo dnf autoremove -y
    printf "\nPACOTES REMOVIDOS COM SUCESSO! \nPróximo Passo...\n"

    printf "--- [4/5] Limpeza dos logs do sistema\n"
    #journalctl --vacuum-time=3d
    printf "\nLOGS RESETADOS COM SUCESSO! \nPara finalizar...\n"

    printf "--- [5/5] Limpeza da lixeira e de arquivos temporários\n"
    # TODO: inserir estrutura de if-else para detectar se a lixeira está vazia ou não.
}
