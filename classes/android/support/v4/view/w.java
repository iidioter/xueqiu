package android.support.v4.view;

import android.view.KeyEvent;

class w
  implements z
{
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = 1;
    int i;
    if ((paramInt2 & 0x1) != 0)
    {
      i = 1;
      paramInt4 = paramInt3 | paramInt4;
      if ((paramInt4 & 0x1) == 0) {
        break label50;
      }
      paramInt3 = j;
    }
    for (;;)
    {
      if (i != 0)
      {
        if (paramInt3 != 0)
        {
          throw new IllegalArgumentException("bad arguments");
          i = 0;
          break;
          label50:
          paramInt3 = 0;
          continue;
        }
        paramInt4 = paramInt1 & (paramInt4 ^ 0xFFFFFFFF);
      }
    }
    do
    {
      return paramInt4;
      paramInt4 = paramInt1;
    } while (paramInt3 == 0);
    return paramInt1 & (paramInt2 ^ 0xFFFFFFFF);
  }
  
  public int a(int paramInt)
  {
    if ((paramInt & 0xC0) != 0) {
      paramInt |= 0x1;
    }
    for (;;)
    {
      int i = paramInt;
      if ((paramInt & 0x30) != 0) {
        i = paramInt | 0x2;
      }
      return i & 0xF7;
    }
  }
  
  public void a(KeyEvent paramKeyEvent) {}
  
  public boolean b(int paramInt)
  {
    return a(a(a(paramInt) & 0xF7, 1, 64, 128), 2, 16, 32) == 1;
  }
  
  public boolean c(int paramInt)
  {
    return (a(paramInt) & 0xF7) == 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */