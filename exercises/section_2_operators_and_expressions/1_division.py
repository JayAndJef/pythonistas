a = 5
b = 2

# Edit between these lines to make the test pass

div_operator = a ?? b # normal division
int_div_op = a ?? b # floor division

# Edit between these lines to make the test pass

def test_div_operator():
    assert div_operator == 2.5

def test_integer_div():
    assert int_div_op == 2
