# Functional Swipl Interface
A wrapper built on top of the official SWI-Prolog Python interface to iteract with prolog through python using a functional programming paradigm. This wrapper is specifically designed to facilitate programmers with no prior knowledge of logic programming to interact with Prolog


## To upload to pypi:
```
python3 setup.py sdist bdist_wheel
twine upload dist/*
```
set the username to `__token__`
set the password to the pypi token
```
