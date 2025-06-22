Algoritmo "CADASTRO DE EQUIPAMENTO"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Reginaldo e Augusto
// Data atual  : 22/05/2025
Var

   secretaria,senhas,usuarios,esc: vetor[1..30] de Caracter
   pc,condicao, equipamentoCorredor: vetor[1..25] de Caracter
   estal_type: vetor[1..10] de Caracter
   op_edit,opc_edit,nivel,login,senha,adic_dados,login_temp,o,esc_pesq,desig_pesq,ide_sala: Caracter
   equipamentoSala: vetor[1..25] de inteiro
   tipo_letra: vetor[1..25] de Caracter
   estal_type_pesq,tipoLetra,ateRet: Caracter
   a,b,c,d,l,i,j,pc_e,op_edicao,exc,status,adic,n,k,esc_user,totalSalas,totalProdutos: Inteiro
   acesso,sairlogin, achou_usuario,cad_ok, duplicado,sala_pesq,ok_num,ok_desig,ok_type,date_esc: logico
   z,salapesq,sys,op_pesq,cad_equip,adic_cad,p,q,f,qtde_sala,max_b,estal,estal_pesq: Inteiro
   op_cad,novo_acesso,num_sala,cont_adic,cont_desig: Inteiro

Procedimento Condic()
Inicio
   Para c de 1 ate adic faca
      Tempo(100)
      Escreval(c,"º Equipamento")
      Escreval()
      Escreval("* Equipamento: " ,pc[c])
      Escreval("* Condição: " ,condicao[c])
      Escreval(" Localização: ",estal_type[c]," ",maiusc(equipamentocorredor[c])," SALA",equipamentosala[c])
      Escreval("----------------------------------------------------")
      Tempo(500)
      Tempo(20)
   FimPara
FimProcedimento
//----------------------------------------------------------------
Procedimento principal()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|                   MENU PRINCIPAL                   |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------

Procedimento cad()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|          CADASTRO DE EQUIPAMENTO                   |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento demon()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|          DEMONSTRATIVO DE CADASTRO                 |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento cad_user()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|              CADASTRO DE USUÁRIO                   |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento edt()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|               EDIÇÃO DE CADASTRO                   |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento excl()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|                EXCLUIR CADASTRO                    |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento seg()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|          ASSISTENTE DE SEGURANÇA                   |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento confirm()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|          CONFIRME SEU STATUS DE ACESSO            |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------
Procedimento sistema()
Inicio
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval("|                  SISTEMA CEDUP                     |")
   Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
   Escreval()
FimProcedimento
//----------------------------------------------------------------

Inicio


   //----------------------------------------------------------------

   acesso <- falso
   adic <- 0
   max_b <- 25
   sala_pesq  <- falso
   achou_usuario <- falso

   REPITA
      sairlogin <- falso
      REPITA
         sistema()
         Escreva("[1] CRÉDITOS")
         Escreva("  [2] ACESSAR SISTEMA")
         Escreva("  [3] SAIR DO SISTEMA")
         Escreval()
         Escreval()
         Escreva("OPÇÃO:")
         Leia(sys)
         LimpaTela

         Escolha sys

         CASO 1

            sistema()
            Escreval("Este algoritmo foi desenvolvido como parte de um projeto acadêmico com o objetivo de simular um sistema de cadastro e gerenciamento de equipamentos, com controle de acesso por login (administrador e usuário comum).O sistema permite cadastrar, listar, editar, excluir e pesquisar equipamentos por sala, além de simular o salvamento e carregamento de dados usando vetores.")
            Escreval()
            Escreval("Desenvolvedor: Reginaldo Marcilio")
            Escreval("Ferramenta: Visualg (.ALG)")
            Escreval("Ano: 2025" )
            Escreval("Curso: Técnico em Informática")
            Escreval("Instituição: CEDUP Joinville")
            Escreval()
            Escreval("O algoritmo também conta com um sistema de segurança simulado, menus específicos por nível de acesso e funcionalidades pensadas para reforçar conceitos de lógica de programação, estrutura de dados e interação com o usuário.")
            Tempo(10000)
            Tempo(2)
            LimpaTela

         CASO 2

            // Cadastro de usuários e senhas de base
            usuarios[1] <- "professor"
            usuarios[2] <- "aluno"
            senhas[1] <- "admin"
            senhas[2] <- "cedup"

            acesso <- falso

            REPITA
               confirm()
               Escreva("Informe Login de acesso: ")
               Leia(login)
               LimpaTela

               // Verifica login
               Para j de 1 ate 10 faca
                  Se minusc(login) = minusc(usuarios[j]) ENTAO
                     achou_usuario <- verdadeiro

                     // Login encontrado, pede senha
                     confirm()
                     Escreval("Login: ", login)
                     Escreval()
                     Escreva("Informe a senha: ")
                     Leia(senha)

                     Se minusc(senha) = minusc(senhas[j]) ENTAO
                        acesso <- verdadeiro
                        Se minusc(senha) = "admin" ENTAO
                           nivel <- "admin"
                        Senao
                           nivel <- "user"
                        FimSe
                     Senao
                        LimpaTela
                        confirm()
                        Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                        Escreval("                 SENHA INCORRETA!")
                        Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                        Tempo(3000)
                        Tempo(2)
                        LimpaTela
                     FimSe

                  FimSe
               FimPara

               Se achou_usuario = falso ENTAO
                  confirm()
                  Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                  Escreval("               USUÁRIO NÃO CADASTRADO")
                  Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                  Tempo(3000)
                  Tempo(2)
                  LimpaTela
               FimSe

            ATE acesso = verdadeiro

            Se acesso = verdadeiro ENTAO
               Escreval()
               Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
               Escreval("                  ACESSO LIBERADO                     ")
               Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
               Escreval()
               Escreval("Nível de acesso: ", maiusc(nivel))
               Tempo(2500)
               Tempo(1)
            FimSe
            LimpaTela
            Se acesso entao
               Se nivel = "admin" ENTAO
                  REPITA
                     principal()
                     Escreval("[1] Cadastrar User/Admin")
                     Escreval("[2] Cadastrar Equipamento")
                     Escreval("[3] Listar Equipamento")
                     Escreval("[4] Editar Equipamento")
                     Escreval("[5] Excluir Equipamento")
                     Escreval("[6] Trocar Login de Acesso")
                     Escreval("[7] Sair")
                     Escreval ()
                     Escreva("OPÇÃO SELECIONADA: ")
                     Leia(a)
                     LimpaTela

                  senao

                     Se nivel = "user" ENTAO

                        REPITA
                           principal()
                           Escreval ("[1] Cadastrar Equipamento")
                           Escreval ("[2] Listar Equipamento")
                           Escreval ("[3] Trocar Login de Acesso")
                           Escreval ("[4] Sair")
                           Escreval ()
                           Escreva("OPÇÃO SELECIONADA: ")
                           Leia(k)
                           LimpaTela

                           Escolha k

                           CASO 1
                              a <- k + 1

                           CASO 2
                              a <- k + 1

                           CASO 3
                              a <- k + 3

                           CASO 4
                              a <- k + 3

                           FimEscolha
                        FimSe
                     FimSe
                  FimSe
                  //FimSe

                  Escolha a

                  CASO 1

                     REPITA
                        confirm()
                        Escreval("[1] - CADASTRAR NOVO USUÁRIO")
                        Escreval("[2] - RETORNAR AO MENU")
                        Escreval()
                        Escreva("OPÇÃO: ")
                        Leia(adic_cad)
                        LimpaTela

                        Escolha adic_cad

                        CASO 1

                           cad_ok <- falso

                           Para p de 1 ate 10 faca
                              Se usuarios[p] = "" ENTAO
                                 q <- p
                                 cad_ok <- verdadeiro
                              FimSe
                           FimPara

                           Se cad_ok = falso ENTAO
                              confirm()
                              Escreval("Limite de usuários atingido.")
                              Tempo(2000)
                              LimpaTela

                           Senao

                              REPITA
                                 duplicado <- falso
                                 confirm()
                                 Escreval("Digite o novo login de acesso:")
                                 Escreva("-> ")
                                 Leia(login_temp)
                                 LimpaTela

                                 Para k de 1 ate 10 faca
                                    Se maiusc(login_temp) = maiusc(usuarios[k]) ENTAO
                                       duplicado <- verdadeiro
                                    FimSe
                                 FimPara

                                 Se duplicado ENTAO
                                    confirm()
                                    Escreval("Este login já está cadastrado. Tente outro.")
                                    Tempo(2000)
                                    Tempo(1)
                                    LimpaTela
                                 FimSe
                              ate duplicado = falso

                              usuarios[q] <- login_temp
                              confirm()
                              Escreval("Registre a senha:")
                              Escreva("-> ")
                              Leia(senhas[q])
                              LimpaTela
                              confirm()
                              Escreval("Confirme os dados registrados:")
                              Escreval("Login: ", usuarios[q])
                              Escreval("Senha: ", senhas[q])
                              Escreva("Dados corretos? S/N: ")
                              Leia(adic_dados)
                              Escreval()

                              Se maiusc(adic_dados) = "S" ENTAO

                                 Escreval("Usuário cadastrado com sucesso.")
                                 Tempo(2000)
                                 Tempo(2)
                                 LimpaTela
                              Senao
                                 usuarios[q] <- ""
                                 senhas[q] <- ""
                                 Escreval("Cadastro cancelado.")
                                 Tempo(2000)
                                 Tempo(2)
                              FimSe
                           FimSe
                           LimpaTela

                        CASO 2

                           cad()
                           Escreval("RETORNANDO AO MENU...")
                           Tempo(1500)
                           Tempo(1)
                           LimpaTela
                        OutroCASO
                           cad()
                           Escreval("OPÇÃO INVALIDA...")
                           LimpaTela
                           Tempo(2000)
                           Tempo(1)
                        FimEscolha
                     ate adic_cad = 2

                  CASO 2

                     REPITA
                        cad()
                        Escreval("[1] - CADASTRAR NOVO EQUIPAMENTO")
                        Escreval("[2] - RETORNAR AO MENU")
                        Escreval()
                        Escreva("OPÇÃO: ")
                        Leia(cad_equip)
                        LimpaTela

                        Escolha cad_equip

                        CASO 1

                           cad()
                           Escreva("Quantos equipamentos deseja cadastrar: ")
                           Leia(b)
                           LimpaTela
                           Se max_b < adic + b ENTAO
                              cad()
                              Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                              Escreval("|          LIMITE EXCEDIDO DE CADASTROS              |")
                              Escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
                              Tempo(4000)
                              Tempo(2)
                              LimpaTela
                           Senao
                              Para c de 1 ate b faca
                                 cad()
                                 adic <- adic + 1
                                 Escreval("Descreva as Caracteristicas do",adic,"° equipamento:")
                                 Escreva("--> ")
                                 Leia(pc[adic])
                                 Escreval()
                                 Escreval("Descreva a anomalia do",adic,"º equipamento:")
                                 Escreva("--> ")
                                 Leia(condicao[adic])
                                 Escreval()
                                 Escreva("Número identificador da",adic,"ª sala: ")
                                 Leia(equipamentoSala[adic])
                                 Escreval()
                                 Escreval("Selecione o tipo de instalação:")
                                 Escreval()
                                 Escreval("[1] CORREDOR")
                                 Escreval("[2] BLOCO")
                                 Escreval("[3] LABORATÓRIO")
                                 Escreval("[4] BIBLIOTECA")
                                 Escreval("[5] SECRETARIA")
                                 Escreval("[6] DIRETORIA")
                                 Escreval("[7] DEPÓSITO")
                                 Escreval("[8] ALMAXARIFADO")
                                 Escreval()
                                 Escreva("OPÇÃO: ")
                                 Leia(estal)
                                 Escreval()

                                 Escolha estal

                                 CASO 1

                                    estal_type[adic] <- "CORREDOR"

                                 CASO 2

                                    estal_type[adic] <- "BLOCO"

                                 CASO 3

                                    estal_type[adic] <- "LABORATÓRIO"

                                 CASO 4

                                    estal_type[adic] <- "BIBLIOTECA"

                                 CASO 5

                                    estal_type[adic] <- "SECRETARIA"

                                 CASO 6

                                    estal_type[adic] <- "DIRETORIA"

                                 CASO 7

                                    estal_type[adic] <- "DEPOSITO"

                                 CASO 8

                                    estal_type[adic] <- "ALMOXARIFADO"

                                 FimEscolha

                                 Escreva("Identifique a designação vogal correspondente a",adic,"ª sala: ")
                                 Leia(equipamentoCorredor[adic])
                                 equipamentoCorredor[adic] <- maiusc(equipamentoCorredor[adic])
                                 tipo_letra[adic] <-  estal_type[adic] + " " + equipamentoCorredor[adic]
                                 LimpaTela
                              fimpara
                           FimSe

                        CASO 2
                           cad()
                           Escreval("RETORNANDO AO MENU...")
                           Tempo(1500)
                           Tempo(1)
                           LimpaTela
                        OutroCASO
                           cad()
                           Escreval("OPÇÃO INVALIDA...")
                           LimpaTela
                           Tempo(2000)
                           Tempo(1)
                        FimEscolha
                     ate cad_equip = 2

                  CASO 3

                     REPITA
                        demon()
                        Escreval("[1] - MOSTRAR REGISTRO")
                        Escreval("[2] - REGISTROS POR SALA")
                        Escreval("[3] - RETORNAR AO MENU")
                        Escreval()
                        Escreva("OPÇÃO: ")
                        Leia(salapesq)
                        LimpaTela

                        Escolha salapesq

                        CASO 1
                           demon()
                           Escreval("Foram cadastrados", adic, " equipamentos:")
                           Escreval("----------------------------------------------------")
                           Escreval()
                           Condic()
                           Tempo(3000)
                           Tempo(100)
                           LimpaTela

                        CASO 2
                           demon()
                           Escreval("Selecione o tipo de instalação:")
                           Escreval()
                           Escreval("[1] CORREDOR")
                           Escreval("[2] BLOCO")
                           Escreval("[3] LABORATÓRIO")
                           Escreval("[4] BIBLIOTECA")
                           Escreval("[5] SECRETARIA")
                           Escreval("[6] DIRETORIA")
                           Escreval("[7] DEPÓSITO")
                           Escreval("[8] ALMAXARIFADO")
                           Escreval("[9] RETORNAR AO MENU")
                           Escreval()
                           Escreva("OPÇÃO: ")
                           Leia(estal_pesq)
                           LimpaTela
                           Escreval()

                           Escolha estal_pesq

                           CASO 1

                              estal_type_pesq <- "CORREDOR"

                           CASO 2

                              estal_type_pesq <- "BLOCO"

                           CASO 3

                              estal_type_pesq <- "LABORATÓRIO"

                           CASO 4

                              estal_type_pesq <- "BIBLIOTECA"

                           CASO 5

                              estal_type_pesq <- "SECRETARIA"

                           CASO 6

                              estal_type_pesq <- "DIRETORIA"

                           CASO 7

                              estal_type_pesq <- "DEPOSITO"

                           CASO 8

                              estal_type_pesq <- "ALMOXARIFADO"

                           CASO 9
                              demon()
                              Escreval("Retornando ao menu...")
                              Tempo(1500)
                              Tempo(1)
                              LimpaTela
                           FimEscolha

                           cont_adic <- 0

                           demon()
                           Escreva("Identifique a designação vogal correspondente: ")
                           Leia(desig_pesq)
                           desig_pesq <- maiusc(desig_pesq)
                           tipoLetra <- estal_type_pesq + " " + desig_pesq
                           para i de 1 ate adic faca
                              Se  tipoLetra = tipo_letra[i] entao
                                 cont_adic <- cont_adic + 1
                              FimSe
                           fimpara
                           Escreval()
                           Escreval("Quantidade de ocorrências encontradas: ", cont_adic)
                           Escreval()
                           Escreval("----------------------------------------------------")
                        FimSe
                        Tempo(3000)
                        Tempo(2)
                        LimpaTela
                        demon
                        Escreva("Deseja listar os equipamentos? S/N: ")
                        Leia(ide_sala)
                        ide_sala <- maiusc(ide_sala)
                        Escreval()
                        Se ide_sala = "S" entao
                           para i de 1 ate adic faca
                              Se  tipoLetra = tipo_letra[i] entao
                                 Escreval("----------------------------------------------------")
                                 Escreval()
                                 Escreval("* Equipamento: " ,pc[i])
                                 Escreval("* Condição: " ,condicao[i])
                                 Escreval("Localização: ", estal_type[i], " ", maiusc(equipamentoCorredor[i]), " Sala ", equipamentosala[i])
                                 Escreval()
                                 Escreval("----------------------------------------------------")
                              FimSe
                              Tempo(1500)
                              Tempo(2)
                           Fimpara
                           LimpaTela
                        senao
                           LimpaTela
                           demon()
                           Escreval("Retornando ao menu...")
                           Tempo(3000)
                           Tempo(2)
                           LimpaTela
                        FimSe
                     fimse

                  CASO 3

                     demon()
                     Escreval("RETORNANDO AO MENU...")
                     Tempo(1500)
                     Tempo(1)
                     LimpaTela
                  OutroCASO
                     demon()
                     Escreval("OPÇÃO INVALIDA...")
                     LimpaTela
                     Tempo(2000)
                     Tempo(1)
                  FimEscolha
               ate salapesq = 3


            CASO 4

               REPITA
                  edt()
                  Escreval("[1] - EDITAR EQUIPAMENTO")
                  Escreval("[2] - RETORNAR AO MENU")
                  Escreval()
                  Escreva("OPÇÃO: ")
                  Leia(op_edicao)
                  LimpaTela
                  edt()

                  Escolha op_edicao

                  CASO 1
                     REPITA
                        Condic()
                        Escreval("Identifique o equipamento a ser editado?")
                        Escreval()
                        Escreva("OPÇÃO: ")
                        Leia(pc_e)
                        LimpaTela
                        edt()
                        Escreval("O equipamento a ser editado é: ",pc[pc_e])
                        Escreval()
                        Escreval("Descreva a nova caracteristica do equipamento: ")
                        Escreva("-> ")
                        Leia(pc[pc_e])
                        Escreval()
                        Escreval("Há necessidade de atualizar a anomalia?")
                        Escreva("OPÇÃO S/N: ")
                        Leia(op_edit)
                        op_edit <- maiusc(op_edit)
                        Se op_edit = "S"  ENTAO
                           Escreval()
                           Escreval("Descreva a anomalia identificada: ")
                           Escreva("-> ")
                           Leia(condicao[pc_e])
                           Escreval()
                           Escreval("Há necessidade de editar a locaização?")
                           Escreva("OPÇÃO S/N: ")
                           Leia(opc_edit)
                           opc_edit <- maiusc(opc_edit)
                           Se opc_edit = "S"  ENTAO
                              Escreval()
                              Escreval("Indique o novo numero identificador: ")
                              Escreva("-> ")
                              Leia(equipamentoSala[pc_e])
                              Escreva("-> ")
                              Escreval("Indique o corredor correspondente: ")
                              Escreva("-> ")
                              Leia(equipamentocorredor[pc_e])
                              Escreva()
                              Escreval("Maquina editada com sucesso...")
                              Escreval()
                              Tempo(2000)
                              Tempo(1)
                              LimpaTela
                              op_edicao <- 2
                           Senao
                              Escreval()
                              Escreval("Maquina editada com sucesso...")
                              Tempo(2000)
                              Tempo(1)
                              LimpaTela
                           FimSe
                        FimSe
                        op_edicao <- 2

                     CASO 2
                        edt()
                        Escreval("RETORNANDO AO MENU...")
                        Tempo(1500)
                        Tempo(1)
                        LimpaTela
                     OutroCASO
                        edt()
                        Escreval("OPÇÃO INVALIDA...")
                        LimpaTela
                        Tempo(2000)
                        Tempo(1)
                     FimEscolha
                  ate op_edicao = 2


               CASO 5

                  REPITA
                     excl()
                     Escreval("[1] - EXCLUIR EQUIPAMENTO")
                     Escreval("[2] - RETORNAR AO MENU")
                     Escreval()
                     Escreva("OPÇÃO: ")
                     Leia(op_pesq)
                     LimpaTela
                     excl()

                     Escolha op_pesq

                     CASO 1
                        Se adic = 0 ENTAO
                           Escreval("Nenhum equipamento cadastrado Para excluir.")
                        Senao
                           Condic()
                           Escreval("Identifique o equipamento a ser excluido?")
                           Escreval()
                           Escreva("OPÇÃO: ")
                           Leia(pc_e)
                           LimpaTela

                           Para l de pc_e ate adic - 1 faca
                              pc[l] <- pc[l + 1]
                              condicao[l] <- condicao[l + 1]
                           FimPara
                           pc[adic] <- ""
                           condicao[adic] <- ""
                           adic <- adic - 1
                           excl()
                           Escreval("Equipamento excluído com sucesso!")
                           Tempo(2000)
                           Tempo(1)
                        FimSe
                        Tempo(1000)
                        Tempo(1)
                        LimpaTela

                     CASO 2
                        excl()
                        Escreval("RETORNANDO AO MENU...")
                        Tempo(1500)
                        Tempo(1)
                        LimpaTela
                     OutroCASO
                        excl()
                        Escreval("OPÇÃO INVALIDA...")
                        LimpaTela
                        Tempo(2000)
                        Tempo(1)
                     FimEscolha
                  ate op_pesq = 2

               CASO 6

                  confirm()
                  Escreval("LOGIN EM USO: ",maiusc(login))
                  Escreval()
                  a <- 7
                  Tempo(3000)
                  Tempo(2)
                  LimpaTela


               CASO 7

                  sys <- 3
                  sairlogin <- verdadeiro

               OutroCASO

                  principal()
                  Escreval("OPÇÃO INVÁLIDA...")
                  Tempo(2000)
                  Tempo(1)
                  LimpaTela
               FimEscolha

            ate a = 7
         FimSe

      CASO 3

         sistema()
         Escreval(">>>   SAINDO DO SISTEMA...   <<<")
         sairlogin <- verdadeiro
         Tempo(1000)
         Tempo(1)
         LimpaTela

      OutroCASO

         Se a = 7 entao
            Tempo(100)
         senao
            principal()
            Escreval("OPÇÃO INVÁLIDA...")
            Tempo(2000)
            Tempo(1)
         FimSe
      FimSe
   FimEscolha
   LimpaTela

ate sairlogin = verdadeiro
ate sys = 3



FIMALGORITMO