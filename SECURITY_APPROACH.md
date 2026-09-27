# TactiBand — Security Approach

## 1. Overview

TactiBand's security model is presented as a **layered architecture**. The antenna system itself operates purely at the **RF / physical layer**, while communications security (encryption, transmission protection, and network resilience) is provided by the **connected secure radio/SDR**, not by the antenna.

```
                      TACTIBAND
                          │
          ┌───────────────┴────────────────┐
          │                                │
   CDIMPA ANTENNA                 CONFORMAL INTEGRATION
          │                                │
          └───────────────┬────────────────┘
                          ↓
                     RF FEED
                          ↓
                RUGGEDIZED RF CONNECTOR
                          ↓
                    SECURE RADIO / SDR
                          │
        ┌─────────────────┼─────────────────┐
        ↓                 ↓                 ↓
  DATA PROTECTION   TRANSMISSION      MOBILE AD HOC
  (Encryption +      SECURITY          NETWORKING
  Authentication)  (COMSEC/TRANSEC/    (Dynamic tactical
                        FHSS)            connectivity)
        └─────────────────┼─────────────────┘
                          ↓
                SECURE COMMUNICATION
```

This separation matters for evaluator credibility: TactiBand should never be presented as *performing* encryption or frequency hopping — it is the RF interface that a secure radio/SDR uses to transmit and receive.

---

## 2. Data Protection (Encryption + Authentication)

**Role:** Protects the confidentiality and integrity of transmitted voice, video, and mission data.

- Encryption ensures intercepted RF energy cannot be interpreted without the correct key.
- Authentication ensures the receiving end can verify the transmission originated from a legitimate, authorized unit.
- This function is implemented **within the secure radio/SDR**, typically via AES-256 or an equivalent standard.

> TactiBand's role here is limited to reliably delivering the RF signal to and from the radio — it does not perform encryption or authentication itself.

---

## 3. Transmission Security (COMSEC / TRANSEC / FHSS)

Transmission security protects the RF link itself, not just the data riding on it.

| Component | Function |
|---|---|
| **COMSEC** (Communications Security) | Protects voice, video, and mission data through encryption and authentication — see Section 2. |
| **TRANSEC** (Transmission Security) | Protects the transmission process itself against unauthorized exploitation — e.g., interception, direction-finding, or jamming resistance. |
| **FHSS** (Frequency Hopping Spread Spectrum) | The radio changes operating frequency according to a coordinated hopping sequence known only to authorized units, making sustained interception and jamming significantly harder. |

```
F1 → F4 → F2 → F6 → F3 → F5   (example hop sequence)
```

**Important distinction:** FHSS and TRANSEC do not make the RF signal invisible — a spectrum analyzer can still detect RF energy in the environment. What they protect against is *sustained tracking, interception, and jamming*, not detection of a transmission's existence.

> All of COMSEC, TRANSEC, and FHSS are functions of the **secure radio/SDR**. TactiBand provides the antenna and RF path these functions operate over.

---

## 4. Mobile Ad Hoc Networking (MANET)

**Role:** Supports dynamic tactical connectivity between operators without relying on fixed infrastructure.

- Enables units to relay communications through each other in urban CQB environments where line-of-sight to a central base may be blocked by structures.
- Network topology adapts as operators move through buildings, corridors, and floors.
- TactiBand's helmet-level antenna placement is intended to support more consistent RF connectivity into a MANET by reducing the obstruction and snagging issues associated with vest-mounted whip antennas — improving the *physical reliability* of each node's RF link, which in turn supports network-level resilience.

> MANET protocol logic itself resides in the radio/SDR and network stack; TactiBand's contribution is a more reliable physical RF interface per operator.

---

## 5. System Compatibility (Secure Radio + Camera)

**Role:** Ensures TactiBand integrates with existing tactical equipment rather than requiring a new communications ecosystem.

- The ruggedized coaxial interface is designed for compatibility with existing secure tactical radios.
- The same RF path is intended to support helmet-mounted or body-worn camera systems used for live video, sharing the UHF/L-band link.
- No proprietary protocol or closed ecosystem is introduced — TactiBand is positioned as a **drop-in antenna upgrade** to existing secure communication hardware, not a replacement system.

---

## 6. RF Layer (Shielded + Controlled Radiation)

**Role:** The only security-relevant function TactiBand implements directly, at the physical/RF layer.

- An RF shielding layer (AMC — Artificial Magnetic Conductor, 🟡 *under evaluation*, not finalized) is positioned beneath the antenna array.
- Intended purpose: reduce radiation toward the operator's head, and favor controlled radiation in the upward/outward direction.
- This is a **radiation-pattern control measure**, not an encryption or detection-avoidance measure. It does not make the signal undetectable — it shapes where RF energy is concentrated.

> **Correct framing for judges:** *"TactiBand focuses on controlled radiation and RF isolation rather than claiming the RF signal is undetectable."*

---

## 7. Full Security Stack — TactiBand's Position

```
TACTIBAND (RF / Physical Layer)
    │
    ├── Antenna geometry (CDIMPA)
    ├── Helmet-conformal integration
    ├── RF shielding / controlled radiation (under evaluation)
    └── Ruggedized coaxial RF interface
              │
              ▼
SECURE RADIO / SDR (Higher-Level Security)
    │
    ├── Data Protection → Encryption + Authentication
    ├── Transmission Security → COMSEC / TRANSEC / FHSS
    ├── Mobile Ad Hoc Networking → Dynamic tactical connectivity
    └── System Compatibility → Secure Radio + Camera integration
              │
              ▼
    SECURE, RESILIENT TACTICAL COMMUNICATION
```

---

## 8. What TactiBand Does *Not* Claim

To keep judge-facing claims accurate and defensible:

- ❌ TactiBand does **not** perform AES-256 encryption, COMSEC, TRANSEC, or FHSS itself — these are radio/SDR functions.
- ❌ TactiBand does **not** make RF transmissions undetectable to a spectrum analyzer.
- ❌ TactiBand does **not** introduce a new networking protocol — it interoperates with existing MANET-capable secure radios.
- ✅ TactiBand **does** provide a low-profile, helmet-conformal RF interface designed to improve physical reliability and controlled radiation, which supports the effectiveness of the security functions implemented elsewhere in the system.

---

## 9. Comparison: Conventional Approach vs TactiBand

### 9.1 Physical / RF Interface

| Aspect | Conventional Whip Antenna (Previous) | TactiBand (Proposed) |
|---|---|---|
| Antenna position | Vest-mounted, protrudes outward | Helmet-mounted, low-profile conformal |
| Physical risk | Snags on doors, windows, obstacles during CQB movement | Reduced snagging — integrated into helmet surface |
| Interface height | Low position on operator's body | Elevated to helmet level — above vest-level obstructions |
| Form factor | Rigid, protruding rod | Thin, flexible, conformal to helmet curvature |
| Band coverage | Typically single-band or bulky multi-antenna setup | Single CDIMPA radiator supporting dual-band (UHF + L-band) |
| Radiation control | Omnidirectional, uncontrolled | RF shielding/AMC layer (under evaluation) aimed at controlled upward/outward radiation |
| Urban RF performance | Susceptible to severe attenuation/fading from concrete, steel, glass without mitigation | Same physical RF laws apply, but antenna placement and design aim to improve link reliability at helmet level |

### 9.2 Security Layer

| Aspect | Conventional Approach (Previous) | TactiBand (Proposed) |
|---|---|---|
| Encryption / authentication | Handled by radio, independent of antenna design | Unchanged — still handled by radio/SDR; TactiBand does not alter this layer |
| Transmission security (COMSEC/TRANSEC/FHSS) | Radio-side function, unaffected by antenna type | Same — TactiBand explicitly does not claim to implement these |
| Detectability | RF signal detectable via spectrum analyzer regardless of antenna | Same — TactiBand does not claim reduced detectability, only controlled radiation direction |
| Network compatibility | Depends on existing radio/MANET stack | Same stack — TactiBand is a drop-in RF interface, not a new protocol |


