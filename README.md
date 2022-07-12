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
