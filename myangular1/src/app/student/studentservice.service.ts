import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StudentserviceService {

  baseUrl: string = "http://localhost:3000/student/";

  constructor(
    private http: HttpClient
  ) { }

  viewAllStudent(): Observable<any> {
    return this.http.get(this.baseUrl);
  }
}
