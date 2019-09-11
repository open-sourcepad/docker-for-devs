import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  api_version;
  definition;
  remoteApi = 'http://0.0.0.0:3050/api';
  doneScan = false;
  remoteApiList = [];

  constructor(private http: HttpClient) {
    this.getFromApi();
    this.scan();
  }

  getFromApi() {
    this.http.get(`${this.remoteApi}/health_check`).subscribe(e => {
      this.api_version = e["api_version"];
    });
  }

  define() {
    this.definition = '';
    const value = document.getElementById('word')['value'];

    this.http.get(`${this.remoteApi}/define?word=${value}`).subscribe(e => {
      this.definition = e["definition"];
    });
  }

  scan() {
    const prefix = 'http://192.168.1.';
    let ip = 100;

    while(ip < 256) {
      this.http.get(`${prefix + ip}/health_check`).subscribe(e => {
        if(e) {
          if(e["api_version"]) {
            this.remoteApiList.push( {
              ip: `${prefix + ip}`,
              data: e
            })
          }
        }
      }, error => {

      });

      ip++;
    }

    this.doneScan = true;

  }
}
