package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092700608189";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDLmKB8DlLSC6YS1Xp+naJp16CiNlYgeM2Nwyur/kredTeUEQTvj2hpi7wJbHBrI5kpR7CciEIYO6KxmxXuxDeyIr+Leke9UsAYP9UajrmLPDsoU2lXJdReXhGYmB5+A3CEb/3l4qE31L/4zOyI9hvBZI960SrrKhi8hs4b2CXsfkJkc67bRojJmdmlw0Y1CsNBh3sFBO9TvCEJKPHtA7U6a4Rxzsll5tv92MF0eonN8JcDNjIOXW5ts149pmCMwymRPetoHsti5qZB4uReMJv6taU+fXXF/kh0R9Y8zy/FdwAN0Hrx+olhk5II0AdRVdNdhLx4xFZlhlYoMqyN+Fa7AgMBAAECggEAULcbuNL85qUTnBfiTlw0TX3dAzJDhvAdnfwoTjGsgPE7rYnpyQezv1RUoe/Jyc/9Iq53SDeE7JKH952iXlyQMCEyixtZYady3KpB1BuNV7PzSBN5icFHpnnow/Ra8l5utzKnGAJ3I+lGil7Dz7CyZEN31psiRsUTtXpEMCnLLyxSGAhqQ17i3TyqJseCt208DizSgWuusCQ6GNeJo6H2g110HFgs9BbzDTnodFpw29s1zTPN+H6T/g7TcDNeFp5DVKhCmCf/7ijqCCgwdS0YyovObEvcIY2k8VQC9NiAz+wfCvW+3nfILTr4ZBCPNgDUs/dXOCBWoTxmVh18Cg5FEQKBgQDptzrW2ezYJ2zA7ilzEVuty7Zxf1sxsqTcX0kmp3De8UEBcrOG5AMoZX1qkZQ5VKX09Y61Oq1hkvOhjZ334Vv6m+4WyFCYVK5XaL5BT1/T8VxmZoEiCjCQ5LG/Qdco+rQhbfmXkT2kYY8/FR9FmH2K23ZPUqjxHoU+Dt8yvXKA/wKBgQDfAjVzkO+weYH54gLr65ThSODat9Uh1fPz6vJkRuXWStxxIA1QnT4FulIFiZ91ouPerzoqycAgHuJTcp8EwrEo+nB9nk1NTWOPiESI6hF+/XXFKI98piEWiLMTDOgWeUmhDWWPmxStncqHu+S/h3YZ6lHybOozvaTGpi+cB1JuRQKBgQCDlK4iwiSO+XtID430g6RK77LyqVINY9dfXqIPihuI2OjRSON8ISkJ+EGo2vdJY7ffdtR2geeVVKenn9R89zrSmDFuUC7X5G0XNxhOKsL3zx5HZJR1NqlrGeZcmFPrdWIuo/zucU30Gx0L1fd6NkUQBUjRlecZgSZg7vyIU5KAvwKBgQCUhmQTE/SPFF38jwpjFgOSB3e6M7U/U7+mNFQ7dPyePD2VGkPD7PXh2rXF+mK5dkNNjGaxGK1ctzUFXtGJ2iEjqahCAax6T5B/h8Idbcc5TJWjOeBWpE5lM6YQiggI776aBNIfUqny96RrwjgXV6DQob7yNpfE3glgRE5xHG9KAQKBgQCdu8Fuw7Vba8SPRmCxkcD7oJQ8QLBoK6+2+WttT/Fnj0nehvlqieBNj0/33NxYd8i5HfltLPAH/QFtI3e/HiKEP6efncgUqOmLPSdkzPQ4ez/pSRQGewxN1n7NoRPA5L1mgixzyCNf5AsBK/uvvegwRvkDWGmTd/JAm01cD32iAg==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAowDDg6ElcWKT+KV9MxKtZuuPjhrguKPdaiyy3tunWUnTPyAHUq+P4IK6Wnc8mFlDQdvN6j0UxRp4xPfWZXzi/rZGKKCRZUQyN2rMZjbVlA1J2FS3RbeZY8CO8AdagZBPQLe/Tf1AQB7CJuLfa3Rrn+93IokPYxDZBjw+rCpQsEHYv1IamVfOTGgZMnNFKnaRQHSfLzzurYdQevzygubU5jBMm+FMhrnmn/gwLkFo//E3NG3pp6syh8UoadErpXt5z3rIG5DPfipiccMXnl3uXF4XNmaIQv+8dNc2tKh6X9njHcx/PNwitkjrdV4tvK1MirNBsDCo7WxJJ4f7hz0y3QIDAQAB";
	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://127.0.0.1:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://127.0.0.1:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

