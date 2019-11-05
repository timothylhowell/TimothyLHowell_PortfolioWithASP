<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>
<script runat="server">


    protected void submitButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // Code that uses the data entered by the user
            // Define data objects
            SqlConnection conn;
            SqlCommand comm;
            // Read the connection string from Web.config
            string connectionString =
                ConfigurationManager.ConnectionStrings[
                "projectFiveTimothyHowell"].ConnectionString;
            // Initialize connection
            conn = new SqlConnection(connectionString);
            // Create command 
            comm = new SqlCommand("EXEC insertContact @nameTextBox,@emailTextBox, @msgTextBox", conn);
            comm.Parameters.Add("@nameTextBox", System.Data.SqlDbType.VarChar, 45);
            comm.Parameters["@nameTextBox"].Value = name.Text;
            comm.Parameters.Add("@emailTextBox", System.Data.SqlDbType.VarChar, 255);
            comm.Parameters["@emailTextBox"].Value = email.Text;
            comm.Parameters.Add("@msgTextBox", System.Data.SqlDbType.VarChar, 3000);
            comm.Parameters["@msgTextBox"].Value = message.Text;

            // Enclose database code in Try-Catch-Finally
            try
            {
                // Open the connection
                conn.Open();
                // Execute the command
                comm.ExecuteNonQuery();
                // Reload page if the query executed successfully
                Response.Redirect("thankyou.html");
            }
            catch (SqlException ex)
            {
                // Display error message
                dbErrorMessage.Text =
                   "Error submitting the data!" + ex.Message.ToString();

            }
            finally
            {
                // Close the connection
                conn.Close();
            }
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--
        Timothy Howell Portfolio
        Author: Timothy Howell
        Filename: contact.aspx
       -->
    <meta charset="utf-8" />
    <meta name="description" content="Timothy Howell's personal portfolio" />
    <meta name="author" content="Timothy Howell" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Contact</title>
    <link href="css/style1.css" rel="stylesheet" />
    <link href="css/style3.css" rel="stylesheet" />
    <link href="css/style5.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class="navigation">
            <a href="index.html">Home</a>
            <a href="experience.html">Experience</a>
            <a href="projects.html">Projects</a>
            <a href="contact.html">Contact</a>
            <a href="videos.html">Favorite Videos</a>
            <a href="business/index.html">Example Business Page</a>
        </div>
    </header>
    <main>
        <h1>Contact and Feedback</h1>
        <form id="feedback" runat="server">

            <fieldset id="custInfo">
                <legend>Feedback</legend>

                <div class="formRow">
                    <label for="name"> Name</label>
                    <asp:TextBox ID="name" runat="server" Width="176px" />
                &nbsp;
                    </div>

                <div class="formRow">
                    <label for="email">E-Mail</label>
                    <asp:TextBox ID="email" runat="server" Width="167px" />
                &nbsp;
                    </div>


                <label for="message">Please leave me a comment:&nbsp;
                <br />
                </label>&nbsp;<asp:TextBox ID="message" runat="server" Height="83px" Width="1068px" />

            </fieldset>
            <div id="buttons">

                <asp:Button ID="submitButton" runat="server"
                Text="Submit" onclick="submitButton_Click" />
                <br />​

        <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please enter your name." ControlToValidate="name" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please enter your email." ControlToValidate="email" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Please leave me a comment." ControlToValidate="message" 
            Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>
        </form>
    </main>
    <footer>
        <a href="http://www.github.com"><img src="images/github.png" alt="Github link" /></a>
        <a href="http://www.linkedin.com"><img src="images/linkedin.png" alt="LinkedIn link" /></a>
    </footer>


</body>
</html>