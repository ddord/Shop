<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testWebForm.aspx.cs" Inherits="WebApplication1.testWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Test Form
        </div>
        <div>
            <input type="button"  runat="server" id="btnTest" onserverclick="btnTest_Click" name="btnTest" value="test" title="test" />
        </div>
    </form>
</body>
</html>
