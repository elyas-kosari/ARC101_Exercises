calculatorServices.CalculatorImplPort calculator = new calculatorServices.CalculatorImplPort();
Double x = 1.0;
Double y = 2.0;
Double result = calculator.doAdd(x, y);
System.debug(result);
