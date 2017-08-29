
package com.tf.key;
import java.io.File;
import java.io.FileInputStream;
public class read  extends Object 
{
	public static String getText(String path) throws Exception {
		FileInputStream in = new FileInputStream(path);
		byte[] bit = new byte[in.available()];
		in.read(bit);
		in.close();
		return (new String(bit));}}

		
		
		
		
		
		
