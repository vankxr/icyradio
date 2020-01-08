
var fCLKIN = 50000000;
var CLKIN_DIVA = 2;
var fPFD = fCLKIN / CLKIN_DIVA;
var fVCO = [800000000, 888000000];
var fCLK = [20000000, 80000000, 49152000, 0, 0, 50000000, 12000000, 0];
var sCLK = [0, 0, 0, 0, 0, 0, 1, 1];

function getGCD(m, n)
{
    while(n)
    {
        var _m = m;
        m = n;
        n = _m % n;
    }

    return m;
}
function getMixedNumber(m, n) // Transform (m / n) in (a + (b / c)) where (b / c) is irreducible
{
    var gcd = getGCD(m, n);
    m /= gcd;
    n /= gcd;

    return {
        a: Math.floor(m / n),
        b: m % n,
        c: n
    };
}

console.log("PLLA: fPFD *", getMixedNumber(fVCO, fPFD))
console.log("CLK0: PLLA /", getMixedNumber(fVCO, fCLK[0]))
console.log("CLK1: PLLA /", getMixedNumber(fVCO, fCLK[1]))
console.log("CLK2: PLLA /", getMixedNumber(fVCO, fCLK[2]))
console.log("CLK5: PLLA /", getMixedNumber(fVCO, fCLK[5]))
console.log("CLK6: PLLA /", getMixedNumber(fVCO, fCLK[6]))


console.log("PLL reference = " + (fCLKIN / 1000000) + " MHz");