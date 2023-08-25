from . import app

@app.command()
def check(section: int, exercise: int):
    print(f"checking {section}.{exercise}...")
    
    
@app.command()
def progress():
    ...
    
if __name__ == "__main__":
    app()