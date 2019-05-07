OBJECT Page 50000 Radio Show List
{
  OBJECT-PROPERTIES
  {
    Date=18-09-16;
    Time=12:41:12;
    Modified=Yes;
    Version List=CDM01;
  }
  PROPERTIES
  {
    SourceTable=Table50000;
    PageType=List;
  }
  CONTROLS
  {
    { 1   ;0   ;Container ;
                ContainerType=ContentArea }

    { 2   ;1   ;Group     ;
                Name=Group;
                GroupType=Repeater }

    { 3   ;2   ;Field     ;
                SourceExpr="No." }

    { 4   ;2   ;Field     ;
                SourceExpr="Show Code" }

    { 5   ;2   ;Field     ;
                SourceExpr=Name }

    { 6   ;2   ;Field     ;
                SourceExpr="Run Time" }

    { 7   ;2   ;Field     ;
                SourceExpr="Host Code" }

    { 8   ;2   ;Field     ;
                SourceExpr="Host Name" }

    { 9   ;2   ;Field     ;
                SourceExpr="Average Listenerss" }

    { 10  ;2   ;Field     ;
                SourceExpr="Audience Share" }

    { 11  ;2   ;Field     ;
                SourceExpr="Advertising Revenue" }

    { 12  ;2   ;Field     ;
                SourceExpr="Royalty Cost" }

  }
  CODE
  {

    BEGIN
    END.
  }
}

