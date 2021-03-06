package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

class af
  implements ad
{
  public final Object a(Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInterpolator != null) {
      return new OverScroller(paramContext, paramInterpolator);
    }
    return new OverScroller(paramContext);
  }
  
  public final void a(Object paramObject, int paramInt1, int paramInt2)
  {
    ((OverScroller)paramObject).fling(0, 0, paramInt1, paramInt2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  public final void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, 0, paramInt3);
  }
  
  public final void a(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((OverScroller)paramObject).startScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public final boolean a(Object paramObject)
  {
    return ((OverScroller)paramObject).isFinished();
  }
  
  public final int b(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrX();
  }
  
  public final void b(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ((OverScroller)paramObject).fling(paramInt1, paramInt2, 0, paramInt3, 0, 0, 0, paramInt4, 0, paramInt5);
  }
  
  public final boolean b(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    return ((OverScroller)paramObject).springBack(paramInt1, paramInt2, 0, 0, 0, paramInt3);
  }
  
  public final int c(Object paramObject)
  {
    return ((OverScroller)paramObject).getCurrY();
  }
  
  public float d(Object paramObject)
  {
    return 0.0F;
  }
  
  public final boolean e(Object paramObject)
  {
    return ((OverScroller)paramObject).computeScrollOffset();
  }
  
  public final void f(Object paramObject)
  {
    ((OverScroller)paramObject).abortAnimation();
  }
  
  public final int g(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalX();
  }
  
  public final int h(Object paramObject)
  {
    return ((OverScroller)paramObject).getFinalY();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */