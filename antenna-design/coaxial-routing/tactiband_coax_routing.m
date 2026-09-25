# TactiBand — 3D Coaxial Routing

## Overview

MATLAB-based 3D visualization of the proposed TactiBand RF coaxial routing path.

The model includes:

- Top antenna
- RF feed point
- Four coaxial routing segments
- Routing joints
- Purpose arrows
- Ruggedized RF connector
- Radio / SDR

## Routing Parameters

| Parameter | Value |
|---|---|
| Routing type | 3D coaxial routing |
| Number of segments | 4 |
| Target routing length | ~40 cm |
| Modeling tool | MATLAB |

## Segment Configuration

| Segment | Length | Purpose |
|---|---:|---|
| Segment 1 | 8.5 cm | Feed Transition |
| Segment 2 | 10.2 cm | Surface-Conformal Routing |
| Segment 3 | 11.8 cm | Controlled Bend / Clearance |
| Segment 4 | 9.5 cm | Connector Approach |
| **Total** | **40.0 cm** | **Complete RF Path** |

## Routing Length Calculation

\[
L_{total}=L_1+L_2+L_3+L_4
\]

\[
L_{total}=8.5+10.2+11.8+9.5
\]

\[
\boxed{L_{total}=40.0\text{ cm}}
\]

## Purpose of Segmentation

The four segments represent different sections of the **same continuous coaxial cable**.

- **Segment 1:** Feed transition from antenna
- **Segment 2:** Surface-conformal routing
- **Segment 3:** Controlled bend and clearance
- **Segment 4:** Connector approach

## Key Routing Factors

1. **Short RF Path** — minimizes unnecessary cable length.
2. **Controlled Bend Radius** — avoids unnecessary sharp bends.
3. **RF Clearance** — reduces unwanted interaction with nearby structures.
4. **Secure Termination** — provides reliable RF connection.

## 3D MATLAB Output

![TactiBand 3D Coaxial Routing](tactiband_coax_routing.png)

## Validation Parameters

The routing design can subsequently be evaluated using:

- Coaxial cable attenuation
- S11 — impedance matching
- S21/S12 — mutual coupling/isolation
- Radiation pattern
- Gain
- Efficiency
- VNA measurements

## Files

- `tactiband_coax_routing.m` — MATLAB 3D model
- `tactiband_coax_routing.png` — MATLAB simulation output
- `README.md` — technical documentation
