/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sust.admission.databaseservice;


import com.sust.admission.service.SearchContent;

/**
 *
 * @author Biswajit Debnath
 */
public class GetQuery {
    
   private static final String dbSchema = "sust_admission_process_2014_15";
            
  public String getSearchQuery(SearchContent content){
      
      return "select REGISTRATION_NO, FULL_NAME, contact_no, exam_roll from "+dbSchema+".student_personal_info where  " +
                        "REGISTRATION_NO like '%"+content+"%' or " +
                        "NICK_NAME like '%"+content+"%' or " +
                        "FULL_NAME like '%"+content+"%' or " +
                        "FATHERS_NAME like '%"+content+"%' or " +
                        "MOTHERS_NAME like '%"+content+"%'or " +
                        "RELIGION like '%"+content+"%'or " +
                        "sex like '%"+content+"%'or " +
                        "BLOOD_GROUP like '%"+content+"%'or " +
                        "DATE_OF_BIRTH like '%"+content+"%' or " +
                        "PLACE_OF_BIRTH like '%"+content+"%' or " +
                        "HOME_DISTRICT like '%"+content+"%' or " +
                        "CONTACT_NO like '%"+content+"%' or " +
                        "GUARDIANS_NAME like '%"+content+"%' or " +
                        "GUARDIANS_CONTACT like '%"+content+"%' or " +
                        "EMAIL_ADDRESS like '%"+content+"%' or " +
                        "NATIONALITY like '%"+content+"%'  or " +
                        "HOME_DISTRICT like '%"+content+"%'  or " +
                        "PRESENT_ADDRESS like '%"+content+"%' or " +
                        "BANK_ACCOUNT_NO like '%"+content+"%' or " +
                        "EXAM_ROLL like '%"+content+"%' order by registration_no, exam_roll";
  }
  
  public String getProfileQuery(String exam_roll){
      return "select * from "+dbSchema+".student_personal_info where exam_roll like '"+exam_roll+"'";
  }
  
}
