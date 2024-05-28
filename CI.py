import pytest

def addition(a, b):
    return a + b

def soustraction(a, b):
    return a - b

def multiplication(a, b):
    return a * b

def division(a, b):
    if b == 0:
        return "Erreur: Division par zéro!"
    return a / b

def main():
    
    a = float(input("Entrez le premier nombre: "))
    b = float(input("Entrez le deuxième nombre: "))
    
    print(f"{a} + {b} = {addition(a, b)}")
    print(f"{a} - {b} = {soustraction(a, b)}")
    print(f"{a} * {b} = {multiplication(a, b)}")
    print(f"{a} / {b} = {division(a, b)}")

if __name__ == "__main__":
    main()
