<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="StandardControl.StudentReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" >
        function validateSubject(source, args) 
        {
            args.IsValid = cbCsharp.checked || cbJava.checked || cbPython.checked;
        }

        function validateTerms(source, args) 
        {
            args.IsValid = cbTerms.checked;
        }
        function validateGender(source, args) {
            args.IsValid = rbMale.checked || rbFemale.checked;

        }

    </script>
    <style type="text/css">
        div{
            display:flex;
            justify-content:center;
            width:100%;
           
        }
        table{
            border:2px solid black;
            margin:20px;
            padding:20px;
        }
        .auto-style1 {
            width: 387px;
        }
        .auto-style2 {
            width: 89px;
        }
        .auto-style3 {
            width: 267px;
        }
        .auto-style6 {
            width: 599px;
        }
    </style>

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr align="center" >
                    <td class="auto-style2" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/Media/logo1.png" Width="200px" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">Name:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                    </td> 
                    
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Mandatory field" ForeColor="Red" SetFocusOnError="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Mandatory field" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" />
                        <asp:RegularExpressionValidator ID="rvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Format is Invalid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Age:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtAge" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is Mandatory field" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" />
                        <asp:CompareValidator ID="cvAge" runat="server" ErrorMessage="Age must be 18 or above!" ForeColor="Red" Operator="GreaterThanEqual" ValueToCompare="18" ControlToValidate="txtAge" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender:</td>
                    <td class="auto-style6">
                        <asp:RadioButton GroupName="Gender" ID="rbMale" runat="server" Text="Male" />
                        <asp:RadioButton GroupName="Gender" ID="rbFemale" runat="server" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        

                        <asp:CustomValidator ID="cvGender" runat="server" ClientValidationFunction="validateGender" ErrorMessage="Gender is Mandatory to Select" ForeColor="Red" OnServerValidate="cvGender_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Subjects:</td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="cbCsharp" runat="server" Text="C#"  />
                        <asp:CheckBox ID="cbJava" runat="server" Text="Java"  />
                        <asp:CheckBox ID="cbPython" runat="server" Text="Python"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvSubjects" runat="server" Display="Dynamic" ErrorMessage="Select at least one subject" ForeColor="Red" SetFocusOnError="True" ClientValidationFunction="validateSubject" OnServerValidate="cvSubjects_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Country:</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddCountry" runat="server" Width="200px" >
                            <asp:ListItem Value="0">- Select Country</asp:ListItem>
                            <asp:ListItem Value="1">India</asp:ListItem>
                            <asp:ListItem Value="2">America</asp:ListItem>
                            <asp:ListItem Value="3">China</asp:ListItem>
                            <asp:ListItem Value="4">Russia</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvCountry" runat="server" InitialValue="0" ControlToValidate="ddCountry" ErrorMessage="Country is Mandatory field" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Skills:</td>
                    <td class="auto-style6">
                        <asp:ListBox ID="lbSkill" runat="server" Width="205px" SelectionMode="Multiple">
                            <asp:ListItem>ASP.NET</asp:ListItem>
                            <asp:ListItem>SQL</asp:ListItem>
                            <asp:ListItem>HTML</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                            <asp:ListItem>JS</asp:ListItem>
                            <asp:ListItem>BS</asp:ListItem>
                            <asp:ListItem>Angular</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="cbTerms" runat="server" Text="I agree to the terms" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:CustomValidator ID="cvTerms" runat="server" Display="Dynamic" ErrorMessage="Agreement is Compulsory" ForeColor="Red" OnServerValidate="cvTerms_ServerValidate" SetFocusOnError="True" ClientValidationFunction="validateTerms"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="150px" Font-Bold="True" Height="39px" OnClick="btnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>

                <tr  >
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp; 
                    <asp:HyperLink ID="hlWebsite" style="text-decoration:none" runat="server" NavigateUrl="https://mcbu.ac.in/" Text="Visit College Website" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
