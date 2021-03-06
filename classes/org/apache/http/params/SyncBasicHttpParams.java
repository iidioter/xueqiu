package org.apache.http.params;

import org.apache.http.annotation.ThreadSafe;

@Deprecated
@ThreadSafe
public class SyncBasicHttpParams
  extends BasicHttpParams
{
  private static final long serialVersionUID = 5387834869062660642L;
  
  public void clear()
  {
    try
    {
      super.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Object clone()
  {
    try
    {
      Object localObject1 = super.clone();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public Object getParameter(String paramString)
  {
    try
    {
      paramString = super.getParameter(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public boolean isParameterSet(String paramString)
  {
    try
    {
      boolean bool = super.isParameterSet(paramString);
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public boolean isParameterSetLocally(String paramString)
  {
    try
    {
      boolean bool = super.isParameterSetLocally(paramString);
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public boolean removeParameter(String paramString)
  {
    try
    {
      boolean bool = super.removeParameter(paramString);
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public HttpParams setParameter(String paramString, Object paramObject)
  {
    try
    {
      paramString = super.setParameter(paramString, paramObject);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void setParameters(String[] paramArrayOfString, Object paramObject)
  {
    try
    {
      super.setParameters(paramArrayOfString, paramObject);
      return;
    }
    finally
    {
      paramArrayOfString = finally;
      throw paramArrayOfString;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\params\SyncBasicHttpParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */