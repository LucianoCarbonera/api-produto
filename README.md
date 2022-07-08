# api-produto
REST API para cadastro/atualização/listagem de Produtos.

Tecnologias:
• Banco de dados PostgreSQL
• Java
• Maven
• Spring
• JPA
• REST com JSON
• FlyWay
• BeanValidation


## Para consumir a API, deverá ser passado um json no body da requisição com os seguintes parâmetros:
 ~~~
 nome -> string
 preco -> float
 produtoServico -> char
 ~~~
 ## OBS: o parâmetro 'produtoServico' aceitará apenas um caractere sendo ele o diferenciador de produto e serviço:
 ### Produto = "p"
 ### Serviço = "s"
 
 ~~~
 Exemplo:  
 {
    "nome":"Produto 1",
    "preco":"10.00",
    "produtoServico":"p"
}
~~~
## PS: Deverá ser criado um banco de dados Postgresql localmente, entitulado 'local'

###  Após startar o projeto, a requisição deverá ser realizada de forma local.

### Primeiro deverá ser realizado o cadastro do produto/serviço, utilizando o verbo POST, para o seguinte caminho:
~~~
localhost:8080/produtos
~~~
### Dica: Para as requisições Utilizar o Rester, extensão do google, ou outra ferramenta que esteja familiarizado, ex: Postman, Insomnia.
![image](https://user-images.githubusercontent.com/55861856/177896029-5a8f2d5b-dafc-4b87-8270-459ab68ac161.png)

### Após a criação de produtos/serviços via API, é possível listar todos os objetos cadastrados, realizando uma requisição com o verbo GET para o seguinte caminho:
~~~
localhost:8080/produtos
~~~
![image](https://user-images.githubusercontent.com/55861856/177896350-df58dbf9-7e6f-4b7d-804b-daebdf900137.png)

### Também é possível listar objetos individualmente, realizando uma requisição com o verbo GET e passando o ID do objeto na URI:
~~~
localhost:8080/produtos/{id_produto}
~~~
![image](https://user-images.githubusercontent.com/55861856/177896702-1eb99dd2-c6d0-418e-a0e1-0e2f4f802837.png)

### Para atualizar um produto já cadastrado basta realizar uma requisição com o verbo PUT e passar o ID do objeto na URI:
~~~
localhost:8080/produtos/{id_produto}
~~~
![image](https://user-images.githubusercontent.com/55861856/177897286-b6ecdc04-24b3-47db-8282-fb52fa1b83e4.png)

### Por fim, é possível excluir produtos cadastrados, realizando uma requisição com o verbo DELETE e passando o ID do objeto na URI:
~~~
localhost:8080/produtos/{id_produto}
~~~
![image](https://user-images.githubusercontent.com/55861856/177897701-c23a2d8d-fc5a-4434-a6cc-ab42ec26860b.png)

## Foi Realizado tratamentos para requisições inválidas, com mensagens para tratativas de erros.
