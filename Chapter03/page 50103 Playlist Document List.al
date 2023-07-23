page 50103 "Playlist Document List"
{
    PageType = List;
    SourceTable = "Playlist Header";
    ApplicationArea = All;
    UsageCategory = Documents;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { }
                field(Description; Rec.Description) { }
                field("Radio Show No."; Rec."Radio Show No.") { }
                field("Start Time"; Rec."Start Time") { }
                field("End Time"; Rec."End Time") { }
                field("Broadcast Date"; Rec."Broadcast Date") { }
                field(Duration; Rec.Duration) { }
            }
        }
    }
}