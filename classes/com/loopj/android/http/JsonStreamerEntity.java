package com.loopj.android.http;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonStreamerEntity
  implements HttpEntity
{
  private static final int BUFFER_SIZE = 4096;
  private static final StringBuilder BUILDER;
  private static final UnsupportedOperationException ERR_UNSUPPORTED = new UnsupportedOperationException("Unsupported operation in this implementation.");
  private static final Header HEADER_GZIP_ENCODING = new BasicHeader("Content-Encoding", "gzip");
  private static final Header HEADER_JSON_CONTENT;
  private static final byte[] JSON_FALSE;
  private static final byte[] JSON_NULL;
  private static final byte[] JSON_TRUE;
  private static final String LOG_TAG = "JsonStreamerEntity";
  private static final byte[] STREAM_CONTENTS;
  private static final byte[] STREAM_ELAPSED;
  private static final byte[] STREAM_NAME;
  private static final byte[] STREAM_TYPE;
  private final byte[] buffer = new byte['က'];
  private final Header contentEncoding;
  private final Map<String, Object> jsonParams = new HashMap();
  private final ResponseHandlerInterface progressHandler;
  
  static
  {
    BUILDER = new StringBuilder(128);
    JSON_TRUE = "true".getBytes();
    JSON_FALSE = "false".getBytes();
    JSON_NULL = "null".getBytes();
    STREAM_NAME = escape("name");
    STREAM_TYPE = escape("type");
    STREAM_CONTENTS = escape("contents");
    STREAM_ELAPSED = escape("_elapsed");
    HEADER_JSON_CONTENT = new BasicHeader("Content-Type", "application/json");
  }
  
  public JsonStreamerEntity(ResponseHandlerInterface paramResponseHandlerInterface, boolean paramBoolean)
  {
    this.progressHandler = paramResponseHandlerInterface;
    if (paramBoolean) {}
    for (paramResponseHandlerInterface = HEADER_GZIP_ENCODING;; paramResponseHandlerInterface = null)
    {
      this.contentEncoding = paramResponseHandlerInterface;
      return;
    }
  }
  
  private void endMetaData(OutputStream paramOutputStream)
  {
    paramOutputStream.write(34);
  }
  
  static byte[] escape(String paramString)
  {
    if (paramString == null) {
      return JSON_NULL;
    }
    BUILDER.append('"');
    int k = paramString.length();
    int i = -1;
    for (;;)
    {
      i += 1;
      if (i >= k) {
        break;
      }
      char c = paramString.charAt(i);
      String str;
      int m;
      int j;
      switch (c)
      {
      default: 
        if (((c >= 0) && (c <= '\037')) || ((c >= '') && (c <= '')) || ((c >= ' ') && (c <= '⃿')))
        {
          str = Integer.toHexString(c);
          BUILDER.append("\\u");
          m = str.length();
          j = 0;
        }
        break;
      case '"': 
      case '\\': 
      case '\b': 
      case '\f': 
      case '\n': 
      case '\r': 
      case '\t': 
        for (;;)
        {
          if (j < 4 - m)
          {
            BUILDER.append('0');
            j += 1;
            continue;
            BUILDER.append("\\\"");
            break;
            BUILDER.append("\\\\");
            break;
            BUILDER.append("\\b");
            break;
            BUILDER.append("\\f");
            break;
            BUILDER.append("\\n");
            break;
            BUILDER.append("\\r");
            break;
            BUILDER.append("\\t");
            break;
          }
        }
        BUILDER.append(str.toUpperCase(Locale.US));
        break;
      }
      BUILDER.append(c);
    }
    BUILDER.append('"');
    try
    {
      paramString = BUILDER.toString().getBytes();
      return paramString;
    }
    finally
    {
      BUILDER.setLength(0);
    }
  }
  
  private void writeMetaData(OutputStream paramOutputStream, String paramString1, String paramString2)
  {
    paramOutputStream.write(STREAM_NAME);
    paramOutputStream.write(58);
    paramOutputStream.write(escape(paramString1));
    paramOutputStream.write(44);
    paramOutputStream.write(STREAM_TYPE);
    paramOutputStream.write(58);
    paramOutputStream.write(escape(paramString2));
    paramOutputStream.write(44);
    paramOutputStream.write(STREAM_CONTENTS);
    paramOutputStream.write(58);
    paramOutputStream.write(34);
  }
  
  private void writeToFromFile(OutputStream paramOutputStream, RequestParams.FileWrapper paramFileWrapper)
  {
    writeMetaData(paramOutputStream, paramFileWrapper.file.getName(), paramFileWrapper.contentType);
    int j = (int)paramFileWrapper.file.length();
    paramFileWrapper = new FileInputStream(paramFileWrapper.file);
    Base64OutputStream localBase64OutputStream = new Base64OutputStream(paramOutputStream, 18);
    int i = 0;
    for (;;)
    {
      int k = paramFileWrapper.read(this.buffer);
      if (k == -1) {
        break;
      }
      localBase64OutputStream.write(this.buffer, 0, k);
      i += k;
      this.progressHandler.sendProgressMessage(i, j);
    }
    AsyncHttpClient.silentCloseOutputStream(localBase64OutputStream);
    endMetaData(paramOutputStream);
    AsyncHttpClient.silentCloseInputStream(paramFileWrapper);
  }
  
  private void writeToFromStream(OutputStream paramOutputStream, RequestParams.StreamWrapper paramStreamWrapper)
  {
    writeMetaData(paramOutputStream, paramStreamWrapper.name, paramStreamWrapper.contentType);
    Base64OutputStream localBase64OutputStream = new Base64OutputStream(paramOutputStream, 18);
    for (;;)
    {
      int i = paramStreamWrapper.inputStream.read(this.buffer);
      if (i == -1) {
        break;
      }
      localBase64OutputStream.write(this.buffer, 0, i);
    }
    AsyncHttpClient.silentCloseOutputStream(localBase64OutputStream);
    endMetaData(paramOutputStream);
    if (paramStreamWrapper.autoClose) {
      AsyncHttpClient.silentCloseInputStream(paramStreamWrapper.inputStream);
    }
  }
  
  public void addPart(String paramString, Object paramObject)
  {
    this.jsonParams.put(paramString, paramObject);
  }
  
  public void consumeContent() {}
  
  public InputStream getContent()
  {
    throw ERR_UNSUPPORTED;
  }
  
  public Header getContentEncoding()
  {
    return this.contentEncoding;
  }
  
  public long getContentLength()
  {
    return -1L;
  }
  
  public Header getContentType()
  {
    return HEADER_JSON_CONTENT;
  }
  
  public boolean isChunked()
  {
    return false;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalStateException("Output stream cannot be null.");
    }
    long l = System.currentTimeMillis();
    Object localObject1 = paramOutputStream;
    if (this.contentEncoding != null) {
      localObject1 = new GZIPOutputStream(paramOutputStream, 4096);
    }
    ((OutputStream)localObject1).write(123);
    Iterator localIterator = this.jsonParams.keySet().iterator();
    while (localIterator.hasNext())
    {
      paramOutputStream = (String)localIterator.next();
      Object localObject2 = this.jsonParams.get(paramOutputStream);
      if (localObject2 != null)
      {
        ((OutputStream)localObject1).write(escape(paramOutputStream));
        ((OutputStream)localObject1).write(58);
        boolean bool = localObject2 instanceof RequestParams.FileWrapper;
        if ((bool) || ((localObject2 instanceof RequestParams.StreamWrapper)))
        {
          ((OutputStream)localObject1).write(123);
          if (bool)
          {
            writeToFromFile((OutputStream)localObject1, (RequestParams.FileWrapper)localObject2);
            label153:
            ((OutputStream)localObject1).write(125);
          }
        }
        for (;;)
        {
          ((OutputStream)localObject1).write(44);
          break;
          writeToFromStream((OutputStream)localObject1, (RequestParams.StreamWrapper)localObject2);
          break label153;
          if ((localObject2 instanceof JsonValueInterface))
          {
            ((OutputStream)localObject1).write(((JsonValueInterface)localObject2).getEscapedJsonValue());
          }
          else if ((localObject2 instanceof JSONObject))
          {
            ((OutputStream)localObject1).write(((JSONObject)localObject2).toString().getBytes());
          }
          else if ((localObject2 instanceof JSONArray))
          {
            ((OutputStream)localObject1).write(((JSONArray)localObject2).toString().getBytes());
          }
          else
          {
            if ((localObject2 instanceof Boolean))
            {
              if (((Boolean)localObject2).booleanValue()) {}
              for (paramOutputStream = JSON_TRUE;; paramOutputStream = JSON_FALSE)
              {
                ((OutputStream)localObject1).write(paramOutputStream);
                break;
              }
            }
            if ((localObject2 instanceof Long)) {
              ((OutputStream)localObject1).write(((Number)localObject2).longValue().getBytes());
            } else if ((localObject2 instanceof Double)) {
              ((OutputStream)localObject1).write(((Number)localObject2).doubleValue().getBytes());
            } else if ((localObject2 instanceof Float)) {
              ((OutputStream)localObject1).write(((Number)localObject2).floatValue().getBytes());
            } else if ((localObject2 instanceof Integer)) {
              ((OutputStream)localObject1).write(((Number)localObject2).intValue().getBytes());
            } else {
              ((OutputStream)localObject1).write(escape(localObject2.toString()));
            }
          }
        }
      }
    }
    ((OutputStream)localObject1).write(STREAM_ELAPSED);
    ((OutputStream)localObject1).write(58);
    l = System.currentTimeMillis() - l;
    ((OutputStream)localObject1).write((l + "}").getBytes());
    Log.i("JsonStreamerEntity", "Uploaded JSON in " + Math.floor(l / 1000L) + " seconds");
    ((OutputStream)localObject1).flush();
    AsyncHttpClient.silentCloseOutputStream((OutputStream)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\JsonStreamerEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */