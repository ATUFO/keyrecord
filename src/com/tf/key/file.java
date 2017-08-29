package com.tf.key;
import java.io.*;
import android.os.*;
import java.util.*;

public  class file extends Object
{



	public static String str;public static int i;
	public static String conf="/sdcard/hookrecord.txt";
	public static void cfile() throws IOException{
		File fi=new File(conf);
		boolean b=fi.createNewFile();
		if(b==true){
			System.out.println("初始化完成");
		}
	}//创建


	public static void chongxie() throws IOException{
		FileWriter fw=new FileWriter(conf);
		fw.write("");
		fw.flush();
	}//重写



	public static String duqu() throws IOException, Exception{
		FileInputStream fw=new FileInputStream(conf);
		StringBuffer sb = new StringBuffer(); 
		//	File f=new File(conf);
		//	FileOutputStream os = new FileOutputStream(f); 
//	DataOutputStream out = new DataOutputStream(os); 
//	out.writeShort(2); 
//	out.writeUTF(""); 
		/*int c; 
		 while ((c = fw.read()) != -1) { 
		 sb.append((char) c); 
		 } 
		 fw.close(); */
		String y=read.getText(conf);

		return y;

	}//读取



	public static void jiaru(String con) throws IOException, Exception{
		/*	FileInputStream fw=new FileInputStream(conf);
		 StringBuffer sb = new StringBuffer(); 
		 //	File f=new File(conf);
		 //	FileOutputStream os = new FileOutputStream(f); 
		 //	DataOutputStream out = new DataOutputStream(os); 
		 //	out.writeShort(2); 
		 //	out.writeUTF(""); 
		 int c; 
		 while ((c = fw.read()) != -1) { 
		 sb.append((char) c); 
		 } 
		 fw.close(); 

		 String num=null; 
		 String content= ""; 
		 BufferedReader reader=new BufferedReader(new FileReader(conf)); 
		 StringBuffer buffer = new StringBuffer();
		 while ((num=reader.readLine())!= null) 
		 { buffer.append(num + "\n"); 
		 content = buffer.toString(); } 
		 String str = new String(content.getBytes(""), "");
		 */


		read r=new read();
		String st=	r.getText(conf);
		File f=new File(conf);
		FileOutputStream os = new FileOutputStream(f); 
		os.write((st+con).getBytes());



	}


	public static String path(){

		return	Environment.getExternalStorageDirectory().getPath();
	}

}

