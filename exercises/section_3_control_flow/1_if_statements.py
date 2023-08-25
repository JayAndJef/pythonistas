a = 9
b = 5
c = "I haven't reached the if statement yet!"

#Edit between these lines to make the test pass

if a ?? b:
    
#Edit between these lines to make the test pass
    c = 'inside if statement!' # this line should be part of the if statement

def test_c():
  assert c == 'inside if statement!'
