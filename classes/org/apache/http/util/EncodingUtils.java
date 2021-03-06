package org.apache.http.util;

import java.io.UnsupportedEncodingException;
import org.apache.http.Consts;

public final class EncodingUtils
{
  public static byte[] getAsciiBytes(String paramString)
  {
    Args.notNull(paramString, "Input");
    return paramString.getBytes(Consts.ASCII);
  }
  
  public static String getAsciiString(byte[] paramArrayOfByte)
  {
    Args.notNull(paramArrayOfByte, "Input");
    return getAsciiString(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static String getAsciiString(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Args.notNull(paramArrayOfByte, "Input");
    return new String(paramArrayOfByte, paramInt1, paramInt2, Consts.ASCII);
  }
  
  public static byte[] getBytes(String paramString1, String paramString2)
  {
    Args.notNull(paramString1, "Input");
    Args.notEmpty(paramString2, "Charset");
    try
    {
      paramString2 = paramString1.getBytes(paramString2);
      return paramString2;
    }
    catch (UnsupportedEncodingException paramString2) {}
    return paramString1.getBytes();
  }
  
  public static String getString(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    Args.notNull(paramArrayOfByte, "Input");
    Args.notEmpty(paramString, "Charset");
    try
    {
      paramString = new String(paramArrayOfByte, paramInt1, paramInt2, paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return new String(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static String getString(byte[] paramArrayOfByte, String paramString)
  {
    Args.notNull(paramArrayOfByte, "Input");
    return getString(paramArrayOfByte, 0, paramArrayOfByte.length, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\util\EncodingUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */