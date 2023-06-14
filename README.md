# O Faxineiro Implacável 🧹
Quando uma mancha indesejada aparece, ele não mede esforços para removê-la, mesmo que isso signifique desafiar as leis dos dados.



# Um lugar para colocar nosso livros📚
* Crie um banco de dados chamado Biblioteca.
Simples, né?

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/75d8de19-a5d6-4d6f-a219-931361ff0ff9)



# Tirandos os livros das prateleiras📚
Abaixo estamos criando uma pequena biblioteca com livros. 
A criação da nossa estante é este Script abaixo, que possui erros que impedem renderização completa. 
Você consegue encontrá-los?

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/90c2ee7f-0775-4233-981d-93d7d9471f46)

# Retirando o pó🧹
Ainda trabalhando com código acima:


* Adicione a regra AUTO_INCREMENT para a chave primária remova os dados referentes ao ID dos livros do script de inserção.

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/1ea1d68a-3be4-4362-9d92-eeafad2ddb07)


* Crie uma tabela para 'Autores' e outra para 'Editoras', para separar essas informações. Elas devem conter chaves primárias para gerar relacionamentos.

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/3c1e90c9-edb6-4987-9bf7-96404cc0c376)


* Utilizando ALTER TABLE, elimine as colunas 'autor' e 'editora' da tabela 'Livros' e adicione as colunas 'autor_id' e 'editora_id' para fazer a referências como chave estrangeiras das referidas tabelas.

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/d049f8b3-b457-4074-838c-1e5041e62d28)


* Retire os valores para autores e para as editoras do script inicial e insira-os nas novas tabelas.
  
 ![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/3eb8a7e1-c546-4915-be4b-4078740d3260) 



* Adicionando na tabela AUTORES
  
  ![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/f2c396ce-3b33-4fa8-95ae-068e1339f784)
  ![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/4342993d-3a53-446b-b20e-187bae12c831)
 
  

* Adicionando na tabela EDITORAS
  
  ![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/81b6151f-edd8-49bd-9d65-c0be351ed92e)
  ![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/991ae460-254a-4387-9baf-896c519583c7)

# Colocando tudo no lugar📚
O script abaixo seria para adicionar novos livros na sua biblioteca, mas com as mudanças feitas para normalização e higienização da base é necessário reestruturar a base abaixo para evitar problemas.

![image](https://github.com/GoncalvessLeo/BibliotecaLimpa/assets/125033731/f68b47be-cfd8-4168-80ae-ff4c7d40e10a)








