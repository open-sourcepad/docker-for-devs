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
  constructor(private http: HttpClient) {
    this.getFromApi();
  }

  getFromApi() {
    this.http.get('http://0.0.0.0:3000/api/health_check').subscribe(e => {
      this.api_version = e["api_version"];
    });
  }

  define() {
    this.definition = '';
    const value = document.getElementById('word')['value'];

    this.http.get(`http://0.0.0.0:3000/api/define?word=${value}`).subscribe(e => {
      this.definition = e["definition"];
    });
  }
}
