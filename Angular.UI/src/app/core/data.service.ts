import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Constants } from '../constants';
import { Auth0Service } from '../core/auth.service'

import { Observable, from } from 'rxjs';


@Injectable({providedIn: 'root'})
export class DataService {

    private _access_token: string;

    constructor(private httpClient: HttpClient, private auth0Service:Auth0Service) { 

    }

    getSube(): Observable<any[]>{
         //this._access_token = this.auth.getAccessToken();
        //var headers = new HttpHeaders().set('Authorization', `Bearer ${this.auth0Service.getAccessToken()}`)
        //.set('Osman', 'Osman bey'); Eklemeleri boyle yapabilirsin
        return this.httpClient.get<any[]>( Constants.apiRoot + '/api/sube');
        //return this.httpClient.get<any[]>( Constants.apiRoot + '/api/projects', { headers: headers });
    }

}