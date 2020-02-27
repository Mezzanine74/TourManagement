import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';

import { DxDataGridModule, DxFormModule, DxButtonModule, DxNumberBoxModule, DxSelectBoxModule, DxLookupModule } from 'devextreme-angular';
import { LoginGuard } from '../core/login-guard'

// admin-panel components
import { AracParkListComponent } from '../components/admin-panel/arac-park/arac-park-list.component';
import { AracParkEditComponent } from '../components/admin-panel/arac-park/arac-park-edit.component';
import { AracTanzimListComponent } from '../components/admin-panel/arac-tanzim/arac-tanzim-list.component';
import { AracTanzimEditComponent } from '../components/admin-panel/arac-tanzim/arac-tanzim-edit.component';
import { AracTipListComponent } from '../components/admin-panel/arac-tip/arac-tip-list.component';
import { AracTipEditComponent } from '../components/admin-panel/arac-tip/arac-tip-edit.component';
import { BiletListComponent } from '../components/admin-panel/bilet/bilet-list.component';
import { BiletEditComponent } from '../components/admin-panel/bilet/bilet-edit.component';
import { BolgeListComponent } from '../components/admin-panel/bolge/bolge-list.component';
import { BolgeEditComponent } from '../components/admin-panel/bolge/bolge-edit.component';
import { CurrencyListComponent } from '../components/admin-panel/currency/currency-list.component';
import { CurrencyEditComponent } from '../components/admin-panel/currency/currency-edit.component';
import { MusteriListComponent } from '../components/admin-panel/musteri/musteri-list.component';
import { MusteriEditComponent } from '../components/admin-panel/musteri/musteri-edit.component';
import { OtelListComponent } from '../components/admin-panel/otel/otel-list.component';
import { OtelEditComponent } from '../components/admin-panel/otel/otel-edit.component';
import { PaxListComponent } from '../components/admin-panel/pax/pax-list.component';
import { PaxEditComponent } from '../components/admin-panel/pax/pax-edit.component';
import { SatisSorumlusuListComponent } from '../components/admin-panel/satis-sorumlusu/satis-sorumlusu-list.component';
import { SatisSorumlusuEditComponent } from '../components/admin-panel/satis-sorumlusu/satis-sorumlusu-edit.component';
import { SubeListComponent } from '../components/admin-panel/sube/sube-list.component';
import { SubeEditComponent } from '../components/admin-panel/sube/sube-edit.component';
import { TourListComponent } from '../components/admin-panel/tour/tour-list.component';
import { TourEditComponent } from '../components/admin-panel/tour/tour-edit.component';
import { TourTipListComponent } from '../components/admin-panel/tour-tip/tour-tip-list.component';
import { TourTipEditComponent } from '../components/admin-panel/tour-tip/tour-tip-edit.component';
import { TourMusteriPaxListComponent } from '../components/admin-panel/tour-musteri-pax/tour-musteri-pax-list.component';
import { TourMusteriPaxEditComponent } from '../components/admin-panel/tour-musteri-pax/tour-musteri-pax-edit.component';
import { TurBolgeServisSaatleriListComponent } from '../components/admin-panel/tur-bolge-servis-saatleri/tur-bolge-servis-saatleri-list.component';
import { TurBolgeServisSaatleriEditComponent } from '../components/admin-panel/tur-bolge-servis-saatleri/tur-bolge-servis-saatleri-edit.component';
import { UyrukListComponent} from '../components/admin-panel/uyruk/uyruk-list.component'
import { UyrukEditComponent} from '../components/admin-panel/uyruk/uyruk-edit.component'

const routes: Routes = [

    { path: 'admin-panel/arac-park-list', component: AracParkListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/arac-park-edit/:id', component: AracParkEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/arac-tanzim-list', component: AracTanzimListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/arac-tanzim-edit/:id', component: AracTanzimEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/arac-tip-list', component: AracTipListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/arac-tip-edit/:id', component: AracTipEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/bilet-list', component: BiletListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/bilet-edit/:id', component: BiletEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/bolge-list', component: BolgeListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/bolge-edit/:id', component: BolgeEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/currency-list', component: CurrencyListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/currency-edit/:id', component: CurrencyEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/musteri-list', component: MusteriListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/musteri-edit/:id', component: MusteriEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/otel-list', component: OtelListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/otel-edit/:id', component: OtelEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/pax-list', component: PaxListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/pax-edit/:id', component: PaxEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/satis-sorumlusu-list', component: SatisSorumlusuListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/satis-sorumlusu-edit/:id', component: SatisSorumlusuEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/sube-list', component: SubeListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/sube-edit/:id', component: SubeEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/tour-list', component: TourListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/tour-edit/:id', component: TourEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/tour-musteri-pax-list', component: TourMusteriPaxListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/tour-musteri-pax-edit/:id', component: TourMusteriPaxEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/tour-tip-list', component: TourTipListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/tour-tip-edit/:id', component: TourTipEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/tur-bolge-servis-saatleri-list', component: TurBolgeServisSaatleriListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/tur-bolge-servis-saatleri-edit/:id', component: TurBolgeServisSaatleriEditComponent, canActivate: [ LoginGuard ]},

    { path: 'admin-panel/uyruk-list', component: UyrukListComponent, canActivate: [ LoginGuard ]},
    { path: 'admin-panel/uyruk-edit/:id', component: UyrukEditComponent, canActivate: [ LoginGuard ]},
 
]

@NgModule({
    imports: [DxDataGridModule, DxFormModule, DxButtonModule, DxNumberBoxModule, DxSelectBoxModule, DxLookupModule, CommonModule, RouterModule.forChild(routes)],
    providers: [LoginGuard],
    exports: [],
    declarations: [
        AracParkListComponent,
        AracParkEditComponent,
        AracTanzimListComponent,
        AracTanzimEditComponent,
        AracTipListComponent,
        AracTipEditComponent,
        BiletListComponent,
        BiletEditComponent,
        BolgeListComponent,
        BolgeEditComponent,
        CurrencyListComponent,
        CurrencyEditComponent,
        MusteriListComponent,
        MusteriEditComponent,
        OtelListComponent,
        OtelEditComponent,
        PaxListComponent,
        PaxEditComponent,
        SatisSorumlusuListComponent,
        SatisSorumlusuEditComponent,
        SubeListComponent,
        SubeEditComponent,
        TourListComponent,
        TourEditComponent,
        TourMusteriPaxListComponent,
        TourMusteriPaxEditComponent,
        TourTipListComponent,
        TourTipEditComponent,
        TurBolgeServisSaatleriListComponent,
        TurBolgeServisSaatleriEditComponent,
        UyrukListComponent,
        UyrukEditComponent,
    ],
})
export class ComponentsModule { }