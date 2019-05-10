table 50110 "Radio Show Fan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show No."; Code[20]) { }
        field(20; Name; Text[50]) { }
        field(30; "E-Mail"; Text[250]) { }
        field(40; "Last Contacted"; Date) { }
        field(60; Address; Text[50]) { }
        field(70; "Address 2"; Text[50]) { }
        field(80; City; Text[50]) { }
        field(90; "Country/Region Code"; Code[10]) { }
        field(95; County; Text[30]) { }
        field(100; "Post Code"; Code[20])
        {
            trigger OnValidate()
            var
                PostCode: Record "Post Code";
            begin
                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code",
                    (CurrFieldNo <> 0) AND GUIALLOWED);
            end;
        }
        field(110; Gender; Option) { OptionMembers = ,Male,Female; }
        field(120; "Birth Date"; Date) { }
    }
}