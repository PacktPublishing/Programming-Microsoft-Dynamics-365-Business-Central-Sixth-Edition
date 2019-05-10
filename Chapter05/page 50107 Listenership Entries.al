page 50107 "Listenership Entries"
{
    PageType = List;
    SourceTable = "Listernership Entry";
    ApplicationArea = Basic;
    UsageCategory = History;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Radio Show No."; "Radio Show No.") { ApplicationArea = Basic; }
                field(Date; Date) { ApplicationArea = Basic; }
                field("Age Demographic"; "Age Demographic") { ApplicationArea = Basic; }
                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }
                field("Start Time"; "Start Time") { ApplicationArea = Basic; }
                field("End Time"; "End Time") { ApplicationArea = Basic; }
                field("Ratings Source Entry No."; "Ratings Source Entry No.") { ApplicationArea = Basic; }
                field("Entry No."; "Entry No.") { ApplicationArea = Basic; }
            }
        }

    }


}