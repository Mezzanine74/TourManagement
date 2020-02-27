import { Component, NgModule, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DxButtonModule } from 'devextreme-angular';
import { DxListModule } from 'devextreme-angular/ui/list';
import { DxContextMenuModule } from 'devextreme-angular/ui/context-menu';
import { Auth0Service } from '../../../core/auth.service'

@Component({
  selector: 'app-user-panel',
  templateUrl: 'user-panel.component.html',
  styleUrls: ['./user-panel.component.scss']
})

export class UserPanelComponent {
  @Input()
  menuItems: any;

  @Input()
  menuMode: string;

  userName: string;

  constructor(private auth0Service: Auth0Service) {

  }

  isSignIn =():boolean => {
    return this.auth0Service.isLoggedIn();
  }

  getUser =():string => {
    return this.auth0Service.getUserName() ? this.auth0Service.getUserName() : 'login';
  }

  loginClick = () => {
    this.auth0Service.login();
  }

}

@NgModule({
  imports: [
    DxListModule,
    DxContextMenuModule,
    CommonModule,
    DxButtonModule    
  ],
  declarations: [ UserPanelComponent ],
  exports: [ UserPanelComponent ]
})
export class UserPanelModule { }
