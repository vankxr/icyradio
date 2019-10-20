
var fREFIn = 50000000;
var D = 0; // fREFIn doubler (0 or 1)
var T = 1; // fREFIn divide by 2 (0 or 1)
var R = 1; // fREFIn divide counter (1 to 1023)
var fPFD = fREFIn * (1 + D) / (R * (1 + T));
var fRFBandStart = 88000000 * 2; // Mixer uses divide by 2 quadrature gen, so compensate for that
var RFChannelSpacing = 200000 * 2; // Mixer uses divide by 2 quadrature gen, so compensate for that

// Find RF output stage divider that puts fVCO in its operating range (2.2 GHz to 4.4 GHz)
var RFDiv = 0;
var fVCO = 0;

for(var i = 1; i < 64; i <<= 1)
{
    fVCO = fRFBandStart * i;

    if(fVCO >= 2200000000 && fVCO <= 4400000000) // VCO operating range
    {
        RFDiv = i;

        break;
    }
}

if(!RFDiv)
    return console.log("Selected RF output frequency is too low!");

if(fVCO / fPFD > 65535) // INT is 16 bit long
    return console.log("Selected PFD frequency is too low!");

var fRFMin = 2200000000 / RFDiv;
var fRFMax = 4400000000 / RFDiv;

// Find highest possible MOD by finding the greatest factor of fPFD less than 4096 (MOD is 12 bit long)
var MOD = 0;

for(var i = fPFD; i > 1; i--)
{
    if(!(fPFD % i))
    {
        if(i < 4096)
        {
            MOD = i;

            break;
        }
    }
}

if(!MOD)
    return console.log("Cannot find a valid MOD parameter! (PFD frequency too low?)");

var fRes = fPFD / MOD; // VCO resolution
var fResOut = fRes / RFDiv; // Output resolution

// ---------------------------------------------------

var DesiredChannel = 98.5;
var fRFDesired = fRFBandStart + DesiredChannel * RFChannelSpacing;

var N = (fRFDesired * RFDiv) / fPFD;
var INT = Math.floor(N); // C cast float to int
var FRAC = Math.round((N - INT) * MOD); // C cast float to int after adding 0.5

if(FRAC == 0)
    FRAC = 1;

var fRFAchieved = fPFD * ((INT + (FRAC / MOD)) / RFDiv);

console.log("PLL reference = " + (fREFIn / 1000000) + " MHz");
console.log("    Double = " + !!T);
console.log("    Divide by 2 = " + !!D);
console.log("    R divider = " + R);
console.log("PFD frequency = " + (fPFD / 1000000) + " MHz");
console.log("RF band start (x2) = " + (fRFBandStart / 1000000) + " MHz");
console.log("RF channel spacing (x2) = " + (RFChannelSpacing / 1000) + " kHz");
console.log("RF output divider = " + RFDiv);
console.log("Max RF output frequency = " + (fRFMax / 1000000) + " MHz");
console.log("Min RF output frequency = " + (fRFMin / 1000000) + " MHz");
console.log("VCO frequency = " + (fVCO / 1000000) + " MHz");
console.log("MOD = " + MOD);
console.log("VCO resolution = " + (fRes / 1000) + " kHz");
console.log("RF output resolution = " + (fResOut / 1000) + " kHz");
console.log("---------------------------");
console.log("Desired channel = " + DesiredChannel);
console.log("Desired channel frequency = " + (fRFDesired / 2 / 1000000) + " MHz");
console.log("N = " + N);
console.log("INT = " + INT);
console.log("FRAC = " + FRAC);
console.log("Achieved channel frequency = " + (fRFAchieved / 2 / 1000000) + " MHz");