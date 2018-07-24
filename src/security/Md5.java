package security;

import java.math.*;
import java.security.*;

import javax.management.RuntimeErrorException;
public class Md5 {
	
	public static String encrypt(String str )
	{
		try {
		MessageDigest mdd =MessageDigest.getInstance("MD5");
		byte[] messageDigest = mdd.digest(str.getBytes());
		BigInteger num = new BigInteger(1,messageDigest);
		String hashtext = num.toString(16);
		while(hashtext.length()<32)
		{
			hashtext = "0" + hashtext;
		}
		return hashtext;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}	
	}
	
	
}
