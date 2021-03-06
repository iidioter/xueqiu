package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.widget.ab;
import android.support.v7.b.c;
import android.support.v7.b.h;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

final class au
  extends ab
  implements View.OnClickListener
{
  int j = 1;
  private SearchManager k = (SearchManager)this.d.getSystemService("search");
  private SearchView l;
  private SearchableInfo m;
  private Context n;
  private WeakHashMap<String, Drawable.ConstantState> o;
  private boolean p = false;
  private ColorStateList q;
  private int r = -1;
  private int s = -1;
  private int t = -1;
  private int u = -1;
  private int v = -1;
  private int w = -1;
  
  public au(Context paramContext, SearchView paramSearchView, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, h.abc_search_dropdown_item_icons_2line);
    this.l = paramSearchView;
    this.m = paramSearchableInfo;
    this.n = paramContext;
    this.o = paramWeakHashMap;
  }
  
  private Drawable a(ComponentName paramComponentName)
  {
    Object localObject = this.d.getPackageManager();
    ActivityInfo localActivityInfo;
    int i;
    try
    {
      localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
      i = localActivityInfo.getIconResource();
      if (i == 0) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
      return null;
    }
    localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, localActivityInfo.applicationInfo);
    if (localObject == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return (Drawable)localObject;
  }
  
  private Drawable a(Uri paramUri)
  {
    try
    {
      boolean bool = "android.resource".equals(paramUri.getScheme());
      if (bool) {
        try
        {
          Drawable localDrawable1 = b(paramUri);
          return localDrawable1;
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          throw new FileNotFoundException("Resource does not exist: " + paramUri);
        }
      }
      localInputStream = this.n.getContentResolver().openInputStream(paramUri);
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon not found: " + paramUri + ", " + localFileNotFoundException.getMessage());
      return null;
    }
    InputStream localInputStream;
    if (localInputStream == null) {
      throw new FileNotFoundException("Failed to open " + paramUri);
    }
    try
    {
      Drawable localDrawable2 = Drawable.createFromStream(localInputStream, null);
      try
      {
        localInputStream.close();
        return localDrawable2;
      }
      catch (IOException localIOException1)
      {
        Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException1);
        return localDrawable2;
      }
      try
      {
        localIOException1.close();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          Log.e("SuggestionsAdapter", "Error closing icon stream for " + paramUri, localIOException2);
        }
      }
    }
    finally {}
  }
  
  private Drawable a(String paramString)
  {
    Object localObject1;
    if ((paramString == null) || (paramString.length() == 0) || ("0".equals(paramString))) {
      localObject1 = null;
    }
    for (;;)
    {
      return (Drawable)localObject1;
      try
      {
        int i = Integer.parseInt(paramString);
        String str = "android.resource://" + this.n.getPackageName() + "/" + i;
        localDrawable = b(str);
        localObject1 = localDrawable;
        if (localDrawable == null)
        {
          localObject1 = this.n.getResources().getDrawable(i);
          a(str, (Drawable)localObject1);
          return (Drawable)localObject1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Drawable localDrawable = b(paramString);
        Object localObject2 = localDrawable;
        if (localDrawable == null)
        {
          localObject2 = a(Uri.parse(paramString));
          a(paramString, (Drawable)localObject2);
          return (Drawable)localObject2;
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
      }
    }
    return null;
  }
  
  private static String a(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  private static String a(Cursor paramCursor, String paramString)
  {
    return a(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private static void a(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }
  
  private static void a(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }
  
  private void a(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      this.o.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  private Drawable b(Uri paramUri)
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str)) {
      throw new FileNotFoundException("No authority: " + paramUri);
    }
    Resources localResources;
    List localList;
    try
    {
      localResources = this.d.getPackageManager().getResourcesForApplication(str);
      localList = paramUri.getPathSegments();
      if (localList == null) {
        throw new FileNotFoundException("No path: " + paramUri);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    int i = localList.size();
    if (i == 1) {}
    for (;;)
    {
      try
      {
        i = Integer.parseInt((String)localList.get(0));
        if (i != 0) {
          break;
        }
        throw new FileNotFoundException("No resource found for: " + paramUri);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
      if (i == 2) {
        i = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), localNumberFormatException);
      } else {
        throw new FileNotFoundException("More than two path segments: " + paramUri);
      }
    }
    return localResources.getDrawable(i);
  }
  
  private Drawable b(String paramString)
  {
    paramString = (Drawable.ConstantState)this.o.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  private static void d(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    for (paramCursor = paramCursor.getExtras();; paramCursor = null)
    {
      if ((paramCursor != null) && (paramCursor.getBoolean("in_progress"))) {}
      return;
    }
  }
  
  public final Cursor a(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    for (paramCharSequence = ""; (this.l.getVisibility() != 0) || (this.l.getWindowVisibility() != 0); paramCharSequence = paramCharSequence.toString()) {
      return null;
    }
    Object localObject1;
    for (;;)
    {
      try
      {
        localObject1 = this.m;
        if (localObject1 != null) {
          break label75;
        }
        paramCharSequence = null;
        if (paramCharSequence != null)
        {
          paramCharSequence.getCount();
          return paramCharSequence;
        }
      }
      catch (RuntimeException paramCharSequence)
      {
        Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
      }
      return null;
      label75:
      localObject2 = ((SearchableInfo)localObject1).getSuggestAuthority();
      if (localObject2 != null) {
        break;
      }
      paramCharSequence = null;
    }
    Object localObject2 = new Uri.Builder().scheme("content").authority((String)localObject2).query("").fragment("");
    String str = ((SearchableInfo)localObject1).getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject2).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject2).appendPath("search_suggest_query");
    str = ((SearchableInfo)localObject1).getSuggestSelection();
    if (str != null)
    {
      localObject1 = new String[1];
      localObject1[0] = paramCharSequence;
    }
    for (paramCharSequence = (CharSequence)localObject1;; paramCharSequence = null)
    {
      ((Uri.Builder)localObject2).appendQueryParameter("limit", "50");
      localObject1 = ((Uri.Builder)localObject2).build();
      paramCharSequence = this.d.getContentResolver().query((Uri)localObject1, null, str, paramCharSequence, null);
      break;
      ((Uri.Builder)localObject2).appendPath(paramCharSequence);
    }
  }
  
  public final View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.a(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new av(paramContext));
    return paramContext;
  }
  
  public final void a(Cursor paramCursor)
  {
    if (this.p)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    for (;;)
    {
      return;
      try
      {
        super.a(paramCursor);
        if (paramCursor != null)
        {
          this.r = paramCursor.getColumnIndex("suggest_text_1");
          this.s = paramCursor.getColumnIndex("suggest_text_2");
          this.t = paramCursor.getColumnIndex("suggest_text_2_url");
          this.u = paramCursor.getColumnIndex("suggest_icon_1");
          this.v = paramCursor.getColumnIndex("suggest_icon_2");
          this.w = paramCursor.getColumnIndex("suggest_flags");
          return;
        }
      }
      catch (Exception paramCursor)
      {
        Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
      }
    }
  }
  
  public final void a(View paramView, Cursor paramCursor)
  {
    Object localObject2 = null;
    av localav = (av)paramView.getTag();
    if (this.w != -1) {}
    for (int i = paramCursor.getInt(this.w);; i = 0)
    {
      if (localav.a != null)
      {
        paramView = a(paramCursor, this.r);
        a(localav.a, paramView);
      }
      Object localObject1;
      if (localav.b != null)
      {
        localObject1 = a(paramCursor, this.t);
        if (localObject1 != null)
        {
          if (this.q == null)
          {
            paramView = new TypedValue();
            this.d.getTheme().resolveAttribute(c.textColorSearchUrl, paramView, true);
            this.q = this.d.getResources().getColorStateList(paramView.resourceId);
          }
          paramView = new SpannableString((CharSequence)localObject1);
          paramView.setSpan(new TextAppearanceSpan(null, 0, 0, this.q, null), 0, ((CharSequence)localObject1).length(), 33);
          if (!TextUtils.isEmpty(paramView)) {
            break label341;
          }
          if (localav.a != null)
          {
            localav.a.setSingleLine(false);
            localav.a.setMaxLines(2);
          }
          label198:
          a(localav.b, paramView);
        }
      }
      else
      {
        if (localav.c != null)
        {
          ImageView localImageView = localav.c;
          if (this.u != -1) {
            break label370;
          }
          paramView = null;
          label232:
          a(localImageView, paramView, 4);
        }
        if (localav.d != null)
        {
          localObject1 = localav.d;
          if (this.v != -1) {
            break label505;
          }
        }
      }
      label341:
      label370:
      label505:
      for (paramView = (View)localObject2;; paramView = a(paramCursor.getString(this.v)))
      {
        a((ImageView)localObject1, paramView, 8);
        if ((this.j != 2) && ((this.j != 1) || ((i & 0x1) == 0))) {
          break label523;
        }
        localav.e.setVisibility(0);
        localav.e.setTag(localav.a.getText());
        localav.e.setOnClickListener(this);
        return;
        paramView = a(paramCursor, this.s);
        break;
        if (localav.a == null) {
          break label198;
        }
        localav.a.setSingleLine(true);
        localav.a.setMaxLines(1);
        break label198;
        localObject1 = a(paramCursor.getString(this.u));
        paramView = (View)localObject1;
        if (localObject1 != null) {
          break label232;
        }
        paramView = this.m.getSearchActivity();
        String str = paramView.flattenToShortString();
        if (this.o.containsKey(str))
        {
          paramView = (Drawable.ConstantState)this.o.get(str);
          if (paramView == null) {}
          for (localObject1 = null;; localObject1 = paramView.newDrawable(this.n.getResources()))
          {
            paramView = (View)localObject1;
            if (localObject1 != null) {
              break;
            }
            paramView = this.d.getPackageManager().getDefaultActivityIcon();
            break;
          }
        }
        localObject1 = a(paramView);
        if (localObject1 == null) {}
        for (paramView = null;; paramView = ((Drawable)localObject1).getConstantState())
        {
          this.o.put(str, paramView);
          break;
        }
      }
      label523:
      localav.e.setVisibility(8);
      return;
    }
  }
  
  public final CharSequence c(Cursor paramCursor)
  {
    if (paramCursor == null) {}
    do
    {
      do
      {
        return null;
        String str = a(paramCursor, "suggest_intent_query");
        if (str != null) {
          return str;
        }
        if (this.m.shouldRewriteQueryFromData())
        {
          str = a(paramCursor, "suggest_intent_data");
          if (str != null) {
            return str;
          }
        }
      } while (!this.m.shouldRewriteQueryFromText());
      paramCursor = a(paramCursor, "suggest_text_1");
    } while (paramCursor == null);
    return paramCursor;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = a(this.d, this.c, paramViewGroup);
      if (paramViewGroup != null) {
        ((av)paramViewGroup.getTag()).a.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public final boolean hasStableIds()
  {
    return false;
  }
  
  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    d(a());
  }
  
  public final void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    d(a());
  }
  
  public final void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      this.l.setQuery((CharSequence)paramView);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */