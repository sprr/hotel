package com.aliyun;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;


public class CommonRpc {

	//登录短信接口
	public static void getCode(String phone,int random) {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAIiwa08GnnbCXV", "qdxEhTMEoKJ40S0O0OWc5LqU63g45i");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("AccessKeyId","TMP.AgHC0cQhnM0OWBoh0JyO6C8xYUbQMiDMnl2nsivVLb42oSsDLcIu_Im8Z_rpMC4CFQC9fC_dgFD6uKMEzvK6KSZ7_FmbFQIVAN3wuuOpkqy0-CD6M13FtQ-nvUS1");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "来贺系统");
        request.putQueryParameter("TemplateCode", "SMS_166665627");
        request.putQueryParameter("TemplateParam", "{\"code\":\""+random+"\"}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
	
	//注册短信接口
	public static void getRegCode(String phone,int random) {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAIiwa08GnnbCXV", "qdxEhTMEoKJ40S0O0OWc5LqU63g45i");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("AccessKeyId","TMP.AgHC0cQhnM0OWBoh0JyO6C8xYUbQMiDMnl2nsivVLb42oSsDLcIu_Im8Z_rpMC4CFQC9fC_dgFD6uKMEzvK6KSZ7_FmbFQIVAN3wuuOpkqy0-CD6M13FtQ-nvUS1");
        request.putQueryParameter("PhoneNumbers", phone);
        request.putQueryParameter("SignName", "来贺系统");
        request.putQueryParameter("TemplateCode", "SMS_166655671");
        request.putQueryParameter("TemplateParam", "{\"code\":\""+random+"\"}");
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
    }
	
}
