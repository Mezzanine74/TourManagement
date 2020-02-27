import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { catchError } from 'rxjs/operators';
import { UserManager, User, WebStorageStateStore, Log } from 'oidc-client';
import { Constants } from '../Constants';
import { Utils } from './utils';
import { AuthContext } from '../model/auth-context';

@Injectable({providedIn: 'root'})
export class Auth0Service {
  private _userManager: UserManager;
  private _user: User;
  authContext: AuthContext;

  private _config = {
    authority: Constants.stsAuthority,
    client_id: Constants.clientId,
    redirect_uri: `${Constants.clientRoot}assets/oidc-login-redirect.html`,
    scope: 'openid projects-api profile',
    response_type: 'id_token token',
    post_logout_redirect_uri: `${Constants.clientRoot}?postLogout=true`,
    userStore: new WebStorageStateStore({ store: window.localStorage }),
    automaticSilentRenew: true,
    silent_redirect_uri: `${Constants.clientRoot}assets/silent-redirect.html`
  };

  constructor(private httpClient: HttpClient) {

    Log.logger = console;

    this._userManager = new UserManager(this._config);
    this._userManager.getUser().then(user => {
      if (user && !user.expired) {
        this._user = user;
        console.log('userrrrrrrrrrrrrrr', this._user);        
        this.loadSecurityContext();
      }
    });
    this._userManager.events.addUserLoaded(args => {
      this._userManager.getUser().then(user => {
        this._user = user;
        this.loadSecurityContext();
      });
    });

  }

  login(): Promise<any> {
    return this._userManager.signinRedirect();
  }

  logout(): Promise<any> {
    return this._userManager.signoutRedirect();
  }

  isLoggedIn(): boolean {
    return this._user && this._user.access_token && !this._user.expired;
  }

  getUserName(): string {
    return this._user ? this._user.profile.name : '';
  }

  getAccessToken(): string {
    return this._user ? this._user.access_token : '';
  }

  getPromiseAccessToken = ():Promise<User> => {
    this._userManager = new UserManager(this._config);
    return this._userManager.getUser()
  }

  signoutRedirectCallback(): Promise<any> {
    return this._userManager.signoutRedirectCallback();
  }

  loadSecurityContext() {
    this.httpClient.get<AuthContext>(`${Constants.apiRoot}Account/AuthContext`).subscribe(context => {
      this.authContext = context;
    }, error => console.error(Utils.formatError(error)));
  }
}
