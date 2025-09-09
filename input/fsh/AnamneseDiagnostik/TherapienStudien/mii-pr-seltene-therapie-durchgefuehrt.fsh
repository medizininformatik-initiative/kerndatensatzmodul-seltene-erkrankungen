Profile: MII_PR_Seltene_TherapieDurchgefuehrt
Parent: Procedure
Id: mii-pr-seltene-therapie-durchgefuehrt
Title: "MII PR Seltene Erkrankungen Therapie Durchgeführt"
Description: "Minimales Profil zur Dokumentation durchgeführter Therapien bei Seltenen Erkrankungen gemäß NARSE-Klassifikation. Dieses Profil erfasst Therapien unabhängig vom Durchführungsort (ambulant, stationär, außerhalb des Krankenhauses)."
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapie-durchgefuehrt"
* ^status = #active

// Minimal required elements
* status MS
* subject MS
* subject only Reference(Patient)

// Code must be from NARSE therapy type value set
* code 1..1 MS
* code from MII_VS_Seltene_NARSE_Therapietyp (required)
* code.coding 1..1 MS
* code.coding.system 1..
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/CodeSystem/mii-cs-seltene-narse-therapietyp"
* code.coding.code 1..
* code.coding.display MS

// Performed date/period if available
* performed[x] MS
* performedDateTime MS
* performedPeriod MS