// switch version of all conformance resources here
//
// MUSS mit sushi-config.yaml:version uebereinstimmen. Am 2026-09-03 stand
// hier noch 2027.0.0-ballot (der bereits publizierte Stand), waehrend die Konfig
// bereits 2027.0.0-ballot fuehrte — 56 Ressourcen trugen dadurch die
// Version des Vorgaengerreleases, neun gar keine. Der Simplifier-QC meldet
// das als "version not filled (correctly)".
RuleSet: Version
* version = "2027.0.0-ballot"

RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-ballot"

RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2027.0.0-ballot"
