page 50111 "Radio Show Fans"
{
    PageType = List;
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
                field(Address; Address) { ApplicationArea = Basic; }
                field("Post Code"; "Post Code") { ApplicationArea = Basic; }
                field(City; City) { ApplicationArea = Basic; }
                field("Country/Region Code"; "Country/Region Code") { ApplicationArea = Basic; }
                field(Gender; Gender) { ApplicationArea = Basic; }
                field("Birth Date"; "Birth Date") { ApplicationArea = Basic; }
            }
        }
    }
}