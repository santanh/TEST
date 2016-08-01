<?xml version="1.0" encoding="UTF-8"?>
<BWSharedResource>
    <name>DMSSSCPO-DETAIL.cpy</name>
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
        <copybook>
      *****************************************************************&#xD;
      *  DI/AI DETAIL&#xD;
      *****************************************************************&#xD;
       01  DMSSSCPO-ORDER-DETAIL. 
           05  DMSSSCPO-ITEM-RECORD-TYPE   PIC X(03)   VALUE '031'.        1   3&#xD;
003600***      REQUIRED - RECORD ID - '031'&#xD;
           05  DMSSSCPO-ITEM-ALLOC-NBR     PIC X(08)   VALUE SPACES.       4  11&#xD;
004100***      REQUIRED - AKA ORD_NUM IN DMS DOCUMENTATION, AI IN POM&#xD;
           05  DMSSSCPO-ITEM-NBR           PIC X(19)   VALUE SPACES.      12  30&#xD;
003800***      REQUIRED&#xD;
      *** {B1} - BREAK DOWN OF ITEM NUMBER&#xD;
           05  DMSSSCPO-ITEM-NBR-DTL REDEFINES&#xD;
                  DMSSSCPO-ITEM-NBR.&#xD;
               10 DMSSSCPO-ITEM-SSC-UNIT-NBR PIC 9(5).&#xD;
      ***         SSC UNIT NUMBER WITH CHECK DIGIT&#xD;
               10 DMSSSCPO-ITEM-SUBDIVISION  PIC 9(3).&#xD;
               10 DMSSSCPO-ITEM-LOT          PIC 9(4).&#xD;
               10 DMSSSCPO-ITEM-LINE         PIC 9(4).&#xD;
               10 DMSSSCPO-ITEM-SKU          PIC 9(3).&#xD;
      ***         SKU NUMBER WITH CHECK DIGIT&#xD;
           05  DMSSSCPO-UNITS              PIC 9(9)    VALUE 0.           31  39&#xD;
003800***      REQUIRED&#xD;
           05  DMSSSCPO-ITEM-STORE-NBR     PIC X(5)    VALUE SPACES.      40  44&#xD;
003800***      REQUIRED&#xD;
      ***      {A1} S2M4 STORE OR ALLOCATION STORE NUMBER&#xD;
      ***           SAME AS DMSSSCPO-STORE-NBR&#xD;
           05  DMSSSCPO-ITEM-BULK-NBR      PIC X(8)    VALUE SPACES.      45  52&#xD;
005000***      REQUIRED - PO_NUM IN DMS DOCUMENTATION, DI IN POM&#xD;
      ***      {A1} SAME AS DMSSSCPO-BULK-NBR&#xD;
           05  DMSSSCPO-ITEM-SUPPLIER-NBR  PIC X(06)   VALUE SPACES.      53  58&#xD;
003800***      REQUIRED&#xD;
      ***      {A1} SAME AS DMSSSCPO-SUPPLIER-NBR&#xD;
           05  DMSSSCPO-ITEM-7DGT-LOT-NBR  PIC X(07)   VALUE SPACES.      59  65&#xD;
      ***      {A2} CATALOG LOT NUMBER&#xD;
           05  DMSSSCPO-ITEM-DI-SEQ-NBR    PIC 9(02)   VALUE ZEROS.       66  67&#xD;
003800***      REQUIRED - DEFAULT VALUE IS ZEROES&#xD;
      ***      {B1} USED FOR DI REALLOCATION - SAME AS 030 RECORD&#xD;
           05  DMSSSCPO-ITEM-TOLERANCE-QTY PIC 9(09)   VALUE ZEROS.       68  76&#xD;
003800***      REQUIRED&#xD;
      ***      {B1} PERCENTAGE OF DI ALLOWED OVERAGE/SHORTAGE&#xD;
      ***      {C} CHANGE FROM PERCENT TO QUANTITY AND CHANGED LOCATION&#xD;
      ***          IN THE FILE&#xD;
           05  DMSSSCPO-ITEM-RTV-CD        PIC X(01)   VALUE SPACES.      77  77&#xD;
003800***      REQUIRED&#xD;
      ***      {B1} RETURN TO VENDOR CODE&#xD;
      ***          N = NORMAL (NON-RETURN)&#xD;
      ***          R = RETURN TO VENDOR&#xD;
           05  DMSSSCPO-ITEM-RTV-REASON-CD PIC X(01)   VALUE SPACES.      78  78&#xD;
      ***      {C} CATS REASON RETURN TO VENDOR&#xD;
           05  DMSSSCPO-ITEM-RA-NBR        PIC X(08)   VALUE SPACES.      79  86&#xD;
      ***      {C} RETURN AUTHORIZATION NUMBER&#xD;
012510     05  DMSSSCPO-DIST-TYPE          PIC X(01)   VALUE SPACES.      87  87&#xD;
012520***      {VAS} DISTRIBUTION TYPE&#xD;
012530***      F = FLAT&#xD;
012540***      H = HANGING&#xD;
017310     05  DMSSSCPO-EXT-PACK-SIZE      PIC 9(09)   VALUE ZEROES.      88  96&#xD;
017320***      {FLOW} EXTENDED PACK SIZE (NUMBER OF SELLABLE UNITS PER&#xD;
017330***      "INNER PACK"; FOR PRE-PACK ASSORTMENTS, THIS WILL BE SUM&#xD;
017340***      OF COMPONENT UNITS).&#xD;
017350     05  DMSSSCPO-MCQ                PIC 9(09)   VALUE ZEROES.      97 105&#xD;
017360***      {FLOW} EXTENDED MASTER CASE QUANTITY (NUMBER OF SELLABLE&#xD;
017370***      UNITS PER CASE; FOR PRE-PACK ASSORTMENTS, THIS WILL BE&#xD;
017380***      THE SUM OF ALL COMPONENT UNITS);&#xD;
      *******3 FIELDS ARE ADDED FOM RLC CHANGE*******&#xD;
      *SH     05  DMSSSCPO-DIRECT-PO-LINE     PIC X(03)   VALUE SPACES.     106 108&#xD;
      ***         DMS ORDER LINE NUMBER&#xD;
      *SH     05  DMSSSCPO-INFO-1             PIC X(32)   VALUE SPACES.     109 140&#xD;
      ***         DMS ORDER LINE INFORMATION1&#xD;
      *SH     05  DMSSSCPO-INFO-2             PIC X(32)   VALUE SPACES.     141 172&#xD;
      ***         DMS ORDER LINE INFORMATION2&#xD;
      *&#xD;
      *******4 NEW FIELDS FOR RLC WILL CALL***************&#xD;
      *SH     05  DMSSSCPO-MERCH-PRICE        PIC X(08)   VALUE SPACES.    173  180&#xD;
      ***         MERCHANDISE PRICE&#xD;
      *SH     05  DMSSSCPO-TRANS-CHRG         PIC X(08)   VALUE SPACES.    181  188&#xD;
      ***         SHIPPING CHARGE&#xD;
      *SH     05  DMSSSCPO-TAX                PIC X(08)   VALUE SPACES.    189  196&#xD;
      ***         TAX&#xD;
      *SH     05  DMSSSCPO-GIFT-QTY           PIC X(09)   VALUE SPACES.    197  205&#xD;
      ***         GIFT WRAP INDICATOR&#xD;
</copybook>
        <metadataVersion>1</metadataVersion>
        <redefineGroups/>
    </config>
</BWSharedResource>