# OraculoTesouro
Desafio 4

# Contrato Inteligente para Clareza das Transações no Mercado Secundário

Este repositório contém contratos inteligentes desenvolvidos para a proposta de aumentar a clareza das transações no mercado secundário de títulos. A proposta visa envolver governos e o sistema financeiro para melhorar a transparência e permitir o monitoramento em tempo real das transações no mercado secundário.

## Visão Geral da Proposta

### Quem
- **Governos**
- **Sistema Financeiro**

### Para
- **Melhorar a clareza das transações no mercado secundário de títulos.**
- **Permitir o monitoramento em tempo real.**

### Como
- **Utilização de um oráculo para conexão com fontes de dados externas importantes.**
- **Foco na clareza das transações no mercado secundário.**

### Diferencial
- **Monitoramento em tempo real das transações.**

## Arquitetura do Contrato Inteligente

### Contrato TesouroDiretoMarket
- **Funcionalidades:**
  - Criação e verificação de transações no mercado secundário de títulos.
  - Relatório de transações para o Banco Central.
  - Utilização de oráculos para verificar transações.
  - Registro de transações para usuários compradores e vendedores.

### Contratos Base (PrivacyBase, ChainlinkBase, AccessControlBase)
- **Funcionalidades:**
  - Hashing de identificadores para privacidade.
  - Integração com o protocolo Chainlink para oráculos.
  - Controle de acesso para admin e reguladores.

## Como Funciona

1. **Criação de Transações:**
   - Usuários podem criar transações no mercado secundário, especificando o comprador, vendedor, valor e descrição.

2. **Verificação de Transações:**
   - O contrato utiliza um oráculo Chainlink para verificar a validade das transações.
   - A transação é registrada como verificada se a quantidade for aprovada pelo oráculo.

3. **Relatório para o Banco Central:**
   - Transações são reportadas ao Banco Central para monitoramento regulatório.

4. **Monitoramento em Tempo Real:**
   - A implementação permite o monitoramento em tempo real das transações no mercado secundário.

## Uso

1. **Deploy dos Contratos:**
   - Implante os contratos TesouroDiretoMarket, PrivacyBase, ChainlinkBase e AccessControlBase.
   - Configure as permissões adequadas para garantir a segurança do sistema.

2. **Registro de Admins e Reguladores:**
   - Adicione os endereços de administradores e reguladores usando as funções fornecidas pelos contratos.

3. **Criação de Transações:**
   - Usuários criam transações especificando comprador, vendedor, valor e descrição.

4. **Verificação de Transações:**
   - O contrato utiliza um oráculo Chainlink para verificar a validade das transações.

5. **Relatório para o Banco Central:**
   - Transações verificadas são reportadas ao Banco Central para monitoramento regulatório.

6. **Monitoramento em Tempo Real:**
   - O sistema permite o monitoramento em tempo real das transações no mercado secundário.

