# SIH26185_PHONEX

**Team ID:** 166060  
**Team Name:** PHONEX  
**Solution Name:** TactiBand  
**Problem Statement ID:** 26185  
**Theme:** Robotics and Drones  
**Category:** Hardware  

---

## Problem Statement

**Helmet-mounted conformal antenna for tactical communications in urban CQB (Close Quarters Battle) environments.**

Rigid whip antennas mounted on vest radios protrude outward and can snag on door frames, windows, and hanging obstacles during tactical movement, risking damage to the radio interface. Conventional omnidirectional radiation offers limited control over where RF energy is concentrated, raising concerns around electronic eavesdropping and directional tracking. Reinforced-concrete, steel, and glass buildings in urban environments cause severe RF attenuation and fading.

### Engineering Need

- Low-profile antenna
- Helmet-conformal structure
- Dual-band UHF + L-band architecture
- Controlled radiation approach
- Reliable RF connection to an existing tactical radio/SDR
- Mechanically robust coaxial routing

---

## Proposed Solution: TactiBand

TactiBand is a **helmet-conformal dual-band antenna system** based on an interlocked/slot-loaded radiator concept called **CDIMPA**.

### System Architecture

```text
TACTIBAND ANTENNA
        ↓
CDIMPA / INTERLOCKED SLOT RADIATOR
        ↓
HELMET-CONFORMAL INTEGRATION
        ↓
RF FEED / COAXIAL ROUTING
        ↓
RUGGEDIZED RF CONNECTOR
        ↓
SECURE RADIO / SDR
```

### Concept Comparison

| Conventional Whip | TactiBand |
|---|---|
| Radio-mounted antenna | Helmet-mounted antenna |
| Long protruding antenna | Compact conformal antenna |
| More exposed during movement | Low-profile integration |
| Conventional RF feed arrangement | Controlled RF feed and coaxial routing |
| Separate external antenna structure | Integrated helmet-conformal architecture |

---

## CDIMPA Antenna Concept

CDIMPA (interlocked dual-resonant / slot-loaded radiator concept) uses a compact interlocked slot geometry to create **two distinct electrical current paths**, supporting dual-band operation from a single integrated radiator rather than two separate antennas.

### Operating Concept

```text
INTERLOCKED SLOT GEOMETRY
          ↓
   TWO CURRENT PATHS
          ↓
     DUAL RESONANCE
        ↙     ↘
      UHF     L-BAND
```

### Key Advantages

- Compact dual-resonant geometry
- Dual-band operation from one radiator
- Suitable for helmet-conformal integration
- Curvature-aware optimization applied to the geometry

---

## Coaxial Routing

The coaxial cable is the RF connection between the antenna and the tactical radio/SDR — one continuous cable, logically divided into four sections.

**Target routing length: ~40 cm**  
*(Design estimate, pending final helmet geometry and measured prototype.)*

| Segment | Purpose | Target Length |
|---|---|---:|
| Segment 1 | Feed Transition | 8.5 cm |
| Segment 2 | Surface-Conformal Routing | 10.2 cm |
| Segment 3 | Controlled Bend / Clearance | 11.8 cm |
| Segment 4 | Connector Approach | 9.5 cm |
| **Total** | **One continuous coax path** | **40.0 cm** |

### Essential Routing Principles

- Short RF path
- Controlled bend radius
- Proper clearance
- Secure termination

> A continuous approximately 40 cm coaxial path is routed with a short RF path, controlled bends, adequate clearance, and a ruggedized RF termination for reliable connection to the tactical radio/SDR.

---

## Current Design Status

| Design Item | Status |
|---|---|
| CDIMPA dual-band geometry | Confirmed concept |
| Helmet-conformal integration | Confirmed concept |
| Coaxial RF feed & routing | Confirmed concept |
| Ruggedized RF connector | Confirmed concept |
| RF shielding / AMC layer | Confirmed concept |

---

## Security Note

TactiBand covers the **RF/antenna physical layer only**.

COMSEC, TRANSEC, FHSS, and AES-256 encryption are handled by the connected secure radio/SDR, not by the antenna itself.

---

## Validation Workflow

```text
CST Studio Suite
        ↓
      S11
        ↓
Surface Current Analysis
        ↓
  Far-Field Analysis
        ↓
 Array / AMC Analysis
        ↓
Sonnet Cross-Validation
        ↓
    Prototype
        ↓
  VNA Measurement
```

---

## Repository Structure

```text
SIH26185_PHONEX/
│
├── antenna-CST-design/
│   ├── README.md
│   ├── antenna-geometry.png
│   ├── s11-s21-s12-s22-results.jpeg
│   ├── farfield-0.7ghz.jpeg
│   ├── farfield-1.8ghz.jpeg
│   ├── farfield-2.2ghz.jpeg
│   └── farfield-3d-0.7ghz.jpeg
│
├── antenna-design/
│   └── coaxial-routing/
│
├── cad-design/
│   └── helmet/
│       ├── README.md
│       └── images/
│           ├── helmet-front.jpeg
│           ├── helmet-side.jpeg
│           ├── helmet-back.jpeg
│           └── helmet-isometric.jpeg
│
├── README.md
├── SECURITY_APPROACH.md
├── SIH26185_ideaSummary.md
└── LICENSE
```

### Folder Description

| Folder / File | Description |
|---|---|
| `antenna-CST-design/` | CST antenna geometry and electromagnetic simulation results |
| `antenna-design/coaxial-routing/` | 3D coaxial routing visualization and related design documentation |
| `cad-design/helmet/` | Helmet CAD model documentation and CAD view images |
| `SECURITY_APPROACH.md` | RF security and communication security approach |
| `SIH26185_ideaSummary.md` | Full idea summary and technical documentation |
| `LICENSE` | MIT License |
| `README.md` | Main project documentation |

---

## Antenna Design and Simulation

The repository contains the current antenna geometry and CST simulation outputs used for the TactiBand design study.

The CST design folder includes:

- Antenna geometry
- S-parameter results
- Far-field results
- 3D far-field visualization
- Simulation documentation

The current simulation images represent the available electromagnetic analysis results for the antenna design.

---

## Helmet CAD Integration

The helmet CAD section contains the available helmet model views and the proposed TactiBand antenna integration.

Available views include:

- Front view
- Side view
- Rear view
- Isometric view

The CAD documentation is intended to demonstrate the proposed conformal placement of the antenna elements on the helmet structure.

---

## Design Validation Status

The current repository represents the **concept and simulation-stage development** of TactiBand.

The development workflow includes:

1. CDIMPA antenna geometry development
2. CST electromagnetic simulation
3. Helmet-conformal integration
4. Coaxial feed and routing design
5. RF shielding / AMC concept
6. Array-level analysis
7. Sonnet cross-validation
8. Prototype fabrication
9. VNA-based measurement

Prototype fabrication and VNA measurement are part of the planned validation workflow.

---

## Team

| Name | Role |
|---|---|
| Nikilesh Mano | RF / Antenna Design Lead |
| Mohammed Thameem | Requirements & Frequency Extraction |
| Hari kumarran | Baseline Micro-Patch Model |
| Sarveshwaran | CDIMPA Geometry |
| Nidharshan | Curvature Analysis |
| Jayashree | Material Study & Validation / Judge Q&A |

---

## Project Status

**Current Stage:** Antenna design, CST simulation, helmet CAD integration, and system-level design documentation.

**Solution:** TactiBand  
**Team:** PHONEX  
**SIH Problem Statement:** 26185
