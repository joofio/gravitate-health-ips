//Person B has been prescribed Humalog and Furosemide which are contraindicated since sulfonamides can cause hypoglycaemia

Instance: gravitate-ips-2
InstanceOf: Bundle
Title:   "IPS Example 2"
Usage: #example
Description: "Example of International Patient Summary for Gravitate"

//https://github.com/hl7-eu/gravitate-health-ips/blob/master/input/fsh/examples/maria-ips.fsh
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "ips-2"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "2fa5b223-ebce-4f39-9c66-5dc014f73573" // Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73573
* entry[+].fullUrl = "c154158f-6a43-4ab7-8443-e7f4bf915dd3" // Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd3
* entry[+].fullUrl = "1ece89c5-fda3-4db9-ace6-decbe6c603d3" // Practictioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d3
* entry[+].fullUrl = "1dff4474-fa08-4f45-8260-dbb23094bf03" // Allergy
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf03
* entry[+].fullUrl = "bcc79261-142c-48ec-b032-f3f9af49ec53" // Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec53
* entry[+].fullUrl = "a4a9d90a-d1b0-4d60-82f0-c52343dc6253" // Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6253
* entry[+].fullUrl = "f06b7cf8-c15c-4288-a0f9-45a1026e5133" // Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5133
* entry[+].fullUrl = "29074ca4-efcb-4ff4-8446-feed2399a893" // Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a893
* entry[+].fullUrl = "f6cb1218-f81c-4338-80d8-3c10910f78f3" // Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78f3
* entry[+].fullUrl = "f26084c9-b1c8-46d9-acb2-1d400ade87b3" // Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87b3
* entry[+].fullUrl = "b50ae644-e0b7-4007-809f-26f493cbe363" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe363
* entry[+].fullUrl = "de131e15-ed13-4b31-b38c-3204a84d99c3" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c3
* entry[+].fullUrl = "9ac3356c-4ea4-4814-84c3-235484f2ef13" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef13
// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73573
InstanceOf: Composition
Title:   "[Composition] IPS Example 2 IPS"
Usage: #inline

* id = "ips-example-2"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. Anna Karlsson"
* title = "Patient Summary (Maria Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].entry = Reference(1dff4474-fa08-4f45-8260-dbb23094bf03) "Hay fever (pollen)"
// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].entry[0] = Reference(bcc79261-142c-48ec-b032-f3f9af49ec53) "Psoriasis"
* section[=].entry[+] = Reference(f06b7cf8-c15c-4288-a0f9-45a1026e5133) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(a4a9d90a-d1b0-4d60-82f0-c52343dc6253) "Congestive heart failure"
// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].entry[0] = Reference(29074ca4-efcb-4ff4-8446-feed2399a893) "Dimethyl fumarate 30 mg Gastro-resistant tablet"
* section[=].entry[+] = Reference(f6cb1218-f81c-4338-80d8-3c10910f78f3) "Irbesartan 75 mg Tablet"
* section[=].entry[+] = Reference(f26084c9-b1c8-46d9-acb2-1d400ade87b3) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"


// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd3
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO "Norway"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Maria Gravitate, Female, 75 years old (1946-05-05)
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "maria-1"
* active = true
* name.family = "Gravitate"
* name.given = "Maria"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d3
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Anne Karlsson
</div>"
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."





// == ALLERGIES ===
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf03
InstanceOf: AllergyIntolerance
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Hay fever
</div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever"
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"


Instance: 9d18cddb-8e58-4fbb-82ec-09cc561ac803
InstanceOf: AllergyIntolerance
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Lactose Intolerance 
</div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #intolerance
* category = #food
* code = http://snomed.info/sct#782415009 "Intolerance to lactose"
* patient = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* onsetAge = 1 'a' "year"
* recordedDate = "2009-10-09"
* reaction.substance = http://snomed.info/sct#47703008 "lactose"
* reaction.manifestation[0] = http://snomed.info/sct#21522001 "Abdominal pain"
* reaction.manifestation[+] = http://snomed.info/sct#116289008 "Abdominal bloating"
* reaction.manifestation[+] = http://snomed.info/sct#62315008 "Diarrhoea"



// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec53
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. Anna Karlsson"

// --- "Congestive heart failure"
Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6253
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Congestive heart failure (2015)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(1ece89c5-fda3-4db9-ace6-decbe6c603d3) "Dr. Anna Karlsson"
Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5133
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* onsetDateTime = "1993"
// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a893
InstanceOf: MedicationStatement
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Brand Name</th>
				<th>MAN</th>
				<th>Active Substance</th>
				<th>Common Name</th>
				<th>ATC</th>
				<th>Strength</th>
				<th>Dose Form</th>
				<th>RoA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Skilarence</td>
				<td>EU/1/17/1201/001</td>
				<td>dimethyl fumarate (FO2303MNI2)</td>
				<td>dimethyl fumarate</td>
				<td>L04AX07</td>
				<td>30 mg</td>
				<td>Gastro-resistant tablet</td>
				<td>Oral use</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #active
* medicationReference = Reference(b50ae644-e0b7-4007-809f-26f493cbe363) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f6cb1218-f81c-4338-80d8-3c10910f78f3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(de131e15-ed13-4b31-b38c-3204a84d99c3) "Irbesartan 75 mg Tablet"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f26084c9-b1c8-46d9-acb2-1d400ade87b3
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(9ac3356c-4ea4-4814-84c3-235484f2ef13) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(c154158f-6a43-4ab7-8443-e7f4bf915dd3) "Maria Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe363
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[+] = $phpid#0x9982CA8A825D4561506CE808982E3B9D "dimethyl fumarate, 30 mg/ 1 tablet, Gastro-resistant tablet"
* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#10225000 "Gastro-resistant tablet"
* ingredient.itemCodeableConcept = $unii#FO2303MNI2 "dimethyl fumarate"
* ingredient.itemCodeableConcept.text = "dimethyl fumarate"
* ingredient.strength.numerator.value = 30
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}
Instance: de131e15-ed13-4b31-b38c-3204a84d99c3
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea"
* code.coding[+] = $phpid#0x8DFB446EDB3B8AE508AE493827A704E4 "Irbesartan, 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#J0E2756Z7N "irbesartan"
* ingredient.itemCodeableConcept.text = "irbesartan"
* ingredient.strength.numerator.value = 75
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}
Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef13
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator.value = 0.05
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #ml