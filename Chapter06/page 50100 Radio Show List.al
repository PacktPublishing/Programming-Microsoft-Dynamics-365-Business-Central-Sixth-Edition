page 50100 "Radio Show List"
{
    PageType = List;
    SourceTable = "Radio Show";
    ApplicationArea = Basic;
    UsageCategory = Lists;
    CardPageId = "Radio Show Card";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Radio Show Type"; "Radio Show Type") { ApplicationArea = Basic; }
                field("Name"; "Name") { ApplicationArea = Basic; }
                field("Run Time"; "Run Time") { ApplicationArea = Basic; }
                field("Host Code"; "Host Code") { ApplicationArea = Basic; }
                field("Host Name"; "Host Name") { ApplicationArea = Basic; }
                field("Average Listeners"; "Average Listeners") { ApplicationArea = Basic; }
                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }
                field("Advertising Revenue"; "Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; "Royalty Cost") { ApplicationArea = Basic; }

            }

        }
        area(FactBoxes)
        {
            part(Fans; "Radio Show Fan Factbox")
            {
                ApplicationArea = Basic;
                SubPageLink = "Radio Show No." = field ("No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {

            action(Init)
            {
                Caption = 'Init';
                RunObject = codeunit "Radio Extension Init";

            }
        }


    }
}