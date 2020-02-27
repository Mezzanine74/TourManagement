import { Injectable } from '@angular/core';
import {
  HttpEvent,
  HttpInterceptor,
  HttpHandler,
  HttpRequest,
  HttpErrorResponse
} from '@angular/common/http';
import { Observable } from 'rxjs';
import { Auth0Service } from './auth.service';
import { Constants } from '../constants';
import { Router } from '@angular/router';

@Injectable()
export class AuthInterceptor implements HttpInterceptor {
  constructor(private _authService: Auth0Service, private _router: Router) {}

  intercept(
    req: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    if (req.url.startsWith(Constants.apiRoot)) {
        var accessToken = this._authService.getAccessToken();
        const headers = req.headers.set('Authorization', `Bearer ${accessToken}`).set('Ahmet', 'Burada');
        const authReq = req.clone({ headers });
        return next.handle(authReq);
    } else {
        return next.handle(req);
      }

    //   return next.handle(authReq).do(() => {}, error => {
    //     var respError = error as HttpErrorResponse;
    //     if (respError && (respError.status === 401 || respError.status === 403)) {
    //       this._router.navigate(['/unauthorized']);
    //     }
    //   });
    
  }
}
