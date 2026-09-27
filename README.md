
# SIH26185_PHONEX

**Team ID:** 166060  
**Team Name:** PHONEX  
**Solution Name:** TactiBand  
**Problem Statement ID:** 26185  
**Theme:** Robotics and Drones  
**Category:** Hardware

---

## Problem Statement

Helmet-mounted conformal antenna for tactical communications in urban CQB (Close Quarters Battle) environments.

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

### Concept Comparison
CONVENTIONAL WHIP TACTIBAND
Radio → long protruding Helmet → compact conformal antenna
antenna → controlled RF feed
→ coax → radio/SDR

---

## CDIMPA Antenna Concept

CDIMPA (interlocked dual-resonant / slot-loaded radiator concept) uses a compact interlocked slot geometry to create **two distinct electrical current paths**, supporting dual-band operation from a single integrated radiator rather than two separate antennas.
INTERLOCKED SLOT GEOMETRY
↓
TWO CURRENT PATHS
↓
DUAL RESONANCE
↙ ↘
UHF L-BAND

**Key advantages:**
- Compact dual-resonant geometry
- Dual-band operation from one radiator
- Suitable for helmet-conformal integration
- Curvature-aware optimization applied to the geometry

---

## Coaxial Routing

The coaxial cable is the RF connection between the antenna and the tactical radio/SDR — one continuous cable, logically divided into four sections.

**Target routing length: ~40 cm** (design estimate, pending final helmet geometry and measured prototype)

| Segment | Purpose | Target Length |
|---|---|---:|
| Segment 1 | Feed Transition | 8.5 cm |
| Segment 2 | Surface-Conformal Routing | 10.2 cm |
| Segment 3 | Controlled Bend / Clearance | 11.8 cm |
| Segment 4 | Connector Approach | 9.5 cm |
| **Total** | **One continuous coax path** | **40.0 cm** |

**Essential routing principles:** Short RF path • Controlled bend radius • Proper clearance • Secure termination

> *"A continuous approximately 40 cm coaxial path is routed with a short RF path, controlled bends, adequate clearance, and a ruggedized RF termination for reliable connection to the tactical radio/SDR."*

---

## Current Design Status

| Item | Status |
|---|---|
| CDIMPA dual-band geometry | Confirmed concept |
| Helmet-conformal integration | Confirmed concept |
| Coaxial RF feed & routing | Confirmed concept |
| Ruggedized RF connector | Confirmed concept |
| RF shielding / AMC layer | **Under evaluation** — not finalized |

---

## Security Note

TactiBand covers the **RF/antenna physical layer only**. COMSEC, TRANSEC, FHSS, and AES-256 encryption are handled by the connected secure radio/SDR, not by the antenna itself.

---

## Validation Workflow
CST Studio Suite → S11 → Surface Current → Far Field → Array/AMC Analysis
→ Sonnet Cross-Validation → Prototype → VNA Measurement

---

## Repository Structure
antenna-design/coaxial-routing/ → 3D coaxial routing visualization script
SIH26185_ideaSummary.md → Full idea summary and technical documentation
LICENSE → MIT License

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
