package com.electric.utils;

import java.util.UUID;

public final class UUIDUtil {

	public static UUID  getUUID(){
		return UUID.randomUUID();
	}
	
	public static String getUUID36Str(){
		return getUUID().toString();
	}
	
	public static String getUUID32Str(){
		return getUUID().toString().replaceAll("-", "");
	}
	
	
	public static void main(String[] args){
		System.out.println("getUUID32Str:"+getUUID32Str());
		System.out.println("getUUID36Str:"+getUUID36Str());
	}
}
