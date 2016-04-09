package com.studybuddie.model;

/**
 *
 * @author Nikesh
 */
public class FieldOfStudy {
    
    private int fieldId;
    private String fieldName;

    
    public FieldOfStudy(int fieldId, String fieldName){
        this.fieldId = fieldId;
        this.fieldName = fieldName;
    }
    
    public int getFieldId() {
        return fieldId;
    }

    public void setFieldId(int fieldId) {
        this.fieldId = fieldId;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }
    
}
