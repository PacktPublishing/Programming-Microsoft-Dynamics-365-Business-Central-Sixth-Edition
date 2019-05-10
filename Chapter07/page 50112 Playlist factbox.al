page 50112 "Playlist Factbox"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Playlist Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("PSAs Required"; "PSAs Required") { ApplicationArea = All; }
                field("PSA Count"; "PSA Count") { ApplicationArea = All; }
                field("Ads Required"; "Ads Required") { ApplicationArea = All; }
                field("Ads Count"; "Ads Count") { ApplicationArea = All; }
                field("News Required"; "News Required") { ApplicationArea = All; }
                field("Weather Required"; "Weather Required") { ApplicationArea = All; }
                field("Sports Required"; "Sports Required") { ApplicationArea = All; }
                field(NewsCount; NWSRequired(1)) { ApplicationArea = All; }
                field(WeatherCount; NWSRequired(2)) { ApplicationArea = All; }
                field(SportsCount; NWSRequired(3)) { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}