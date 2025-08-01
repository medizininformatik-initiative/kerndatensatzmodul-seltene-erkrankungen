Extension: Empfehlung_Prioritaet
Id: mii-ex-se-empfehlung-prioritaet
Context: MedicationRequest, RequestGroup, ServiceRequest
Title: "MII EX SE Empfehlung Priorität"
Description: "Priorität der (einzelnen) Empfehlung"

* value[x] only decimal or positiveInt
* value[x] 1..1 MS
* valueDecimal 0..1 MS
* valuePositiveInt 0..1 MS

* value[x] ^short = "Priorität"
* value[x] ^definition = "Priorität dieser Empfehlung"
* value[x] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"