seed.rb cidades e estados do Brasil
===================================

Com este seed.rb basta você executar o comando **rake db:seed** para que s estados e cidades sejam inseridos no seu banco de dados.

Usando com Mongoid
------------------
Crie *estado.rb* e *cidade.rb* dois arquivos dentro de *app/models*

+ *app/models/cidade.rb*
+ *app/models/estado.rb*

Estes dois arquivos conterão o código para o mongoid:

### estado.rb
        class Estado
          include Mongoid::Document
  
          field :sigla
          field :nome
  
          has_many :cidades
        end

### cidade.rb
        class Cidade
          include Mongoid::Document

          field :nome
          belongs_to :estado
        end

Usando fora do Mongoid
-----------------------
### estado.rb
        class Estado
  
          sigla:string
          nome:string
  
          has_many :cidades
        end

### cidade.rb
        class Cidade

          nome:string
          belongs_to :estado
        end

Executando
----------
Coloque o arquivo *seed.rb*  dentro de *app/lib*.
Abra seu terminal, entre na pasta do projeto e digite:

        rake db:seed

### Fonte
Parte deste código foi obtida em: [https://github.com/eduresende/migration-estados-cidade-do-brasil]

[https://github.com/eduresende/migration-estados-cidade-do-brasil]: https://github.com/eduresende/migration-estados-cidade-do-brasil]
