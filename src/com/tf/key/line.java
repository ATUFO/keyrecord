package com.tf.key;
import java.io.*;
import java.util.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;





public class line
{
/**
	 * 
	 * @Title: ReaderFileLine.java 
	 * @Package com.io 
	 * @Description: 读取文件的指定行
	 * @author zxt   
	 * @date 2011-12-1 上午09:32:37 
	 * @version V1.0
	 */
		public static List<String> getFileContent(String path) {
			List<String> strList = new ArrayList<String>();
			try {
				File file = new File(path);
				InputStreamReader read = new InputStreamReader(new FileInputStream(file), "UTF-8");
				BufferedReader reader = new BufferedReader(read);
				String line;
				while((line = reader.readLine()) != null) {
					strList.add(line);
				}
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return strList;
		}
	
	
	
}
