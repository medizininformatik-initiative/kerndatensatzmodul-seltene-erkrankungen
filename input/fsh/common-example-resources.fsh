// Common Example Resources used across multiple examples
// These are generic examples for testing and demonstration

// Generic Example Patient
Instance: example
InstanceOf: Patient
Usage: #example
Title: "Beispielpatient"
Description: "Generischer Beispielpatient für Testzwecke"
* identifier.system = "http://test-krankenhaus.de/fhir/sid/patienten"
* identifier.value = "12345"
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1990-01-01"