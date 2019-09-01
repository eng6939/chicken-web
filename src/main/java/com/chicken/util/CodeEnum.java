package com.chicken.util;

import java.util.HashMap;
import java.util.Map;

public enum CodeEnum {
	/**
	 * 码样式：【CCCBBOOXXX】
	 * 编码示例说明：
	 * CCC 中心编码&业务系统
	 * BB   业务类型
	 * OO  操作类型
	 * XXX具体编码（000：表示成功，999：系统异常，998：数据库异常，NNN：其它，100：参数异常，200：业务异常）
	* 200开头代码系统默认，其余系统使用10－199之间
	* */
	DEFAULT_SUCCESS(200,"default success"),//200
	DEFAULT_SYS_ERROR(2000000999,"系统错误"),//5001
	CHECK_PARAM_NO_RESULT(2000000100,"检测参数无结果"),//4002
	CHECK_BIZ_NO_RESULT(2000000101,"检查业务无结果"),//4003
	CHECK_ACTION_NO_RESULT(2000000102,"检查执行情况无结果"),
	NO_LOGIN_MESSAGE(1000,"未登录");//


	 private static final Map<Integer, CodeEnum> codeMap = new HashMap<Integer, CodeEnum>((int)(CodeEnum.values().length/0.75)+1);

	    static{
	        for(CodeEnum codeEnum: values()){
	            codeMap.put(codeEnum.getCode(), codeEnum);
	        }
	    }

	    /**
	     * 根据code获取枚举值
	     * @param code
	     * @return
	     */
	    public static CodeEnum valueOfCode(int code){
	        return codeMap.get(code);
	    }

	    private int code;
	    private String msg;

	    CodeEnum(int code, String msg) {
	        this.code = code;
	        this.msg = msg;
	    }

	    public int getCode() {
	        return code;
	    }

	    public void setCode(int code) {
	        this.code = code;
	    }

	    public String getMsg() {
	        return msg;
	    }

	    public void setMsg(String msg) {
	        this.msg = msg;
	    }
	    
}
