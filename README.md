# Relatório RSA

Centro Universitário - Católica de Santa Catarina em Joinville  
Alunos: Dayan Freitas e Alexandre Grawe  
Matéria: Segurança da Informação  
Professor: Rodrigo Mello Mattos Habib Gregori

## Relatório de Projeto

### Planejamento e operação

Para o processo de devolvimento foi necessário primeiramente fazer um estudo mais afundo sobre o algoritmo de criptografia RSA, de modo a compreender melhor o seu funcionamento. Após estudo e levantamento foi encolhida a linguagem. Dessa forma, foi escolhida a linguagem ruby, que já é de conhecimento superficial, porém, com intuído de aperfeiçoar e conhecer novas *feat* da linguagem.

**Como está organizado o código?** 

Sucintamente o projeto foi dividido em 2 repositórios, sendo eles:

- Repositório: [RSA](https://github.com/Dayanfreitas/RSA)
    
    Nesse repositório você pode encontra o código-fonte da **GEM,** que foi utilizada no repositório príncipal (*RSA_APP*), nele contém a regra de implementação do algorítmo de criptografia *RSA*.
    
- Repositório: https://github.com/Dayanfreitas/RSA_APP
    
    Nesse repositório você pode encontra o código-fonte do aplicativo.
    

**Que tipos de problemas foi encontrado?**

Não houve muitas problemas, apenas limitações que foram possíveis de serem contornadas, como o trabalho de números gigantes e alocação de memória.

**Que linguagem utilizou e por quê?**

Foi utilizada a linguagem Ruby, com o intuito de treinar a lógica e aprender novos recursos da linguagem. Ambos os desenvolvedores trabalham com essa linguaguem.

### Teste

Para os testes foram adotados  o teste manuais e os teste de unidade. Os teste de unitários estão integrado que *github actions* de modo da executa-lós sempre que houver commit ou abertura de *pull request*(PR) para o branch *main*. Dessa foram garantido a integridade do código e confiabilidade do testes.

**Como foi testado o código?** 

- Unitário - Apenas no diretório da **GEM**
- Aplicativo(RSA_APP) - Teste manuais e trocas de chave com colegas de turma

**Que tipos de bugs foi encontrado?** 

- Alocação de memória
- Split chunk text

**O que funciona e o que não funciona?** 

- A encriptação e decriptação do programa funciona, foi testado com chaves e textos gerados por outros colegas de sala.
- A geração de chaves publicas e privadas funcionam.

**Há algum problema no código que não foi possível resolver?**

- Alguns métodos que são usados para a geração de key, não suportam a leitura de um *BigNumber*. Um ponto positivo é que esses métodos podem ser otimizados e gerar um limite maior para a key, por outro lado não tivemos tempo hábil para fazer essa melhoria.

## Avaliação do projeto

O projeto foi bem proveitoso e de extrema importância para o aprendizado. Foi muito interessante aprender a fazer criação de **gem,** gerar *build* de novas versões, implementar de testes unitários com actions do github, fazer uso do docker para melhorar processo de desenvolvimento. Ademais, é totalmente interessante trabalhar com criptografia e o sistema de RSA.


# Run app
### Init app 

```bash
$ make up
```
### Open bash docker 

```bash
$ make bash
```

### install gem 

```bash
$ bundle
```

### Run app encripta

```bash 
$ make up
ruby src/encripta.rb <path_keys> <path_name_file_input> <path_name_file_output>

# exemplo
root@49de64e48ef6:/usr/src/app$ ruby src/encripta.rb keys/public.txt assets/input.txt assets/output.txt
```

### Run app decripta

```bash 
$ make up

ruby src/decripta.rb <path_keys> <path_name_file_input> <path_name_file_output>

# exemplo
root@49de64e48ef6:/usr/src/app$ ruby src/decripta.rb keys/private.txt assets/output.txt assets/input.txt
```
