pragma circom 2.0.0;

/*This circuit template verifies a custom created circuit.*/  

template ckt () { 

   // inputs
   signal input a; 
   signal input b; 

   // gate signals
   signal x;
   signal y;

   // output
   signal output q;

   // gates
   component andGate = AND();
   component notGate = NOT();
   component orGate = OR();

   // logic
   andGate.a <== a;
   andGate.b <== b;
   x <== andGate.out;

   notGate.in <== b;
   y <== notGate.out;

    orGate.a <== x;
    orGate.b <== y;
    q <== orGate.out;

}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = ckt();