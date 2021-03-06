package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class $Gson$Types$WildcardTypeImpl
  implements Serializable, WildcardType
{
  private static final long serialVersionUID = 0L;
  private final Type lowerBound;
  private final Type upperBound;
  
  public $Gson$Types$WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    if (paramArrayOfType2.length <= 1)
    {
      bool1 = true;
      .Gson.Preconditions.checkArgument(bool1);
      if (paramArrayOfType1.length != 1) {
        break label87;
      }
      bool1 = true;
      label27:
      .Gson.Preconditions.checkArgument(bool1);
      if (paramArrayOfType2.length != 1) {
        break label97;
      }
      .Gson.Preconditions.checkNotNull(paramArrayOfType2[0]);
      .Gson.Types.access$000(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] != Object.class) {
        break label92;
      }
    }
    label87:
    label92:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      .Gson.Preconditions.checkArgument(bool1);
      this.lowerBound = .Gson.Types.canonicalize(paramArrayOfType2[0]);
      this.upperBound = Object.class;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label27;
    }
    label97:
    .Gson.Preconditions.checkNotNull(paramArrayOfType1[0]);
    .Gson.Types.access$000(paramArrayOfType1[0]);
    this.lowerBound = null;
    this.upperBound = .Gson.Types.canonicalize(paramArrayOfType1[0]);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (.Gson.Types.equals(this, (WildcardType)paramObject));
  }
  
  public final Type[] getLowerBounds()
  {
    if (this.lowerBound != null) {
      return new Type[] { this.lowerBound };
    }
    return .Gson.Types.EMPTY_TYPE_ARRAY;
  }
  
  public final Type[] getUpperBounds()
  {
    return new Type[] { this.upperBound };
  }
  
  public final int hashCode()
  {
    if (this.lowerBound != null) {}
    for (int i = this.lowerBound.hashCode() + 31;; i = 1) {
      return i ^ this.upperBound.hashCode() + 31;
    }
  }
  
  public final String toString()
  {
    if (this.lowerBound != null) {
      return "? super " + .Gson.Types.typeToString(this.lowerBound);
    }
    if (this.upperBound == Object.class) {
      return "?";
    }
    return "? extends " + .Gson.Types.typeToString(this.upperBound);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\$Gson$Types$WildcardTypeImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */