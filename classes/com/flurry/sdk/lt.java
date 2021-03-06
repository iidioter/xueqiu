package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class lt
{
  private static final String a = lt.class.getSimpleName();
  
  public static double a(double paramDouble, int paramInt)
  {
    return Math.round(Math.pow(10.0D, paramInt) * paramDouble) / Math.pow(10.0D, paramInt);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i < 0) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    Uri localUri;
    do
    {
      return paramString;
      localUri = Uri.parse(paramString);
    } while ((localUri == null) || (localUri.getScheme() != null));
    return "http://" + paramString;
  }
  
  public static String a(String paramString, int paramInt)
  {
    String str;
    if (paramString == null) {
      str = "";
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.length() <= paramInt);
    return paramString.substring(0, paramInt);
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    char[] arrayOfChar = new char[16];
    char[] tmp18_17 = arrayOfChar;
    tmp18_17[0] = 48;
    char[] tmp23_18 = tmp18_17;
    tmp23_18[1] = 49;
    char[] tmp28_23 = tmp23_18;
    tmp28_23[2] = 50;
    char[] tmp33_28 = tmp28_23;
    tmp33_28[3] = 51;
    char[] tmp38_33 = tmp33_28;
    tmp38_33[4] = 52;
    char[] tmp43_38 = tmp38_33;
    tmp43_38[5] = 53;
    char[] tmp48_43 = tmp43_38;
    tmp48_43[6] = 54;
    char[] tmp54_48 = tmp48_43;
    tmp54_48[7] = 55;
    char[] tmp60_54 = tmp54_48;
    tmp60_54[8] = 56;
    char[] tmp66_60 = tmp60_54;
    tmp66_60[9] = 57;
    char[] tmp72_66 = tmp66_60;
    tmp72_66[10] = 97;
    char[] tmp78_72 = tmp72_66;
    tmp78_72[11] = 98;
    char[] tmp84_78 = tmp78_72;
    tmp84_78[12] = 99;
    char[] tmp90_84 = tmp84_78;
    tmp90_84[13] = 100;
    char[] tmp96_90 = tmp90_84;
    tmp96_90[14] = 101;
    char[] tmp102_96 = tmp96_90;
    tmp102_96[15] = 102;
    tmp102_96;
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte[i];
      int m = (byte)(k & 0xF);
      localStringBuilder.append(arrayOfChar[((byte)((k & 0xF0) >> 4))]);
      localStringBuilder.append(arrayOfChar[m]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static void a()
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
      throw new IllegalStateException("Must be called from the main thread!");
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable) {}
  }
  
  public static boolean a(long paramLong)
  {
    boolean bool = false;
    if ((paramLong == 0L) || (System.currentTimeMillis() <= paramLong)) {
      bool = true;
    }
    return bool;
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return false;
      try
      {
        int i = paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName());
        if (i == 0) {
          return true;
        }
      }
      catch (Exception paramContext)
      {
        kg.a(6, a, "Error occured when checking if app has permission.  Error: " + paramContext.getMessage());
      }
    }
    return false;
  }
  
  public static boolean a(Intent paramIntent)
  {
    return js.a().e().queryIntentActivities(paramIntent, 65536).size() > 0;
  }
  
  public static byte[] a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static String b(String paramString)
  {
    return a(paramString, 255);
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, "ISO-8859-1");
      return paramArrayOfByte;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      kg.a(5, a, "Unsupported ISO-8859-1:" + paramArrayOfByte.getMessage());
    }
    return null;
  }
  
  public static void b()
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
      throw new IllegalStateException("Must be called from a background thread!");
    }
  }
  
  public static String c(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      kg.a(5, a, "Cannot encode '" + paramString + "'");
    }
    return "";
  }
  
  public static String d(String paramString)
  {
    try
    {
      String str = URLDecoder.decode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      kg.a(5, a, "Cannot decode '" + paramString + "'");
    }
    return "";
  }
  
  public static byte[] e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      kg.a(5, a, "Unsupported UTF-8: " + paramString.getMessage());
    }
    return null;
  }
  
  public static byte[] f(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.update(paramString.getBytes(), 0, paramString.length());
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      kg.a(6, a, "Unsupported SHA1: " + paramString.getMessage());
    }
    return null;
  }
  
  public static String g(String paramString)
  {
    return paramString.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
  }
  
  public static Map<String, String> h(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        if (!arrayOfString[0].equals("event")) {
          localHashMap.put(d(arrayOfString[0]), d(arrayOfString[1]));
        }
        i += 1;
      }
    }
    return localHashMap;
  }
  
  public static long i(String paramString)
  {
    long l2;
    if (paramString == null)
    {
      l2 = 0L;
      return l2;
    }
    int j = paramString.length();
    long l1 = 1125899906842597L;
    int i = 0;
    for (;;)
    {
      l2 = l1;
      if (i >= j) {
        break;
      }
      l2 = paramString.charAt(i);
      i += 1;
      l1 = l2 + l1 * 31L;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */