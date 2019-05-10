page 50109 "Playlist Subpage"
{
    PageType = ListPart;
    SourceTable = "Playlist Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Type; Type) { ApplicationArea = All; }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        Res: Record Resource;
                        Item: Record item;
                        RadioShow: Record "Radio Show";
                    begin
                        case Type of
                            Type::Resource:
                                begin
                                    Res.Get("No.");
                                    Description := Res.Name;
                                end;
                            Type::Item:
                                begin
                                    Item.Get("No.");
                                    Description := item.Description;
                                    "Data Format" := item."Data Format";
                                    Duration := item.Duration;
                                end;
                            Type::Show:
                                begin
                                    RadioShow.Get("No.");
                                    Description := RadioShow.Name;
                                end;
                        end;
                    end;
                }
                field("Data Format"; "Data Format") { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
                field(Duration; Duration) { ApplicationArea = All; }
                field("Start Time"; "Start Time") { ApplicationArea = All; }
                field("End Time"; "End Time") { ApplicationArea = All; }
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}