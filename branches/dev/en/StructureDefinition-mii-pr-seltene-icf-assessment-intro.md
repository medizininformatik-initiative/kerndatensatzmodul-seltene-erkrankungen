This profile grades a single category of the WHO **International Classification
of Functioning, Disability and Health (ICF)** for one patient. Both the JARDIN
MDS draft and the ERDRI-CDS require functioning and disability to be recorded
this way, and no MII module covered it before.

`Observation.code` carries the ICF category, `Observation.component` carries the
WHO qualifiers.

### Why qualifiers are components, not a value

The number of qualifiers differs by ICF chapter, so a single `value[x]` cannot
carry them. `value[x]` is therefore closed off (`0..0`), and an invariant per
chapter enforces which components may appear:

| Chapter | Scope | Qualifiers |
|---|---|---|
| `b` | Body functions | extent of impairment |
| `s` | Body structures | extent, nature of change, anatomical location |
| `d` | Activities and participation | **capacity** and **performance** |
| `e` | Environmental factors | barrier or facilitator |

Without these constraints the profile would accept an anatomical location on a
body *function*, which the ICF does not define.

The distinction in chapter `d` is the heart of the classification and is
frequently the whole point in rare disease: **capacity** is what someone can do
under test conditions, **performance** is what they actually do in their own
environment. Both share one BfArM code system, so they are told apart by the
component code, not by the value system.

> **Note on ordering:** the ICF's own convention for chapter `d` puts
> performance first and capacity second. The slice order in this profile is
> alphabetical and carries no meaning — read the component code, not the
> position.

### Terminology

Resolved against the BfArM FHIR package `bfarm.terminologien.icf`:

* The classification is published under the HL7 canonical
  `http://hl7.org/fhir/sid/icf`. BfArM does not mint its own URI for it.
* **German is not a second code system.** `icf-translation` is a
  `content=supplement` against the same canonical — one code system, both
  languages. Nothing here has to choose a language, and the value set needs no
  German twin.
* The **qualifiers** are separate code systems, seven of them, published by
  BfArM under `https://terminologien.bfarm.de/fhir/CodeSystem/icf-q-*`.
* The separator carries meaning, and BfArM put it **into** the codes: extent of
  impairment runs `.0`…`.4`, `.8`, `.9`, while facilitators run `+0`…`+4`. A
  barrier and a facilitator are therefore distinguished by the code itself, not
  by a sign a parser has to reconstruct.

### Three open points

> **The binding may not resolve in a build.** The MII terminology server does
> not currently carry `http://hl7.org/fhir/sid/icf` and reports it as an unknown
> code system, so [`mii-vs-seltene-icf`](ValueSet-mii-vs-seltene-icf.html) has no
> expansion in this publication even though `code.coding` is bound **required**
> against it. The gap is one of server provisioning and closes once the BfArM
> package is loaded there. ICF codes themselves remain valid.
>
> **The edition is not pinned.** BfArM ships release 2005 with 1495 concepts;
> `tx.fhir.org` serves 2017a under the *same* canonical URI, and an expansion
> there returned 1616. Same URI, roughly 120 concepts apart. A required binding
> must not straddle both silently.
>
> **Ownership is open — deliberately, not by oversight.** This data point is
> **not** specific to rare diseases: functioning and disability are graded for
> stroke, oncology and geriatric patients alike, and the ICF is a WHO
> classification for the whole of health, not for one indication. It is modelled
> here because the need arose here and was concrete — the JARDIN MDS draft is
> the data requirement of a European reference network with a deadline, and no
> connected MII module covered it. A module for **symptoms and the clinical
> phenotype** is the natural home should one take it on; the same weighing came
> out differently for sex at birth (HDB-782), which was referred to the base
> module because both a standard and a place for it already existed. Comments on
> this point are welcome in the ballot.
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters** are declared module-wide in the [CapabilityStatement](CapabilityStatement-mii-cps-seltene-capabilitystatement.html) &mdash; machine-readable and complete there, rather than repeated by hand per profile.

Example instances are linked in the "Examples" section of the profile page.
