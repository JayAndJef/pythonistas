from pathlib import Path

def get_file_path(section: int, exercise: int) -> Path:
    path = Path("./exercises")
    for section_path in path.iterdir():
        if str(section) in str(section_path):
            for exercise_file in section_path.iterdir():
                if str(exercise) in str(exercise_file):
                    return exercise_file
    raise FileNotFoundError("cannot find exercise!")

