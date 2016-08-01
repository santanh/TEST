<?xml version="1.0" encoding="UTF-8"?>
<BWSharedResource>
    <name>DMSHDR.cpy</name>
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
      *   THIS IS THE HEADER RECORD LAYOUT FOR DATA SENT BETWEEN  *&#xD;
      *   DMS AND WOS.                                            *&#xD;
      *                                                           *&#xD;
      *************************************************************&#xD;
      *                     MODIFICATION LOG&#xD;
      *************************************************************&#xD;
      *   DATE    S.A.                 DESCRIPTION&#xD;
      *------------------------------------------------------------&#xD;
      * 12/01/97  D.VASQUEZ     ADDED NEW TYPE-OF-TRANS,'085',&#xD;
      *                         'CARTON CONSOLIDATION'.&#xD;
      * 09/02/98  D.VASQUEZ     CHGD NAME OF 085 TYPE-OF-TRANS&#xD;
      *                         TO 'CARTON TRANSACTIONS'.&#xD;
      *                         ADDED NEW TYPE-OF-TRANS,'170',&#xD;
      *                         'CARTON NBR REQUEST'.&#xD;
      *                         ADDED NEW TYPE-OF-TRANS,'175',&#xD;
      *                         'CARTON NBR RETURN'.&#xD;
      * 03/16/99  D.CASPER      ADDED NEW TYPE-OF-TRANS, '250'&#xD;
      *                         'PRE-PACK CARTON LABEL'.&#xD;
      * 04/12/01  B.WOLF        ADDED NEW TYPE-OF-TRANS, '82X'&#xD;
      *                         'OUTBOUND ORDER CASES'.&#xD;
      * 07/10/01  C.THARP       ADDED NEW TYPE-OF-TRANS, '030'&#xD;
      *                         'SSC ORDERS'.&#xD;
      * 04/25/02  A.SOLIS       ADDED NEW TYPE-OF-TRANS, '105'&#xD;
      *                         'SSC OLD INV ADJ'.&#xD;
      * 10/08/02  C.THARP       ADDED DMSHDR-LOCATION-CODE  AND&#xD;
      *                               DMSHDR-SYS-SOURCE-CODE&#xD;
      * 06/13/03  E.ELIZONDO    ADDED NEW TYPE-OF-TRANS, '065'&#xD;
      *                         'SHIPPOINT FILE'.&#xD;
      *                         ADDED NEW TYPE-OF-TRANS, '231'&#xD;
      *                         'SUPPLIER ADDRESS'.&#xD;
      * 06/13/03  E.ELIZONDO    ADDED NEW TYPE-OF-TRANS, '145'&#xD;
      *                         'RETURN TO VENDOR'.&#xD;
      * 08/29/03  E.ELIZONDO    CHANGED DESCRPTION FOR  '145'&#xD;
      *                         'RTV CASE (SSC)'&#xD;
      * 12/22/03  M.CALLAC      ADDED NEW TYPE-OF-TRANS, '232'&#xD;
      *                         'SUPPLIER SUBDIVISION'.&#xD;
      * 05/17/04  S.GUPTA       ADDED NEW TYPE-OF-TRANS (102, 122, 142)&#xD;
      * 05/24/04  S.WASHINGTON  ADDED NEW TYPE-OF-TRANS 116&#xD;
      * 06/10/04  D.VASQUEZ     ADDED NEW TYPE-OF-TRANS 035,113,114,116,&#xD;
      *                         117,122,622,822,832,998 FOR RWH&#xD;
      *************************************************************&#xD;
      *&#xD;
      * 01  FILLER                      PIC X(28)&#xD;
      *     VALUE '*** DMSHDR BEGINS HERE ***'.&#xD;
&#xD;
       01  DMSHDR-RECORD.&#xD;
           05  DMSHDR-RECORD-ID        PIC X(03)        VALUE '000'.       1   3&#xD;
      *        HEADER RECORD ID - '000'&#xD;
           05  DMSHDR-TYPE-OF-TRANS    PIC X(20).                          4  23&#xD;
      *        IDENTIFIES WHICH TYPE OF TRANSACTION THIS FILE IS FOR&#xD;
      *        RECORD ID - '010'  TYPE-OF-TRANS - 'CARTON/BATCH'&#xD;
      *                    '020'                  'SHIP NOT PICK CONF'&#xD;
      *                    '03X'                  'INVENTORY LOAD'&#xD;
      *                    '030'                  'SSC ORDERS'&#xD;
      *                    '035'                  'ORDER STATUS'&#xD;
      *                    '040'                  'SELECTED ITEMS'&#xD;
      *                    '05X'                  'RECEIVER DOCUMENT'&#xD;
      *                    '060'                  'ITEM MASTER UPDATES'&#xD;
      *                    '065'                  'SHIPPOINT FILE'&#xD;
      *                    '070'                  'PHY INVENTORY ENABLE'&#xD;
      *                    '08X'                  'PICK CONFIRMATION'&#xD;
      *                    '085'                  'CARTON TRANSACTIONS'&#xD;
      *                    '090'                  'SELECTED ITEMS W/LOC'&#xD;
      *                    '100'                  'INVENTORY ADJMTS'&#xD;
      *                    '102'                  'RWH INVENTORY ADJMTS'&#xD;
      *                    '105'                  'SSC OLD INV ADJ'&#xD;
      *                    '11X'                  'INVENTORY SUMMARY'&#xD;
      *                    '113'                  'RWH INV SUMMARY'&#xD;
      *                    '114'                  'RWH INV SNAPSHOT'&#xD;
      *                    '116'                  'RWH INV VALUATION'&#xD;
      *                    '117'                  'OUTBOUND ALERT'&#xD;
      *                    '120'                  'INVENTORY XFERS'&#xD;
      *                    '122'                  'RWH INVENTORY XFERS'&#xD;
      *                    '130'                  'PI COUNT'&#xD;
      *                    '140'                  'RECEIPT CONFIRM'&#xD;
      *                    '141'                  'SSC RECEIPTS'&#xD;
      *                    '142'                  'RWH RECEIPT CONFIRM'&#xD;
      *                    '145'                  'RTV CASE (SSC)'&#xD;
      *                    '14X'                  'REJECT RECEIPTS'&#xD;
      *                    '150'                  'AGING INFO'&#xD;
      *                    '152'                  'RWH AGING INFO'&#xD;
      *                    '160'                  'STD ALLOWED HOURS'&#xD;
      *                    '170'                  'CARTON NBR REQUEST'&#xD;
      *                    '175'                  'CARTON NBR RETURN'&#xD;
      *                    '220'                  'LABEL PRINT'&#xD;
      *                    '221'                  'CARTON PRINT'&#xD;
      *                    '230'                  'STORE ADDRESS'&#xD;
      *                    '231'                  'SUPPLER ADDRESSES'&#xD;
      *                    '232'                  'SUPPLIER SUBDIVISION'&#xD;
      *                    '240'                  'LABEL MESSAGES'&#xD;
      *                    '250'                  'PREPACK CARTON LABEL'&#xD;
      *                    '620'                  'RECEIVED CASES'&#xD;
      *                    '622'                  'RWH RECEIVED CASES'&#xD;
      *                    '82X'                  'OUTBOUND ORDER CASES'&#xD;
      *                    '822'                  'OUTBOUND CARTONS'&#xD;
      *                    '830'                  'SSC TRANSFER SUMMARY'&#xD;
      *                    '832'                  'RWH RELEASE SUMMARY'&#xD;
      *                    '998'                  'CONVERTED WHSE/SDV''&#xD;
           05  DMSHDR-SEQUENCE-NBR     PIC X(07).                         24  30&#xD;
      *        FILE SEQUENCE NUMBER.  A NUMERIC FIELD.&#xD;
           05  DMSHDR-DATE-TIME.&#xD;
               10  DMSHDR-DATE         PIC X(08).                         31  38&#xD;
      *            DATE IN YYYYMMDD FORMAT&#xD;
               10  DMSHDR-TIME         PIC X(06).                         39  44&#xD;
      *            TIME IN HHMMSS FORMAT&#xD;
           05  DMSHDR-LOCATION-CODE    PIC X(02).                         45  46&#xD;
      *        ASSIGNED SSC LOCATION CODE--W*&#xD;
      *        SSCS ONLY&#xD;
           05  DMSHDR-SYS-SOURCE-CODE  PIC X(03).                         47  49&#xD;
      *        IDENTIFY ORIGINAL SYSTEM CREATING FILE&#xD;
      *        SSCS ONLY&#xD;
</copybook>
        <metadataVersion>1</metadataVersion>
        <redefineGroups/>
    </config>
</BWSharedResource>