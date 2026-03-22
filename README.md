# RF Impedance Matching Networks — MATLAB / Qucs

Three impedance matching network designs for a 1048 MHz RF system, implemented and analysed in MATLAB with Smith chart visualisation and frequency sweep. Circuit schematics are provided in Qucs format.

Developed for the Microwave Circuits and Systems course — University of Aveiro (DETI).

---

## Table of Contents
- [About the Project](#about-the-project)
- [System Specifications](#system-specifications)
- [Matching Techniques](#matching-techniques)
- [Design Parameters](#design-parameters)
- [Output Plots](#output-plots)
- [File Structure](#file-structure)
- [Getting Started](#getting-started)
- [Authors](#authors)

---

## About the Project

This project designs and simulates three different single-stub / lumped-element impedance matching networks for a complex load at 1048 MHz. Each technique is implemented as a MATLAB script that computes the matching network parameters, sweeps the frequency from DC to 4fp, and plots the Smith chart, VSWR, Return Loss, Transmission coefficient, and Reflection Loss.

The load impedance is:

```
Zl = 125.2 - j*50.1  ohm   (at fp = 1048 MHz)
Yl = 1/Zl  ->  Rl = 145.248 ohm,  Cl = 0.4184 pF
```

The load is modelled as a parallel RC equivalent (Rl, Cl) for the frequency sweep.

---

## System Specifications

| Parameter | Value |
|---|---|
| Design frequency fp | 1048 MHz |
| Simulation range | 0 -- 4192 MHz (4 x fp) |
| Characteristic impedance Z0 | 50 ohm |
| Load impedance Zl | 125.2 - j*50.1 ohm |
| Substrate relative permittivity er | 2.33 |
| Phase velocity v | c / sqrt(er) = 1.965e8 m/s |
| Wavelength at fp | lambda = v / fp |
| Frequency step | 1 MHz |

---

## Matching Techniques

### 1 — Short-Circuit Stub (stubcc.m)

A single shunt stub terminated in a short circuit, placed at distance `dp` from the load.

| Parameter | Value |
|---|---|
| Distance to load dp | 0.142 * lambda |
| Stub length lsp | 0.114 * lambda |
| Target stub admittance | ystub = -j * 1.15 (normalised) |

The input impedance is computed as the parallel combination of the transformed load impedance `Zpi` and the stub impedance `Zstub`:

```matlab
Zpi   = Z0 * (Zlf + j*Z0*tan(betaf*dp)) / (Z0 + j*Zlf*tan(betaf*dp));
Zstub = j * Z0 * tan(lsp * betaf);
Zin   = (Zpi .* Zstub) ./ (Zstub + Zpi);
```

---

### 2 — Quarter-Wave Transformer at Impedance Minimum (transfmin.m)

A lambda/4 transformer inserted at the point of minimum impedance on the line.

| Parameter | Value |
|---|---|
| Distance to minimum dquart | 0.225 * lambda |
| Normalised minimum impedance zmin | 0.34 (from Smith chart) |
| Minimum impedance Zmin | 0.34 * 50 = 17 ohm |
| Transformer impedance Zt | sqrt(Zmin * Z0) = sqrt(17 * 50) |

The input impedance of the lambda/4 section uses the transformation property:

```matlab
Zpi = Z0 * (Zlf + j*Z0*tan(betaf*dquart)) / (Z0 + j*Zlf*tan(betaf*dquart));
Zin = Zt^2 ./ Zpi;
```

---

### 3 — Parallel Capacitor (Cparalelo.m)

A lumped capacitor placed in shunt at distance `dc` from the load, equivalent to a short-circuit stub but using a discrete component.

| Parameter | Value |
|---|---|
| Distance to capacitor dc | 0.309 * lambda |
| Normalised admittance at junction | ypimenos = 1 - j*1.15 |
| Capacitor admittance yc | j * 1.15 (normalised) |
| Parallel capacitor Cp | 3.4929 pF |

The input impedance is computed as:

```matlab
Zpi = Z0 * (Zlf + j*Z0*tan(betaf*dc)) / (Z0 + j*Zlf*tan(betaf*dc));
Zc  = -j ./ (ww .* Cp);
Zin = Zpi .* Zc ./ (Zpi + Zc);
```

---

## Design Parameters Summary

| Technique | Distance | Element | Zt / Cp / lsp |
|---|---|---|---|
| Short-circuit stub | dp = 0.142 * lambda | Stub (s/c) | lsp = 0.114 * lambda |
| Lambda/4 transformer | dquart = 0.225 * lambda | lambda/4 line | Zt = sqrt(17 * 50) ohm |
| Parallel capacitor | dc = 0.309 * lambda | Capacitor | Cp = 3.4929 pF |

---

## Output Plots

Each script generates two figures:

**Figure 1 — Smith Chart**
- Reflection coefficient trajectory from 0 to 4*fp plotted on the Smith chart

**Figure 2 — Frequency Response (2x2 grid)**

| Subplot | Metric | Description |
|---|---|---|
| Top-left | VSWR | Voltage Standing Wave Ratio vs frequency; y-axis clamped to [1, 10] |
| Top-right | Return Loss (dB) | RL = 20*log10(|Gamma|) vs frequency |
| Bottom-left | Transmission T | T = 1 - |Gamma|^2 vs frequency |
| Bottom-right | Reflection Loss (dB) | RFL = -10*log10(1 - |Gamma|^2) vs frequency |

---

## File Structure

```
rf-matching-networks/
├── stubcc.m           -- Short-circuit stub matching network
├── transfmin.m        -- Quarter-wave transformer at impedance minimum
├── Cparalelo.m        -- Parallel capacitor matching network
├── Cparalelo.dpl      -- Qucs data display file for parallel capacitor design
├── lambda4min.sch     -- Qucs schematic: lambda/4 transformer design
└── README.md
```

---

## Getting Started

### Requirements
- MATLAB R2018b or later
- RF Toolbox (for `smithplot` function)
- [Qucs](http://qucs.sourceforge.net/) 0.0.19 or later (for `.sch` and `.dpl` files)

### Running a script

All three scripts are self-contained. Run any of them directly from the MATLAB command window:

```matlab
% Short-circuit stub
run('stubcc.m')

% Quarter-wave transformer
run('transfmin.m')

% Parallel capacitor
run('Cparalelo.m')
```

Each script clears the workspace, computes design parameters, runs the frequency sweep, and opens the two output figures automatically.

### Opening the Qucs files

1. Open Qucs
2. File > Open > select `lambda4min.sch` to view the lambda/4 transformer schematic
3. Open `Cparalelo.dpl` to view the data display for the parallel capacitor simulation

---

## Authors

- Andre Filipe Neto Oliveira — 102855 (Turma P7)

**Course**: Circuitos e Sistemas de Microondas — University of Aveiro
