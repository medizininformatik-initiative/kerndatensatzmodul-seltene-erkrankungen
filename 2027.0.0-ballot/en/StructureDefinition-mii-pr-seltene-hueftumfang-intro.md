<!-- TODO:REVIEW machine translation (en) of intro note; Quelle: MIIIGModulSeltene/Technische-Implementierung/FHIR-Profile/Messbefunde/Hueftumfang-Observation.page.md (Simplifier-Guide 2026.0.1, migriert 2026-08-28, Direktiven gestript) -->
This profile describes the measurement of the hip circumference (maximal gluteal protuberance) of a patient. The hip circumference is relevant for rare diseases affecting body proportions, metabolic diseases or skeletal dysplasias.

### Clinical relevance

Measuring the hip circumference is an important parameter for:
- **Metabolic diseases**: assessment of fat distribution and metabolic risk factors
- **Skeletal dysplasias**: documentation of body proportions and skeletal changes in the pelvic area
- **Syndromes with body build anomalies**: characteristic proportions as a diagnostic feature
- **Calculation of the waist-to-hip ratio (WHR)**: in combination with the waist circumference for risk assessment

### Coding

The profile uses the LOINC code **56063-1** (Circumference.at maximal protrusion of gluteus muscles Pelvis) for the standardized coding of the measurement.

---

### Use with the waist-to-hip ratio

The hip circumference is frequently used in combination with the waist circumference to calculate the **waist-to-hip ratio (WHR)**. The WHR is an important indicator for:
- Metabolic risk
- Body fat distribution (android vs. gynoid distribution)
- Prognosis in various diseases

See also: waist-to-hip ratio

---

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) &mdash; machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.
