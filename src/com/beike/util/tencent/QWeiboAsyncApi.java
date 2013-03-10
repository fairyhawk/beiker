package com.beike.util.tencent;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.beike.util.Constant;
import com.beike.util.PropertyUtil;
import com.beike.util.tencent.QWeiboType.PageFlag;
import com.beike.util.tencent.QWeiboType.ResultType;

public class QWeiboAsyncApi implements QAsyncHandler {
	private static PropertyUtil property=PropertyUtil.getInstance(Constant.PROPERTY_FILE_NAME);
	@Override
	public void onThrowable(Throwable t, Object cookie) {
		System.err.println(cookie.toString() + ":" + t.getLocalizedMessage());

	}

	@Override
	public void onCompleted(int statusCode, String content, Object cookie) {
		System.out.println("success:" + cookie.toString());
		System.out.println("code:" + statusCode);
		System.out.println("content:" + content);
	}

	/**
	 * Asynchronously get request token.
	 * 
	 * @param customKey
	 *            Your AppKey.
	 * @param customSecret
	 *            Your AppSecret.
	 * @return Whether request has started.
	 */
	public boolean getRequestToken(String customKey, String customSecret) {
		String url = "https://open.t.qq.com/cgi-bin/request_token";
		List<QParameter> parameters = new ArrayList<QParameter>();
		OauthKey oauthKey = new OauthKey();
		oauthKey.customKey = customKey;
		oauthKey.customSecrect = customSecret;
		//The OAuth Call back URL(You should encode this url if it
		//contains some unreserved characters).
		oauthKey.callbackUrl =  property.getProperty(Constant.TENCENT_APP_CALL_BACK);

		QWeiboRequest request = new QWeiboRequest();

		return request.asyncRequest(url, "GET", oauthKey, parameters, null,
				this, "getRequestToken");
	}

	/**
	 * Asynchronously get access token.
	 * 
	 * @param customKey
	 *            Your AppKey.
	 * @param customSecret
	 *            Your AppSecret
	 * @param requestToken
	 *            The request token.
	 * @param requestTokenSecret
	 *            The request token Secret
	 * @param verify
	 *            The verification code.
	 * @return Whether request has started.
	 */
	public boolean getAccessToken(String customKey, String customSecret,
			String requestToken, String requestTokenSecret, String verify) {

		String url = "https://open.t.qq.com/cgi-bin/access_token";
		List<QParameter> parameters = new ArrayList<QParameter>();
		OauthKey oauthKey = new OauthKey();
		oauthKey.customKey = customKey;
		oauthKey.customSecrect = customSecret;
		oauthKey.tokenKey = requestToken;
		oauthKey.tokenSecrect = requestTokenSecret;
		oauthKey.verify = verify;

		QWeiboRequest request = new QWeiboRequest();
		return request.asyncRequest(url, "GET", oauthKey, parameters, null,
				this, "getAccessToken");
	}

	/**
	 * Asynchronously get home page messages.
	 * 
	 * @param customKey
	 *            Your AppKey
	 * @param customSecret
	 *            Your AppSecret
	 * @param requestToken
	 *            The access token
	 * @param requestTokenSecret
	 *            The access token secret
	 * @param format
	 *            Response format, xml or json
	 * @param pageFlag
	 *            Page number.
	 * @param nReqNum
	 *            Number of messages you want.
	 * @return Whether request has started.
	 */
	public boolean getHomeMsg(String customKey, String customSecret,
			String requestToken, String requestTokenSecret, ResultType format,
			PageFlag pageFlag, int nReqNum) {

		String url = "http://open.t.qq.com/api/statuses/home_timeline";
		List<QParameter> parameters = new ArrayList<QParameter>();
		OauthKey oauthKey = new OauthKey();
		oauthKey.customKey = customKey;
		oauthKey.customSecrect = customSecret;
		oauthKey.tokenKey = requestToken;
		oauthKey.tokenSecrect = requestTokenSecret;

		String strFormat = null;
		if (format == ResultType.ResultType_Xml) {
			strFormat = "xml";
		} else if (format == ResultType.ResultType_Json) {
			strFormat = "json";
		} else {
			strFormat = "json";
		}

		parameters.add(new QParameter("format", strFormat));
		parameters.add(new QParameter("pageflag", String.valueOf(pageFlag
				.ordinal())));
		parameters.add(new QParameter("reqnum", String.valueOf(nReqNum)));

		QWeiboRequest request = new QWeiboRequest();
		return request.asyncRequest(url, "GET", oauthKey, parameters, null,
				this, "getHomeMsg");
	}

	/**
	 * Asynchronously publish a Weibo message.
	 * 
	 * @param customKey
	 *            Your AppKey
	 * @param customSecret
	 *            Your AppSecret
	 * @param requestToken
	 *            The access token
	 * @param requestTokenSecrect
	 *            The access token secret
	 * @param content
	 *            The content of your message
	 * @param pic
	 *            The files of your images.
	 * @param format
	 *            Response format, xml or json(Default).
	 * @return Whether request has started.
	 */
	public boolean publishMsg(String customKey, String customSecret,
			String requestToken, String requestTokenSecrect, String content,
			String pic, ResultType format) {

		List<QParameter> files = new ArrayList<QParameter>();
		String url = null;
		String httpMethod = "POST";

		if (pic == null || pic.trim().equals("")) {
			url = "http://open.t.qq.com/api/t/add";
		} else {
			url = "http://open.t.qq.com/api/t/add_pic";
			files.add(new QParameter("pic", pic));
		}

		OauthKey oauthKey = new OauthKey();
		oauthKey.customKey = customKey;
		oauthKey.customSecrect = customSecret;
		oauthKey.tokenKey = requestToken;
		oauthKey.tokenSecrect = requestTokenSecrect;

		List<QParameter> parameters = new ArrayList<QParameter>();

		String strFormat = null;
		if (format == ResultType.ResultType_Xml) {
			strFormat = "xml";
		} else if (format == ResultType.ResultType_Json) {
			strFormat = "json";
		} else {
			strFormat = "json";
		}

		parameters.add(new QParameter("format", strFormat));
		try {
			parameters.add(new QParameter("content", new String(content
					.getBytes("UTF-8"))));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
			return false;
		}
		parameters.add(new QParameter("clientip", "127.0.0.1"));

		QWeiboRequest request = new QWeiboRequest();
		return request.asyncRequest(url, httpMethod, oauthKey, parameters,
				files, this, "publishMsg");
	}

}
