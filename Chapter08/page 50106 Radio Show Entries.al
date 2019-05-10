page 50106 "Radio Show Entries"
{
    PageType = List;
    SourceTable = "Radio Show Entry";
    UsageCategory = History;
    ApplicationArea = Basic;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field(Description; Description) { ApplicationArea = Basic; }
                field(Duration; Duration) { ApplicationArea = Basic; }
                field(Date; Date) { ApplicationArea = Basic; }
                field(Time; Time) { ApplicationArea = Basic; }
                field("ACSAP ID"; "ACSAP ID") { ApplicationArea = Basic; }
                field("Fee Amount"; "Fee Amount") { ApplicationArea = Basic; }
                field("Publisher Code"; "Publisher Code") { ApplicationArea = Basic; }
                field("Entry No."; "Entry No.") { ApplicationArea = Basic; }
            }
        }


    }

}