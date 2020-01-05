<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebFormDemo.About" %>
<%@ Register TagPrefix="My" TagName="SampleControlOne" Src="~/SampleControlOne.ascx" %>
<%@ Register TagPrefix="My" TagName="EventUserControl" Src="~/EventUserControl.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <My:SampleControlOne runat="server" ID="SampleControlOne1" UserName="John Doe" UserAge="45" UserCountry="Australia" />

<asp:PlaceHolder runat="server" ID="phUserInfoBox" />

    <asp:Button ID="TestButton" Text="submit" runat="server" />

    <My:EventUserControl runat="server" ID="MyEventUserControl" OnPageTitleUpdated="MyEventUserControl_PageTitleUpdated" />
</asp:Content>
