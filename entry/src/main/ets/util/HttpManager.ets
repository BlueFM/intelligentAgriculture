import { RequestOptions } from './RequestOption';
import { httpCore as HttpCore } from './HttpCore';
import http from '@ohos.net.http';
/**
 * <pre>
 * @desc       : 对外管理器
 * </pre>
 */
export class HttpManager {
  private static mInstance: HttpManager;

  // 防止实例化
  private constructor() {
  }

  static getInstance(): HttpManager {
    if (!HttpManager.mInstance) {
      HttpManager.mInstance = new HttpManager();
    }
    return HttpManager.mInstance;
  }

  request(option: RequestOptions): Promise<http.HttpResponse> {
    return HttpCore.request(option);
  }
}