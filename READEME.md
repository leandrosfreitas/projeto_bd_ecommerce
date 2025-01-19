# E-commerce Database

Este repositório contém scripts SQL e diagramas relacionados à criação e manipulação de um banco de dados para um cenário de e-commerce.

## 📁 Estrutura do Repositório
- **`fisic-ecommerce-create.sql`**: Script para criação do banco de dados, tabelas e suas relações.
- **`logic-ecommerce.png`**: Modelo lógico do banco de dados, representando as entidades, atributos e relacionamentos.
- **`ecommerce_insert.sql`**: Script para inserção de dados nas tabelas do banco de dados.
- **`ecommerc_consult.sql`**: Exemplos de consultas SQL para manipulação e análise dos dados no banco.

---

## 📜 Descrição do Banco de Dados

O banco de dados é projetado para atender um cenário de e-commerce, com as seguintes tabelas principais:

### **Tabelas Criadas**
1. **`clients`**: Armazena informações dos clientes, como nome, CPF e endereço. 
   - Cada cliente possui um CPF único.
   
2. **`product`**: Detalha os produtos disponíveis no e-commerce, incluindo categorias, avaliação e tamanho.

3. **`orders`**: Representa os pedidos realizados pelos clientes, incluindo status, descrição e valor de envio.

4. **`productStorage`**: Gerencia informações sobre estoque, incluindo localização e quantidade de produtos.

5. **`supplier`**: Contém informações sobre fornecedores, como nome social, CNPJ e contato.

6. **`seller`**: Detalha vendedores cadastrados na plataforma, incluindo CPF/CNPJ e informações de contato.

7. **Tabelas Relacionais**:
   - **`productSeller`**: Relaciona produtos aos vendedores que os oferecem.
   - **`productOrder`**: Vincula produtos aos pedidos realizados pelos clientes.
   - **`storageLocation`**: Relaciona produtos ao local de armazenamento.
   - **`productSupplier`**: Relaciona produtos aos fornecedores que os fornecem.