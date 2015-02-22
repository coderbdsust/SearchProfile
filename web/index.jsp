<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sust.admission.service.SearchContent"%>
<%@page import="com.sust.admission.databaseservice.GetQuery"%>
<%@page import="com.sust.admission.service.DbUser"%>
<%@page import="com.sust.admission.databaseservice.DatabaseService"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Result Query Table</title>
        <link rel="stylesheet"  href="reset.css"/>
        <link rel="stylesheet"  href="search_style.css"/>
        <script src="js/check.js"></script>
    </head>

    <body>

        <div class="mainview" align="center">
            <header>
                <h2>Profile Searching</h2>
            </header>

            <div class="mainbody">

                <div class="tableview" align="center">

                    <div id="divTable">      
                        <div id="divTableBody">

                        	<div id="divRowHead">
                                <div id="divCell_1">REGISTRATION_NO</div>
                                <div id="divCell_2">FULL_NAME</div>
                                <div id="divCell_3">CONTACT_NO</div>
                                <div id="divCell_4">EXAM_ROLL</a></div>
                            </div>

                            <%

                                DatabaseService dbService = new DatabaseService(
                                        DbUser.DATABASETYPE,
                                        DbUser.DATABASEURL,
                                        DbUser.USERNAME,
                                        DbUser.PASSWORD
                                );

                                GetQuery getQuery = new GetQuery();

                                ResultSet resultSet = null;
                                String regNo = "";
                                String fullName = "";
                                String contactNo = "";
                                String examRoll = "";
                                int profileCounter = 0;

                                if (request.getParameterMap().containsKey("content")) {
                                    String content = request.getParameter("content");
                                    if (!(content == null || content.equals("") || content.replace(" ","").length()==0)) {
                                        SearchContent searchContent = new SearchContent(content);
                                        String query = getQuery.getSearchQuery(searchContent);
                                        System.out.println(query);
                                        resultSet = dbService.getResultSet(query);
                                    }
                                }

                                try {
                                    while (resultSet != null && resultSet.next()) {
                                        regNo = (String) resultSet.getString("registration_no");
                                        System.out.println(regNo);
                                        fullName = (String) resultSet.getString("full_name");
                                        System.out.println(fullName);
                                        contactNo = (String) resultSet.getString("contact_no");
                                        System.out.println(contactNo);
                                        examRoll = (String) resultSet.getString("exam_roll");
                                        System.out.println(examRoll);
                                        profileCounter++;

                            %>

                            

                            <div id="divRow">
                                <div id="divCell_1"><%=regNo%></div>
                                <div id="divCell_2"><%=fullName%></div>
                                <div id="divCell_3"><%=contactNo%></div>
                                <div id="divCell_4"><a href="profile.jsp?searchRoll=<%=examRoll%>" target="_blank"><%=examRoll%></a></div>
                            </div>

                            <%
                                    }
                                } catch (SQLException error) {
                                    error.printStackTrace();
                                } catch (Exception error) {
                                    error.printStackTrace();
                                }
                            %>

                        </div> 


                    </div>

                    <div class="query_input">
                        <ul>
                            <li>
                                <h1>PROFILE MATCHED: <%=profileCounter%></h1>
                            </li>
                            <li>
                                <form action="index.jsp" method="post">
                                    <input type="text" placeHolder="Search Profile" name="content">
                                    <input type="submit" value="search" name="search">
                                </form>
                            </li>
                        </ul>
                    </div> 

                </div>

            </div>

            <div class="footer">
                <p>Developed By: <a href="https://www.facebook.com/csebiswa" target="_blank">coder.bd</a></p>
                <p>Powered By: SUST-CSE</p>
            </div> 

        </div>
    </body>
</html>