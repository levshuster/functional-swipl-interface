# Functional Swipl Interface
A wrapper built on top of the official SWI-Prolog Python interface to iteract with prolog through python using a functional programming paradigm. This wrapper is specifically designed to facilitate programmers with no prior knowledge of logic programming to interact with Prolog

# Usage Example
```console
pip install functional-swipl-interface
```

```python
import functional-swipl-interface as SWIPL

print(SWIPL()\
    .load_file("email_validation.pro")\
    .validate_queries("is_valid_email", [
        "abcd@gmail.ghx.com",
        "1234@@ghx.com",
        "abcd1234@ghx",
    ]))
```

```console
[('abcd@gmail.ghx.com', True), ('1234@@ghx.com', False), ('abcd1234@ghx', False)]
```

## To upload to pypi:

<!-- todo add test -->

```
python3 setup.py sdist bdist_wheel
twine upload dist/*
```
set the username to `__token__`

set the password to the pypi token
