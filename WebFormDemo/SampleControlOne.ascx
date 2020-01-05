<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SampleControlOne.ascx.cs" Inherits="WebFormDemo.SampleControlOne" %>
<div>
    <b>Information about <%= this.UserName %></b>
    <br />
    <br />
    <%= this.UserName %> is <%= this.UserAge %> years old and lives in <%= this.UserCountry %>
</div>
