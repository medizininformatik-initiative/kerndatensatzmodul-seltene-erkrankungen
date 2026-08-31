<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile RequestGroup
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:RequestGroup</sch:title>
    <sch:rule context="f:RequestGroup">
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-ex-seltene-empfehlung-prioritaet': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:action) &gt;= 1">action: minimum cardinality of 'action' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RequestGroup/f:action</sch:title>
    <sch:rule context="f:RequestGroup/f:action">
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
      <sch:assert test="count(f:action) &lt;= 0">action: maximum cardinality of 'action' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
