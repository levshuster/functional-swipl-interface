from SWIPL_wrapper.SWIPL_wrapper import SWIPL_wrapper as SWIPL

print(SWIPL()\
    .load_file("email_validation.pro")\
    .validate_queries("is_valid_email", [
        "abcd@gmail.ghx.com",
        "1234@@ghx.com",
        "abcd1234@ghx",
    ]))

# from SWIPL import SWIPL_wrapper as SWIPL # type: ignore
