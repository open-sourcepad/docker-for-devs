import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {range} from 'rxjs';
import {switchMap, map} from 'rxjs/operators';


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
    range(100, 155)
      .pipe(
        map((idx) => {
        const ip = `http://192.168.1.${idx}:3050/api/health_check`;
        return this.http.get(ip);
        })
      ).subscribe(e => {
        e.subscribe(r => {
          if(r && r["api_version"]) {
            this.remoteApiList.push(r)
          }
        });
      });
   }
}
