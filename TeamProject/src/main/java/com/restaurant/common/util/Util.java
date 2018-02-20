package com.restaurant.common.util;

import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Util {
	
	public static int nvl(String text){
		return nvl(text, 0);
	}

	/***********************************************************
	 * nvl() �޼���� ���ڿ��� ���ڷ� ��ȯ�ϴ� �޼���.
	 * @param (���ڷ� ��ȯ�� ���ڿ�, �ʱⰪ���� ����� ��(��ü��))
	   ���� : ���� ó���� üũ���ܿ� ��üũ���ܷ� ����.
	           üũ ���ܴ� ��������� / ��Ʈ��ũ ����� / �����ͺ��̽� �����.
	           �������� ��üũ ���ܷ� �ν�.
	 * @return int             
	 ***********************************************************/
 
	 public static int nvl(String text, int def){
		int ret = def;
		try{
			ret = Integer.parseInt(text);
		}catch(Exception e){
			ret = def;
		}
		return ret;
	}
	
	public static String nvl(Object text, String def){
		if(text==null || "".equals(text.toString().trim())){
			return def;
		}else{
			return text.toString();
		}
	}
	
	public static String htmlCheck(String inputData){
		String reg = "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>";
		String stripDscr = "";
		if(inputData!= null){
			stripDscr = inputData.replaceAll(reg, "");
		}
		return stripDscr;
	}
	
	/***********************************************************
	 * verify() �޼���� �Է°��� ���� ��ȿ�� üũ �޼���.
	 * @param (��ȿ�� ���� , ������ ���� �Է°�)
	 * ���� : . : ������ �ѹ��� / ? : ���ڰ� �������� �ʰų� �ϳ��� ���� / 
	 *       * : ���ڰ� �������� �ʰų� �ϳ� �̻� �ݺ� / + : ���ڰ� �ѹ� �̻� �ݺ�
	 *       (?=pattern) or �������� ���ǵ� ���ϰ� ��ġ�ϴ� ���ڿ� /
	 *       (?:pattern) ������ �Ϻθ� or����(|)�� ����� ����
	 * ���� : �̸��� ��ȿ�� üũ - ^[a-zA-Z0-9]+@[a-zA-Z0-9.]+$
                       �ڵ��� ��ȣ ��ȿ�� üũ - ^01(?:0|1|[6-9])-(?:\d{3,4})-\d{4}$
	 * @return boolean             
	 ***********************************************************/
	public static boolean verify(String pwdPolicy, String password){
		Pattern pattern = Pattern.compile(pwdPolicy);
		Matcher matcher = pattern.matcher(password);
		return matcher.matches();
	}
	
	/**************************************************************
	 * ���� : UUID[���� ���� �ĺ���(UUID, universally unique identifier)]�� 
	 *      128��Ʈ�� ���̴�. ǥ�� ���Ŀ��� UUID�� 32���� 16������ ǥ���Ǹ� �� 36��
	 * 		(32�� ���ڿ� 4���� ������) ���ڷ� �� 8-4-4-4-12��� 5���� �׷��� ���������� �����Ѵ�. 
	 *      �̸��׸� ������ ����. 853b5ba5-5941-48bc-81b0-aa42056bcc29
	 *      �������� �Ϻ��ϰ� ������ ���� ������ ���� ���󿡼� �ߺ��� ���ɼ��� ���� ���ٰ� 
	 *      �����Ǳ� ������ ���� ���ȴ�
	 **************************************************************/
	public static String getRandomString() {
	        return UUID.randomUUID().toString().replaceAll("-", "");
	        //return UUID.randomUUID().toString();
	}
}