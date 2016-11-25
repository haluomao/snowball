package com.honghuang.snowball.domain;

/**
 * [Description]
 * date: 2016/10/6
 *
 * @author maofagui
 * @version 1.0
 */
public class ApiEntity {
    private String apiName;
    private String inParam;
    private String outParam;

    public String getApiName() {
        return apiName;
    }

    public void setApiName(String apiName) {
        this.apiName = apiName;

    }
    public String getInParam() {
        return inParam;
    }

    public void setInParam(String inParam) {
        this.inParam = inParam;
    }

    public String getOutParam() {
        return outParam;
    }

    public void setOutParam(String outParam) {
        this.outParam = outParam;
    }
}
