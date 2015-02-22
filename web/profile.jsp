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
                <h2>FULL PROFILE</h2>
            </header>

            <div class="mainbody" >

                <div class="tableview" align="center">

                    <div id="divTable" align="center">
                               
                                     <%
                                         
                                       DatabaseService dbService = new DatabaseService(
                                                DbUser.DATABASETYPE,
                                                DbUser.DATABASEURL,
                                                DbUser.USERNAME,
                                                DbUser.PASSWORD
                                        );
                                       
                                       GetQuery getQuery = new GetQuery();
                                       
                                       ResultSet resultSet=null;

                                        String registration_no="";
                                        String nick_name="";
                                        String full_name="";
                                        String fathers_name="";
                                        String mothers_name="";
                                        String sex="";
                                        String religion="";
                                        String nationality="";
                                        String date_of_birth="";
                                        String place_of_birth="";
                                        String marital_status="";
                                        String blood_group="";
                                        String home_district="";
                                        String present_address="";
                                        String permanent_address="";
                                        String contact_no="";
                                        String email_address="";
                                        String web_address="";
                                        String photo="";
                                        String guardians_name="";
                                        String guardians_relation="";
                                        String guardians_address="";
                                        String guardians_contact="";
                                        String bank_name="";
                                        String bank_branch="";
                                        String bank_account_no="";
                                        String exam_roll="";
                                     

                                        if(request.getParameterMap().containsKey("searchRoll")){
                                                String searchRoll = request.getParameter("searchRoll");
                                                if(!(searchRoll==null || searchRoll.equals(""))){
                                                    String query = getQuery.getProfileQuery(searchRoll);
                                                    System.out.println(query);
                                                    resultSet = dbService.getResultSet(query);
                                                }
                                              }
                                        
                                        try {
                                                while (resultSet!=null && resultSet.next()) {

                                                  registration_no = (String) resultSet.getString("registration_no");
                                                  nick_name = (String) resultSet.getString("nick_name");
                                                  full_name = (String) resultSet.getString("full_name");
                                                  fathers_name = (String) resultSet.getString("fathers_name");
                                                  mothers_name = (String) resultSet.getString("mothers_name");
                                                  sex = (String) resultSet.getString("sex");
                                                  religion = (String) resultSet.getString("religion");
                                                  nationality = (String) resultSet.getString("nationality");
                                                  date_of_birth = (String) resultSet.getString("date_of_birth");
                                                  place_of_birth = (String) resultSet.getString("place_of_birth");
                                                  marital_status = (String) resultSet.getString("marital_status");
                                                  blood_group = (String) resultSet.getString("blood_group");
                                                  home_district = (String) resultSet.getString("home_district");
                                                  present_address = (String) resultSet.getString("present_address");
                                                  permanent_address = (String) resultSet.getString("permanent_address");
                                                  contact_no = (String) resultSet.getString("contact_no");
                                                  email_address = (String) resultSet.getString("email_address");
                                                  web_address = (String) resultSet.getString("web_address");
                                                  photo = (String) resultSet.getString("photo");
                                                  guardians_name = (String) resultSet.getString("guardians_name");
                                                  guardians_relation = (String) resultSet.getString("guardians_relation");
                                                  guardians_address = (String) resultSet.getString("guardians_address");
                                                  guardians_contact = (String) resultSet.getString("guardians_contact");
                                                  bank_name = (String) resultSet.getString("bank_name");
                                                  bank_branch = (String) resultSet.getString("bank_branch");
                                                  bank_account_no = (String) resultSet.getString("bank_account_no");
                                                  exam_roll = (String) resultSet.getString("exam_roll");
                                                  if(registration_no==null){registration_no="";}
                                                  if(nick_name==null){nick_name="";}
                                                  if(full_name==null){full_name="";}
                                                  if(fathers_name==null){fathers_name="";}
                                                  if(mothers_name==null){mothers_name="";}
                                                  if(sex==null){sex="";}
                                                  if(religion==null){religion="";}
                                                  if(nationality==null){nationality="";}
                                                  if(date_of_birth==null){date_of_birth="";}
                                                  if(place_of_birth==null){place_of_birth="";}
                                                  if(marital_status==null){marital_status="";}
                                                  if(blood_group==null){blood_group="";}
                                                  if(home_district==null){home_district="";}
                                                  if(present_address==null){present_address="";}
                                                  if(permanent_address==null){permanent_address="";}
                                                  if(contact_no==null){contact_no="";}
                                                  if(email_address==null){email_address="";}
                                                  if(web_address==null){web_address="";}
                                                  if(photo==null){photo="";}
                                                  if(guardians_name==null){guardians_name="";}
                                                  if(guardians_relation==null){guardians_relation="";}
                                                  if(guardians_address==null){guardians_address="";}
                                                  if(guardians_contact==null){guardians_contact="";}
                                                  if(bank_name==null){bank_name="";}
                                                  if(bank_branch==null){bank_branch="";}
                                                  if(bank_account_no==null){bank_account_no="";}
                                                  if(exam_roll==null){exam_roll="";}
                                    %>

                                      <div id="divTableBody">
                                           <div id="divRow"><div id="divHD">registration_no</div><div id="divHV"><%=registration_no%></div></div>
                                            <div id="divRow"><div id="divHD">nick_name</div><div id="divHV"><%=nick_name%></div></div>
                                            <div id="divRow"><div id="divHD">full_name</div><div id="divHV"><%=full_name%></div></div>
                                            <div id="divRow"><div id="divHD">fathers_name</div><div id="divHV"><%=fathers_name%></div></div>
                                            <div id="divRow"><div id="divHD">mothers_name</div><div id="divHV"><%=mothers_name%></div></div>
                                            <div id="divRow"><div id="divHD">sex</div><div id="divHV"><%=sex%></div></div>
                                            <div id="divRow"><div id="divHD">religion</div><div id="divHV"><%=religion%></div></div>
                                            <div id="divRow"><div id="divHD">nationality</div><div id="divHV"><%=nationality%></div></div>
                                            <div id="divRow"><div id="divHD">date_of_birth</div><div id="divHV"><%=date_of_birth%></div></div>
                                            <div id="divRow"><div id="divHD">place_of_birth</div><div id="divHV"><%=place_of_birth%></div></div>
                                            <div id="divRow"><div id="divHD">marital_status</div><div id="divHV"><%=marital_status%></div></div>
                                            <div id="divRow"><div id="divHD">blood_group</div><div id="divHV"><%=blood_group%></div></div>
                                            <div id="divRow"><div id="divHD">home_district</div><div id="divHV"><%=home_district%></div></div>
                                            <div id="divRow"><div id="divHD">present_address</div><div id="divHV"><%=present_address%></div></div>
                                            <div id="divRow"><div id="divHD">permanent_address</div><div id="divHV"><%=permanent_address%></div></div>
                                            <div id="divRow"><div id="divHD">contact_no</div><div id="divHV"><%=contact_no%></div></div>
                                            <div id="divRow"><div id="divHD">email_address</div><div id="divHV"><%=email_address%></div></div>
                                            <div id="divRow"><div id="divHD">web_address</div><div id="divHV"><%=web_address%></div></div>
                                            <div id="divRow"><div id="divHD">photo</div><div id="divHV"><%=photo%></div></div>
                                            <div id="divRow"><div id="divHD">guardians_name</div><div id="divHV"><%=guardians_name%></div></div>
                                            <div id="divRow"><div id="divHD">guardians_relation</div><div id="divHV"><%=guardians_relation%></div></div>
                                            <div id="divRow"><div id="divHD">guardians_address</div><div id="divHV"><%=guardians_address%></div></div>
                                            <div id="divRow"><div id="divHD">guardians_contact</div><div id="divHV"><%=guardians_contact%></div></div>
                                            <div id="divRow"><div id="divHD">bank_name</div><div id="divHV"><%=bank_name%></div></div>
                                            <div id="divRow"><div id="divHD">bank_branch</div><div id="divHV"><%=bank_branch%></div></div>
                                            <div id="divRow"><div id="divHD">bank_account_no</div><div id="divHV"><%=bank_account_no%></div></div>
                                            <div id="divRow"><div id="divHD">exam_roll</div><div id="divHV"><%=exam_roll%></div></div>

                                      </div>
                                           
                                        <%
                                              }
                                            } catch (SQLException error) {
                                                error.printStackTrace();
                                            }catch(Exception error){
                                                error.printStackTrace();
                                            }
                                        %>
                        </div>


                        <div class="query_input">
                            <ul>
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

