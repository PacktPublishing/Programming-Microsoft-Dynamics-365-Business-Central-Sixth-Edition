page 50111 "Radio Show Fans"
{
    PageType = ListPart;
    UsageCategory = Lists;
    ApplicationArea = Basic;
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