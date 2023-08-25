# pythonistas
Short python exercises to get you familiar with programming - inspired by rustlings

This book is supposed to go along with "A Byte of Python". The ebook version can be found [here](https://python.swaroopch.com/).

## Mac/Linux

To get started, run 
```
curl -L https://raw.githubusercontent.com/JayAndJef/pythonistas/main/install.sh | bash
```

If there is an error, it is most likely that the program cannot find python or git on your system

After the command finishes, 'cd' into the newly created `pythonistas` directory by running `cd pythonistas`, and you can start working on the exercises. Run the CLI to check your answers by using `python -m manage check <section_number> <exercise_number>`.

## Windows

Windows support is not full yet. Either extract install.sh and run it, or clone the repo manually and install the required dependencies

## Troubleshooting

if the CLI does not run and gives an error, double check that your current working directory is in `pythonistas`. The CLI will also remind you of this.

## Exercise structure

This course is divided up into many "byte" (get it?) sized exercises. The sections have names that correspond with the chapters in "A Byte of Python". In each exercise, edit between the commented lines to make the test pass. We try to be as clear as possible, showing you where to edit via the use of `??` double question marks, although for some topics this might be slightly different. Your goal is to pass the tests. At the end of every exercise, there are tests with `assert` statements: if the values on either side of the assert statements are true, the test will pass. Here's an example:

```py
x = 1
y = 1

def test_x():
    assert x = y
```

... this test will pass. If x and y were not equal, then the test would not.

Run `python -m manage check <section_number> <exercise_number>` in your shell to check an exercise. If the test does not pass, there will be detailed information showing:
 * Which tests passed/didn't pass
 * What the unequal values were.

For example:
```py
___________________________________________________________ test_x ___________________________________________________________

    def test_x():
>       assert x == 3
E       assert 1 == 3

exercises/section_2_test_more/topic_1.py:8: AssertionError
================================================== short test summary info ===================================================
FAILED exercises/section_2_test_more/topic_1.py::test_x - assert 1 == 3
1 failed in 0.10s
```

... 1 was assigned to x in this case, and it was not equal to 3.

## Credits

Thanks to these following libraries:

 * Typer - CLI
 * Pytest - Easy testing and error messages