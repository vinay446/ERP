package com.glovision.erp.util;

import com.glovision.erp.configuration.ApplicationConfiguration;
import java.util.Arrays;
import java.util.Properties;

import org.apache.log4j.Logger;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 * Common utility classes
 *
 * @author VINAY
 *
 */
public class util {

    private static Logger log = Logger.getLogger(util.class);
    private static final String key = util.getProperites("ssl.key");
    private static final String initvector = util.getProperites("ssl.initvector");

    /**
     * Encrypt the given String into 126 bit SSL Encryption
     *
     *  * @author vinay
     * @param req
     * @return encrypted string, null if exception raises
     */
    public static String encryptString(String req) {
        return encrypt(key, initvector, req);
    }

    /**
     * Decrypt the given String into 126 bit SSL Encryption
     *
     *  * @author vinay
     * @param req
     * @return encrypted string, null if exception raises
     */
    public static String decyptString(String req) {
        return decrypt(key, initvector, req);

    }

    /**
     * encryption
     *
     * @param key
     * @param initVector
     * @param value
     *  * @author vinay
     * @return
     */
    private static String encrypt(String key, String initVector, String value) {
        try {
            IvParameterSpec iv = new IvParameterSpec(initVector.getBytes("UTF-8"));
            SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);

            byte[] encrypted = cipher.doFinal(value.getBytes());

            return Base64.encodeBase64String(encrypted);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return null;
    }

    /**
     * *
     * decryption
     *
     * @param key
     * @param initVector
     * @param encrypted
     *  * @author vinay
     * @return
     */
    private static String decrypt(String key, String initVector, String encrypted) {
        try {
            IvParameterSpec iv = new IvParameterSpec(initVector.getBytes("UTF-8"));
            SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"), "AES");

            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);

            byte[] original = cipher.doFinal(Base64.decodeBase64(encrypted));

            return new String(original);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return null;
    }

    /**
     * Loads application properties for object
     *
     * @param key
     * @return value
     */
    public static String getProperites(String key) {
        try {
            ApplicationConfiguration conf = new ApplicationConfiguration();
            Properties prop = conf.getApplicationProperties("application.properties");
            return prop.getProperty(key);
        } catch (Exception e) {
            log.fatal("Error in loading application properties..." + e.getMessage());
            return null;
        }
    }

    public static void main(String... args) {
        System.out.println("starting..");
        
    }
}
