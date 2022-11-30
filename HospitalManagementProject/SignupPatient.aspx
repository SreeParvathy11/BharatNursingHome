<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupPatient.aspx.cs" Inherits="HospitalManagementProject.SignupPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
&nbsp;&nbsp;&nbsp;--> Patient ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tpid" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tname" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">* Enter Your Name *</asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tdob" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbMale" runat="server" Text="Male"  GroupName="Gender"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Blood Group&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="tbg" runat="server" Width="186px">
                <asp:ListItem>Select Blood Group</asp:ListItem>
                <asp:ListItem>A+ve</asp:ListItem>
                <asp:ListItem>A-ve</asp:ListItem>
                <asp:ListItem>B+ve</asp:ListItem>
                <asp:ListItem>B-ve</asp:ListItem>
                <asp:ListItem>AB+ve</asp:ListItem>
                <asp:ListItem>AB-ve</asp:ListItem>
                <asp:ListItem>O+ve</asp:ListItem>
                <asp:ListItem>O-ve</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp; Mobile Number&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tmno" runat="server" TextMode="Phone"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tmno" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">* Enter Mobile No *</asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tpassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp; Confirm Password&nbsp;
            <asp:TextBox ID="tconpassword" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tpassword" ControlToValidate="tconpassword" ErrorMessage="CompareValidator" ForeColor="#993300">Password Not Matching</asp:CompareValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already have an account? Login&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        </div>
    </form>
</body>
</html>
