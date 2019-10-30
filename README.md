# bloc_boirplate
A library that contains a well-defined bloc pattern, showing how easy it is to make API-REST requests and error handling using BLoC.

In case of connection error, server error, and any communication problem, a warning will automatically be displayed: "No connection, would you like to try reconnecting?".

To change the API to that of your server, just change lib/shared/api_constants.dart and change your baseurl and api address to yours. Then you can get your json code, and simply paste in:

``` 
https://app.quicktype.io/
```
and change the model in: lib/models/post_model.dart by the generated Dart file. In lib/repository/post_repository.dart you can duplicate or create new get/post/put/delete methods.

## How to use?

``` 
git clone https://github.com/JonnyBorges/bloc_boirplate
```
## Why do we use http instead of dio?
To give compatibility with flutter_web, the last update of dio had a major code breaking. In addition, there is a bug in "error handling" that crashes some devices (testing on a 2 million user application where 2809 crashed).
http is made by the flutter's official team, doesn't present any production tested bugs.

## Why do we use Easy instead of flutter_bloc, bloc_pattern or provider?
Easy is an easy-to-implement state management library, and has 100% interoperability with "scopped_model", "provider" and "bloc_pattern", so in addition to using the design pattern (BLoC), you can reuse code of your existing applications. Remember, BLoC is a design pattern, and should not be confused with state manager.

## Why use this structure?
Using this structure you can insert a module into your application simply and easily. Because it supports the various state managers, you can create a module with provider, and share it with someone using RxDart with Streams with BLoC. Using this pattern, any code you make can be 100% reusable in other projects.

## Special thanks:
Flutterando team by creating the modular structure on slidy <3

## TODO:
Enter interoperability with flutter_bloc (next Easy update).
