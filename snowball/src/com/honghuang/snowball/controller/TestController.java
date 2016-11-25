package com.honghuang.snowball.controller;

import com.honghuang.snowball.domain.ApiEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * [Description]
 * date: 2016/11/24
 *
 * @author maofagui
 * @version 1.0
 */
public class TestController {
    @RequestMapping(value = "index_icon.htm")
    public String index_icon(final HttpServletRequest request, Model model) {
        List<ApiEntity> apiList = new ArrayList<ApiEntity>();

        ApiEntity api;

        api = new ApiEntity();
        api.setApiName("getUserIconFromCache.htm");
        api.setInParam("content={\"appId\":12,\"areaId\":30,\"serviceUrl\":\"http://www.qidian.com/\",\"autoLoginFlag\":1,\"autoLoginKeepTime\":1800,\"imei\":\"imeitest\",\"remoteIp\":\"127.0.0.1\",\"ywGuid\":851001523805,\"inputUserId\":\"18686868686\",\"qimei\":\"\",\"referer\":\"http://www.qidian.com/\",\"userAgent\":\"\"}");
        api.setOutParam("{\"outParam\":{\"common\":{\"returnCode\":0,\"returnMessage\":\"ok\"},\"data\":{\"guid\":851001523805,\"nickname\":\"20161118144240647\",\"avatar1\":\"http://me.qidian.com/images/head100x100.gif\",\"avatar2\":\"1\",\"avatar3\":\"\",\"addTime\":\"2016-11-21 16:26:30\",\"expireTime\":\"2016-11-21 16:26:42\"}}}");
        apiList.add(api);

        api = new ApiEntity();
        api.setApiName("getUserIconListFromCache.htm");
        api.setInParam("guidList=[1075000,1234]&content={\"appId\":12,\"areaId\":30,\"serviceUrl\":\"http://www.qidian.com/\",\"autoLoginFlag\":1,\"autoLoginKeepTime\":1800,\"imei\":\"imeitest\",\"remoteIp\":\"127.0.0.1\",\"ywGuid\":801000000128,\"inputUserId\":\"18686868686\",\"qimei\":\"\",\"referer\":\"http://www.qidian.com/\",\"userAgent\":\"\"}");
        api.setOutParam("{\"outParam\":{\"common\":{\"returnCode\":0,\"returnMessage\":\"ok\"},\"data\":[]}}");
        apiList.add(api);

        model.addAttribute("apiList", apiList);
        return "api";
    }
}
