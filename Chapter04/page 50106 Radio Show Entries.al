page 50106 "Radio Show Entries"
{
    PageType = List;
    SourceTable = "Radio Show Entry";
    UsageCategory = History;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Radio Show No."; Rec."Radio Show No.") { }
                field(Description; Rec.Description) { }
                field(Duration; Rec.Duration) { }
                field(Date; Rec.Date) { }
                field(Time; Rec.Time) { }
                field("ACSAP ID"; Rec."ACSAP ID") { }
                field("Fee Amount"; Rec."Fee Amount") { }
                field("Publisher Code"; Rec."Publisher Code") { }
                field("Entry No."; Rec."Entry No.") { }
            }
        }
    }
}