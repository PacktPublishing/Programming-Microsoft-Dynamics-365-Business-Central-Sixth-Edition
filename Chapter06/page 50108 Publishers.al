page 50108 Publishers
{
    PageType = List;
    SourceTable = "Radio Show Type";
    ApplicationArea = Basic;
    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Code) { ApplicationArea = Basic; }
                field(Description; Description) { ApplicationArea = Basic; }
            }
        }
    }
}