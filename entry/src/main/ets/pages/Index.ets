import axios, { Axios, AxiosError, AxiosResponse } from '@ohos/axios';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button('请求数据').onClick(()=>{

          let url:string = encodeURIComponent('http://service-lqgst76y-1259789050.gz.tencentapigw.com/release/cloudsearch?keywords=qa');

          axios.get(url).then((response:AxiosResponse)=>{
            console.info("results:" + JSON.stringify(response.data));

          })
            .catch((error:AxiosError)=>{
              console.log('resulte:'+error.message);
            })

        })
      }
      .width('100%')
    }
    .height('100%')
  }
}