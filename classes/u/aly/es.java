package u.aly;

import android.util.Log;

public final class es
{
  public static boolean a = false;
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void a(String paramString1, String paramString2, Exception paramException)
  {
    if (a) {
      Log.i(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
    }
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      Log.e(paramString1, paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2, Exception paramException)
  {
    int j;
    int i;
    if (a)
    {
      Log.e(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
      paramString2 = paramException.getStackTrace();
      j = paramString2.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      paramException = paramString2[i];
      Log.e(paramString1, "        at\t " + paramException.toString());
      i += 1;
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2, Exception paramException)
  {
    if (a) {
      Log.d(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (a) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public static void d(String paramString1, String paramString2, Exception paramException)
  {
    int j;
    int i;
    if (a)
    {
      Log.w(paramString1, paramException.toString() + ":  [" + paramString2 + "]");
      paramString2 = paramException.getStackTrace();
      j = paramString2.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      paramException = paramString2[i];
      Log.w(paramString1, "        at\t " + paramException.toString());
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\es.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */