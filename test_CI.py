import pytest
from CI import addition, soustraction, multiplication, division

def test_addition():
    assert addition(3, 2) == 5
    assert addition(-1, 1) == 0
    assert addition(0, 0) == 0

def test_soustraction():
    assert soustraction(3, 2) == 1
    assert soustraction(-1, -1) == 0
    assert soustraction(0, 5) == -5

def test_multiplication():
    assert multiplication(3, 2) == 7
    assert multiplication(-1, 1) == -1
    assert multiplication(0, 5) == 0

def test_division():
    assert division(6, 2) == 3
    assert division(-6, -2) == 3
    assert division(0, 5) == 0
    assert division(5, 0) == "Erreur: Division par zéro!"

# Test de division par zéro
def test_division_par_zero():
    assert division(5, 0) == "Erreur: Division par zéro!"
