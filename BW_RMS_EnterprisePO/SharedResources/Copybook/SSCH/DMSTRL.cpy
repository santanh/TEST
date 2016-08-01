<?xml version="1.0" encoding="UTF-8"?>
<BWSharedResource>
    <name>DMSTRL.cpy</name>
    <resourceType>ae.shared.CCBSchemaResource</resourceType>
    <config>
        <version>3.1.0</version>
        <fixedFormat>true</fixedFormat>
        <encoding>ASCII</encoding>
        <copybookType>COBOL</copybookType>
        <float>hexadec</float>
        <modified>false</modified>
        <dayMonth>Day/month</dayMonth>
        <dateFormat>YYYYXXXX</dateFormat>
        <copybook>      *************************************************************&#xD;
      *   USED BY DISTRIBUTION MANAGEMENT SYSTEM (DMS)            *&#xD;
      *                                                           *&#xD;
      *   THIS IS THE TRAILER RECORD LAYOUT FOR DATA SENT BETWEEN *&#xD;
      *   DMS AND WOS.                                            *&#xD;
      *************************************************************&#xD;
&#xD;
      * 01  FILLER                      PIC X(28)&#xD;
      *     VALUE '*** DMSTRL BEGINS HERE ***'.&#xD;
&#xD;
       01  DMSTRL-RECORD.&#xD;
           05  DMSTRL-RECORD-ID        PIC X(03)  VALUE '999'.             1   3&#xD;
      *        RECORD ID - '999'&#xD;
           05  DMSTRL-RECORD-COUNT     PIC X(09)  VALUE SPACES.            4  12&#xD;
      *        NUMBER OF RECORDS INCLUDING HEADER AND TRAILER&#xD;
      *        A NUMERIC FIELD&#xD;
&#xD;
</copybook>
        <metadataVersion>1</metadataVersion>
        <redefineGroups/>
    </config>
</BWSharedResource>