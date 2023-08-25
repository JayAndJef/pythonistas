a = 3
b = 2

# Edit between these lines to make the test pass

mult_operator = a ?? b # a times b
pow_operator = a ?? b # raise a to the power of b

# Edit between these lines to make the test pass

def test_mult_operator():
    assert mult_operator == 6

def test_pow_operator():
    assert pow_operator == 9
