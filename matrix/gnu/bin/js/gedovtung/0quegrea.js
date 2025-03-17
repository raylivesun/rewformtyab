"use strict";
Object.defineProperty( exports, "__esModule", { value: true } );

const differentialEquation = "{(x - 1) y''[x] - x y'[x] + y[x] == (x - 1)^2, y[0] == 0, y[1/2] == 0}";

function solveDifferentialEquation(eq) {

    console.log("Solving equation: " + eq);
}


solveDifferentialEquation(differentialEquation);

exports.solveDifferentialEquation = solveDifferentialEquation;

const differentialEquationValue = "{(x - 1) y''[x] - x y'[x] + y[x] == (x - 1)^2, y[0] == 0, y[1/2] == 0}";
solveDifferentialEquation( differentialEquationValue );

