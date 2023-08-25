import typer

app = typer.Typer()

@app.command()
def command(exercise: int, number: int):
    print(f"Going to exercise {exercise}.{number}")
