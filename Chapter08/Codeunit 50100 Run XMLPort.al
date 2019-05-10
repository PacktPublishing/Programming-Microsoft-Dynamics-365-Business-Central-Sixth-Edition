codeunit 50100 "Run XMLPort"
{
    trigger OnRun()
    begin
        XMLfile.Create(TEMPORARYPATH + 'RadioShowExport.xml');
        XMLfile.CreateOutStream(OutStream);
        XMLPORT.Export(50000, OutStream);
        FromFileName := XMLfile.Name;
        ToFileName := 'RadioShowExport.xml';
        XMLfile.Close();

        //Need to call DOWNLOAD to move the xml file
        //from the service tier to the client machine
        Download(FromFileName, 'Downloading File...', 'C:', 'Xml file(*.xml)|*.xml', ToFileName);

        //Make sure to clean up the temporary file from the 
        //service tier
        Erase(FromFileName);

    end;

    var
        XMLFile: File;
        OutStream: OutStream;
        FromFileName: Text;
        ToFileName: Variant;
}