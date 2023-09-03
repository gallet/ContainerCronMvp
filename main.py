import os

my_string = "Hello, World! " + os.getenv('MY_ENV_VAR')
print(my_string)
