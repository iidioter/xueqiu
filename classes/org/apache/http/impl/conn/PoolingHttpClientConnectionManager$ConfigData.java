package org.apache.http.impl.conn;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpHost;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.SocketConfig;

class PoolingHttpClientConnectionManager$ConfigData
{
  private final Map<HttpHost, ConnectionConfig> connectionConfigMap = new ConcurrentHashMap();
  private volatile ConnectionConfig defaultConnectionConfig;
  private volatile SocketConfig defaultSocketConfig;
  private final Map<HttpHost, SocketConfig> socketConfigMap = new ConcurrentHashMap();
  
  public ConnectionConfig getConnectionConfig(HttpHost paramHttpHost)
  {
    return (ConnectionConfig)this.connectionConfigMap.get(paramHttpHost);
  }
  
  public ConnectionConfig getDefaultConnectionConfig()
  {
    return this.defaultConnectionConfig;
  }
  
  public SocketConfig getDefaultSocketConfig()
  {
    return this.defaultSocketConfig;
  }
  
  public SocketConfig getSocketConfig(HttpHost paramHttpHost)
  {
    return (SocketConfig)this.socketConfigMap.get(paramHttpHost);
  }
  
  public void setConnectionConfig(HttpHost paramHttpHost, ConnectionConfig paramConnectionConfig)
  {
    this.connectionConfigMap.put(paramHttpHost, paramConnectionConfig);
  }
  
  public void setDefaultConnectionConfig(ConnectionConfig paramConnectionConfig)
  {
    this.defaultConnectionConfig = paramConnectionConfig;
  }
  
  public void setDefaultSocketConfig(SocketConfig paramSocketConfig)
  {
    this.defaultSocketConfig = paramSocketConfig;
  }
  
  public void setSocketConfig(HttpHost paramHttpHost, SocketConfig paramSocketConfig)
  {
    this.socketConfigMap.put(paramHttpHost, paramSocketConfig);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\PoolingHttpClientConnectionManager$ConfigData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */