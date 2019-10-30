
# bloc_boirplate
Uma biblioteca que contém um padrão de bloco bem definido, mostrando como é fácil fazer solicitações API-REST e manipulação de erros usando BLoC. O código padrão já vem com um exemplo de API-REST.

Em caso de erro de conexão, erro no servidor, e qualquer problema de comunicação, automaticamente será exibido um aviso: 
"sem conexão, deseja tentar se reconectar?". 

Para mudar a API para a do seu servidor, apenas mude lib/shared/api_constants.dart e alterar sua baseurl e endereço de api para o seu. Em seguida, você poderá pegar o seu código json, e simplesmente colar em:
``` 
https://app.quicktype.io/
```
e alterar o modelo em: lib/models/post_model.dart pelo arquivo Dart gerado. 
Em lib/repository/post_repository.dart você pode duplicar ou criar métodos novos get/post/put/delete.

## Como usar?

``` 
git clone https://github.com/JonnyBorges/bloc_boirplate
```

## Por que usamos http ao invés de dio?
Na última atualização do dio, para dar compatibilidade com o flutter_web houve uma atualização com grande quebra de código. Além disso, há um bug na "tratamento de erros" que acaba causando crash em alguns dispositivos (testando em um aplicativo com 2 milhões de usuários onde 2809 apresentaram crash). 
http é feito pela equipe oficial do flutter e não apresenta nenhum erro em produção.

## Por que usamos Easy ao invés de flutter_bloc, bloc_pattern ou provider?
Easy é uma biblioteca de fácil implementação de gerenciamento de estado, e tem 100% de interoperabilidade com o "scopped_model", "provider" e "bloc_pattern", dessa forma, além de usar o padrão BLoC (design pattern), você pode reaproveitar código de seus aplicativos preexistentes. Lembre-se, BLoC é um design pattern, e não deve ser confundido com gerenciador de estados. 
## Por que usar essa estrutura?
Usando essa estrutura você poderá inserir um modulo em seu aplicativo de forma simples e fácil. Como ela dá suporte aos diversos gerenciadores de estado, você poderá criar um modulo com provider, e compartilhar com alguém que esteja usando RxDart com Streams e BLoC. Usando esse padrão, qualquer código que você fizer, poderá ser 100% reaproveitável em outros projetos. 

## Agradecimentos especiais:
Flutterando por criar a estrutura modular no slidy. 

## TODO:
Inserir interoperabilidade com flutter_bloc (próxima atualização do Easy). 
