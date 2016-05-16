package org.mxkl.util;

import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;

//用于进行Https请求的HttpClient  
public class SSLClient{
	
	public  DefaultHttpClient defaultHttpClient;
	
	public SSLClient()  {
		
	}
	
	public static HttpClient wrapClient(HttpClient base) {  
        try {  
            SSLContext ctx = SSLContext.getInstance("TLS");  
            X509TrustManager tm = new X509TrustManager() {  
                @Override  
                public X509Certificate[] getAcceptedIssuers() {  
                    return null;  
                }  

                @Override  
                public void checkClientTrusted(  
                        java.security.cert.X509Certificate[] chain,  
                        String authType)  
                        throws java.security.cert.CertificateException {  
                      
                }  

                @Override  
                public void checkServerTrusted(  
                        java.security.cert.X509Certificate[] chain,  
                        String authType)  
                        throws java.security.cert.CertificateException {  
                      
                }  
            };  
            ctx.init(null, new TrustManager[] { tm }, null);  
            SSLSocketFactory ssf = new SSLSocketFactory(ctx, SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);  
            ClientConnectionManager ccm = base.getConnectionManager();  
            SchemeRegistry sr = ccm.getSchemeRegistry();  
            sr.register(new Scheme("https", 443, ssf));  
            return new DefaultHttpClient(ccm, base.getParams());  
        } catch (Exception ex) {  
            ex.printStackTrace();  
            return null;  
        }  
    }  
	
	
}

//// 用于进行Https请求的HttpClient
// public class SSLClient extends DefaultHttpClient {
// public SSLClient() throws Exception {
// super();
// SSLContext ctx = SSLContext.getInstance("TLS");
// X509TrustManager tm = new X509TrustManager() {
// @Override
// public void checkClientTrusted(X509Certificate[] chain, String authType) {
// }
//
// @Override
// public void checkServerTrusted(X509Certificate[] chain, String authType) {
// }
//
// @Override
// public X509Certificate[] getAcceptedIssuers() {
// return null;
// }
// };
// ctx.init(null, new TrustManager[] { tm }, null);
// SSLSocketFactory ssf = new SSLSocketFactory(ctx,
//// SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
// ClientConnectionManager ccm = this.getConnectionManager();
// SchemeRegistry sr = ccm.getSchemeRegistry();
// sr.register(new Scheme("https", 443, ssf));
// }
// }
