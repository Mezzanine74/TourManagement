import { Component, OnInit, ViewChild  } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import DataSource from "devextreme/data/data_source";
import { HttpClient } from '@angular/common/http';
import { Constants } from 'src/app/Constants';
import CustomStore from 'devextreme/data/custom_store';
import { DxFormComponent } from 'devextreme-angular';

@Component({
  selector: 'app-tour-edit',
  templateUrl: './tour-edit.component.html',
  styleUrls: ['./tour-edit.component.scss']
})
export class TourEditComponent implements OnInit {

  @ViewChild('formEdit', {static: false}) formEdit: DxFormComponent  
  dataSource: any;
  loadSource:any;
  apiUrl:any;  
  tourTipDataSource: any;
  apiTourTipUrl:any;  
  tourTipEditorOptions:any;  
  listPageUrl: any;
  id: string;
  store: any;
  buttonOptionsEdit:any = {
      text: "Kaydet",
      type: "default",
      useSubmitBehavior: true,
      onClick: (e) => {
        this.saveForm();
      }
  }

  constructor(private activatedRoute: ActivatedRoute, private httpClient:HttpClient, private router: Router) { 

    this.apiUrl = ():string => Constants.apiRoot+ Constants.apiTour;
    this.listPageUrl = ():string => Constants.tourList;
    this.apiTourTipUrl = ():string => Constants.apiRoot+ Constants.apiTourTip;

    this.store = new CustomStore({  
      key: "id",        
      update: (key, values):any => {
        return this.httpClient.put(this.apiUrl() + '/' + encodeURIComponent(key), values)
            .toPromise();
      },
      insert: (values):any => {
        return this.httpClient.post(this.apiUrl(), values)
            .toPromise();
      },        
    });

    this.tourTipDataSource = new DataSource({
      store: new CustomStore({  
        key: "id",        
        loadMode: "raw",        
        load: ():any => {
          return this.httpClient.get(this.apiTourTipUrl()).toPromise().then((response: any) => {return response.data});
        }
      })
    });

    this.activatedRoute.paramMap.subscribe((data) => 
    {
      this.dataSource = window.history.state.data === null ? {} : window.history.state.data;
      this.id = data.get('id');
    })    

    // dataSource kullanma nedenim ngOnInit de RELOAD yapmam gerektigi
    this.loadSource = new DataSource({
      store: new CustomStore({  
        key: "id",        
        load: ():any => {
          return this.httpClient.get(this.apiUrl() + '/' + this.id)
              .toPromise();
        }
      })
    })    

    this.tourTipEditorOptions = {
      dataSource: this.tourTipDataSource, 
      valueExpr: 'id', 
      displayExpr: 'tourAdi',
    };    

  }

  saveForm = () => {
    if(this.formEdit.instance.validate().isValid){
      if(this.id === '0'){
        this.store.insert(this.dataSource).then(result => {
          if(result.id){
            // successful
            // redirect to list
            this.router.navigateByUrl(this.listPageUrl(), { state: { data: {message: 'Basariyla eklendi'} } });
          }
        });
      } else {
        this.store.update(this.dataSource.id,this.dataSource).then(result => {
          if(result.id){
            // successful
            // redirect to list
            this.router.navigateByUrl(this.listPageUrl(), { state: { data: {message: 'Basariyla guncellendi'} } });
          }

        });
      }
    }
  }

  onGeriClick = () => {
    this.router.navigateByUrl(this.listPageUrl());    
  }

  onEditorEnterKey = (e) => {
    this.saveForm();
  }

  ngOnInit() {

    if(!this.dataSource){
      this.loadSource.reload(); // reload yapmazsan HttpInterceptor calismaz
      this.loadSource.load().then(result => { this.dataSource = result[0] })
    }

  }

}
