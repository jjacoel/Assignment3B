<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment3B.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            First Name:<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please provide first name" SetFocusOnError="True" ToolTip="Please provide first name">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Last Name:<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please provide last name" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Education:<asp:DropDownList ID="ddlEducation" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="-1">(Select One)</asp:ListItem>
                <asp:ListItem Value="0">Under Graduate</asp:ListItem>
                <asp:ListItem Value="1">Graduate</asp:ListItem>
                <asp:ListItem Value="2">Post Graduate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlEducation" ErrorMessage="Please select education" InitialValue="-1" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" Display="None" ErrorMessage="Please provide password" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirm Password:<asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Password and confirm password must be the same" SetFocusOnError="True">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Please provide confirm password" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Age:<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 and 50" MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            Annual Earnings:<asp:TextBox ID="txtAnnualEarnings" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtAnnualEarnings" ErrorMessage="Please enter valid Annual Earnings" Operator="DataTypeCheck" Type="Currency">Invalid value</asp:CompareValidator>
            <br />
            <br />
            Date of Graduation:<asp:TextBox ID="txtGraduationDate" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvDateofGraduation" runat="server" ControlToValidate="txtGraduationDate" ErrorMessage="Invalid Date of Graduation" Operator="LessThanEqual" Type="Date"></asp:CompareValidator>
            <br />
            <br />
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>
