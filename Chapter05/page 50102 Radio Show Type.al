page 50102 "Radio Show Type"
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