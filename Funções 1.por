programa
{
 real saldo = 508041.87
	
 funcao inicio()
 {
  menu_principal()
 }

 funcao menu_principal()
 {
  inteiro opcao = 0

  enquanto (opcao != 4)
  {
   escreva("--- SISTEMA BANCÁRIO ---")
   escreva("\n1. Ver Saldo")
   escreva("\n2. Ver Extrato")
   escreva("\n3. Simular Empréstimo")
   escreva("\n4. Sair")
   escreva("\n-------------------------------")
   escreva("\nEscolha uma opção: ")
   leia(opcao)
   limpa()

   escolha (opcao)
   {
    caso 1:
     tela_saldo()
     pare
    caso 2:
     tela_extrato()
     pare
    caso 3:
     tela_emprestimo()
     pare
    caso 4:
     escreva("Obrigado por utilizar nossos serviços!\n")
     pare
    caso contrario:
     escreva("Opção inválida! Tente novamente.\n")
   }
  }
 }

 funcao tela_saldo()
 {
  escreva("=== SALDO ATUAL ===\n")
  escreva("Sua conta: 00123-X\n")
  escreva("Saldo disponível: R$ ", saldo, "\n")
  escreva("===================\n")
  pular_tela()
 }

 funcao tela_extrato()
 {
  escreva("=== EXTRATO DOS ÚLTIMOS 30 DIAS ===\n")
  escreva("01/05 - Supermercado: R$ -150.00\n")
  escreva("02/05 - Depósito recebido: R$ +500.00\n")
  escreva("03/05 - Assinatura Streaming: R$ -34.90\n")
  escreva("------------------------------------\n")
  escreva("Saldo Final: R$ ", saldo, "\n")
  pular_tela()
 }

 funcao tela_emprestimo()
 {
  real valor_desejado
  escreva("=== SIMULAÇÃO DE EMPRÉSTIMO ===\n")
  escreva("Limite pré-aprovado: R$ 5.000,00\n")
  escreva("Digite o valor que deseja simular: ")
  leia(valor_desejado)

  se (valor_desejado > 5000)
  {
   escreva("\nValor acima do limite permitido para sua conta.\n")
  }
  senao
  {
   escreva("\nSimulação concluída!")
   escreva("\nValor: R$ ", valor_desejado)
   escreva("\nParcelas: 12x de R$ ", (valor_desejado * 1.15) / 12, " (com juros)\n")
  }
  pular_tela()
 }

 funcao pular_tela()
 {
  cadeia tecla
  escreva("\nDigite qualquer tecla para voltar ao menu...")
  leia(tecla)
  limpa()
 }
}