page 50110 "Radio Show Fan Factbox"
{
    PageType = ListPart;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Name; Name) { ApplicationArea = Basic; }
                field("E-Mail"; "E-Mail") { ApplicationArea = Basic; }
                field("Last Contacted"; "Last Contacted") { ApplicationArea = Basic; }
            }
        }
    }
}