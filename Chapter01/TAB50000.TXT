OBJECT Table 50000 Radio Show
{
  OBJECT-PROPERTIES
  {
    Date=18-09-16;
    Time=12:19:26;
    Modified=Yes;
    Version List=CDM01;
  }
  PROPERTIES
  {
  }
  FIELDS
  {
    { 1   ;   ;No.                 ;Code20         }
    { 10  ;   ;Show Code           ;Code10         }
    { 20  ;   ;Name                ;Text50         }
    { 40  ;   ;Run Time            ;Duration       }
    { 50  ;   ;Host Code           ;Code20         }
    { 60  ;   ;Host Name           ;Text50         }
    { 100 ;   ;Average Listenerss  ;Decimal        }
    { 110 ;   ;Audience Share      ;Decimal        }
    { 120 ;   ;Advertising Revenue ;Decimal        }
    { 130 ;   ;Royalty Cost        ;Decimal        }
  }
  KEYS
  {
    {    ;No.                                     ;Clustered=Yes }
  }
  FIELDGROUPS
  {
  }
  CODE
  {

    BEGIN
    END.
  }
}

