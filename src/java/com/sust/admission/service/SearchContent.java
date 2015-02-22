/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sust.admission.service;

/**
 *
 * @author Biswajit Debnath
 */
public class SearchContent {
    private String content;

    public SearchContent(String content){
        setContent(content);
        replaceSpace();
    }
    
    private void setContent(String content){
        this.content=content;
    }
    
    private void replaceSpace(){
        content = content.replace(" ", "%");
    }
    
    private String getContent(){
        return this.content;  
    }
    
    @Override
    public String toString(){
        return String.format("%s", getContent());
    }
    
}
