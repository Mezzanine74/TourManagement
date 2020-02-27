import { Component, OnInit, ViewChild  } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import DataSource from "devextreme/data/data_source";
import { HttpClient } from '@angular/common/http';
import { Constants } from 'src/app/Constants';
import CustomStore from 'devextreme/data/custom_store';
import { DxFormComponent } from 'devextreme-angular';

@Component({
  selector: 'app-arac-tanzim-edit',
  templateUrl: './arac-tanzim-edit.component.html',
  styleUrls: ['./arac-tanzim-edit.component.scss']
})
export class AracTanzimEditComponent implements OnInit {

  @ViewChild('formEdit', {static: false}) formEdit: DxFormComponent  
  dataSource: any;
  loadSource:any;
  apiUrl:any;  

  tourDataSource: any;
  aracParkDataSource: any;
  tourMusteriPaxDataSource: any;

  apiTourUrl:any;  
  apiAracParkUrl:any;  
  apiTourMusteriPax:any;

  tourEditorOptions:any;  
  aracParkEditorOptions:any;  
  tourMusteriPaxEditorOptions:any;

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

    this.apiUrl = ():string => Constants.apiRoot+ Constants.apiAracTanzim;
    this.listPageUrl = ():string => Constants.aracTanzimList;
    this.apiTourUrl = ():string => Constants.apiRoot+ Constants.apiTour;
    this.apiAracParkUrl = ():string => Constants.apiRoot+ Constants.apiAracPark;
    this.apiTourMusteriPax = ():string => Constants.apiRoot+ Constants.apiTourMusteriPax;

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

    this.tourDataSource = new DataSource({
      store: new CustomStore({  
        key: "id",        
        loadMode: "raw",
        load: ():any => {
          return this.httpClient.get(this.apiTourUrl()).toPromise().then((response: any) => {return response.data});
        }
      })
    });

    this.aracParkDataSource = new DataSource({
      store: new CustomStore({  
        key: "id",    
        loadMode: "raw",    
        load: ():any => {
          return this.httpClient.get(this.apiAracParkUrl()).toPromise().then((response: any) => {return response.data});
        }
      })
    });    

    this.tourMusteriPaxDataSource = new DataSource({
      store: new CustomStore({  
        key: "id",        
        loadMode: "raw",
        load: ():any => {
          return this.httpClient.get(this.apiTourMusteriPax()).toPromise().then((response: any) => {return response.data});
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

    this.tourEditorOptions = {
      dataSource: this.tourDataSource, 
      valueExpr: 'id', 
      displayExpr: 'description',
    };    

    this.aracParkEditorOptions = {
      dataSource: this.aracParkDataSource, 
      valueExpr: 'id', 
      displayExpr: 'aracPlakasi',
    };    

    this.tourMusteriPaxEditorOptions = {
      dataSource: this.tourMusteriPaxDataSource, 
      valueExpr: 'id', 
      displayExpr: 'description',
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
