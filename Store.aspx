<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Validation</title>
    <style>
        .form-container {
            width: 40%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Payment Information</h2>
            
            <!-- User Name -->
            <label for="txtUserName">User Name:</label>
            <asp:TextBox ID="txtUserName" runat="server" CssClass="input-field" />
            <asp:RequiredFieldValidator 
                ID="rfvUserName" 
                runat="server" 
                ControlToValidate="txtUserName" 
                InitialValue="" 
                ErrorMessage="User Name is required" 
                ForeColor="Red" />

            <!-- Mode of Payment -->
            <label for="ddlPaymentMode">Mode of Payment:</label>
            <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="input-field">
                <asp:ListItem Value="" Text="Select Payment Mode" />
                <asp:ListItem Value="Credit Card" Text="Credit Card" />
                <asp:ListItem Value="Debit Card" Text="Debit Card" />
                <asp:ListItem Value="PayPal" Text="PayPal" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator 
                ID="rfvPaymentMode" 
                runat="server" 
                ControlToValidate="ddlPaymentMode" 
                InitialValue="" 
                ErrorMessage="Please select a payment mode" 
                ForeColor="Red" />

            <!-- Credit Card -->
            <label for="txtCreditCard">Credit Card Number:</label>
            <asp:TextBox ID="txtCreditCard" runat="server" CssClass="input-field" />
            <asp:RegularExpressionValidator 
                ID="revCreditCard" 
                runat="server" 
                ControlToValidate="txtCreditCard" 
                ValidationExpression="^\d{16}$" 
                ErrorMessage="Please enter a valid 16-digit credit card number" 
                ForeColor="Red" />

            <!-- Validation Button -->
            <asp:Button ID="btnValidate" runat="server" Text="Validate" OnClick="btnValidate_Click" />

            <!-- Result message -->
            <asp:Label ID="lblResult" runat="server" CssClass="error-message" Visible="false" />
        </div>
    </form>
</body>
</html>
