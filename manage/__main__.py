from . import app
from .get_file import get_file_path

import pytest

@app.command()
def check(section: int, exercise: int):
    print(f"checking {section}.{exercise}...")
    exercise_path = get_file_path(section, exercise)
    pytest.main([exercise_path, "-q"])
    
@app.command()
def progress():
    ...
    
if __name__ == "__main__":
    app()