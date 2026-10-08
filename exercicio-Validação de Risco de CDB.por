/*
Validação de Risco de CDB (Banco Master) 
Contexto: Os órgãos de regulamentação financeira e auditorias internas precisam monitorar constantemente as taxas de juros oferecidas por instituições financeiras em Certificados de Depósito Bancário (CDBs).  
Taxas excessivamente altas em relação ao teto regulatório do mercado costumam indicar captações agressivas de  liquidez para cobrir problemas de caixa, exigindo intervenção imediata. 
Objetivo: Escreva um algoritmo utilizando variáveis simples e estruturas condicionais compostas (se / senao ou if / else) para simular a análise de um fundo de investimento vinculado ao Banco Master.
Requisitos e Regras de Negócio: 
1. O programa deve declarar e inicializar as seguintes variáveis comuns: 
o O nome do fundo analisado (ex: "Master Alpha Renda Fixa"). 
o A taxa de juros oferecida pelo CDB (em %). 
o O teto regulatório permitido pelo mercado (fixado em 13.0%). 
o Uma variável lógica (falso por padrão) para indicar se a operação apresenta risco crítico. 
2. O algoritmo deve exibir na tela os dados da operação (nome do fundo, taxa oferecida e o teto regulatório). 
3. Utilizando uma estrutura condicional: 
o Se a taxa do CDB for maior que o teto regulatório, o programa deve emitir um alerta crítico informando que a taxa é incompatível e alterar a variável de risco para verdadeiro. 
o Caso contrário (senao), deve informar que a taxa está dentro da normalidade regulatória e manter a variável de risco como falso. 
4. Ao final, com base no estado da variável de risco, o programa deve emitir o parecer definitivo do auditor: 
o Se houver risco: "Parecer do Auditor: Ativo bloqueado para novas emissões." 
o Se estiver regular: "Parecer do Auditor: Ativo liberado para comercialização." 
5. Suba seu algoritmo para o GitHub com o nome do repo: 
algoritmo-if-else-banco-master
*/
programa
{
    funcao inicio()
    {
        cadeia nome_fundo = ""
        real taxa_cdb = 0.0
        real teto_regulatorio = 13.0
        logico risco_critico = falso

        escreva("=== SISTEMA DE AUDITORIA: ANÁLISE DE CDB ===\n\n")

        escreva("Digite o nome do fundo de investimento: ")
        leia(nome_fundo)

        escreva("Digite a taxa de juros do CDB (%), usando ponto para decimais: ")
        leia(taxa_cdb)

        escreva("\n----------------------------------------\n")
        escreva("RELATÓRIO PRELIMINAR\n")
        escreva("Fundo analisado: ", nome_fundo, "\n")
        escreva("Taxa oferecida: ", taxa_cdb, "%\n")
        escreva("Teto regulatório permitido: ", teto_regulatorio, "%\n")
        escreva("----------------------------------------\n")

        se (taxa_cdb > teto_regulatorio)
        {
            risco_critico = verdadeiro

            escreva("\nALERTA CRÍTICO: A taxa do CDB é incompatível com o teto regulatório!\n")
        }
        senao
        {
            risco_critico = falso

            escreva("\nA taxa está dentro da normalidade regulatória.\n")
        }

        se (risco_critico)
        {
            escreva("\nParecer do Auditor: Ativo bloqueado para novas emissões.\n")
        }
        senao
        {
            escreva("\nParecer do Auditor: Ativo liberado para comercialização.\n")
        }

        escreva("\nAnálise finalizada.\n")

        escreva("\n----------------------------------------\n")
        escreva("Fundo encaminhado para Investimento Privado:\n")
        escreva("Havengate Development Fund LP (Dark Horse Investment).\n")
        escreva("Fique tranquilo, caso o valor investido seja menor que R$ 250.000,00,\n")
        escreva("você está assegurado pelo FGC. Abraço, Dany V.\n")
    }
}