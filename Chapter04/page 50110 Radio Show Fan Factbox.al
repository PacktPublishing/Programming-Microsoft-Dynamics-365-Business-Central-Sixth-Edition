page 50110 "Radio Show Fan Factbox"
{
    PageType = ListPart;
    SourceTable = "Radio Show Fan";
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Name; Rec.Name) { }
                field("E-Mail"; Rec."E-Mail") { }
                field("Last Contacted"; Rec."Last Contacted") { }
            }
        }
    }
}