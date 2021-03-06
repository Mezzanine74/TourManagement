import { Component, OnInit, ViewChild  } from '@angular/core';
import { DxDataGridComponent } from 'devextreme-angular';
import DataSource from "devextreme/data/data_source";
import CustomStore from "devextreme/data/custom_store";
import { HttpClient, HttpParams } from '@angular/common/http';
import { Constants } from 'src/app/Constants';
import {Router, ActivatedRoute} from '@angular/router';
import notify from 'devextreme/ui/notify';
import { confirm } from 'devextreme/ui/dialog';  

@Component({
  selector: 'app-tour-musteri-pax-list',
  templateUrl: './tour-musteri-pax-list.component.html',
  styleUrls: ['./tour-musteri-pax-list.component.scss']
})
export class TourMusteriPaxListComponent implements OnInit {

  dataSource: any;
  @ViewChild('grid', {static: false}) grid: DxDataGridComponent;
  apiUrl:any;  
  apiBiletUrl: any;
  apiPaxUrl: any;
  editPageUrl:any;
  biletDataSource: any;
  paxDataSource: any;

  constructor(private httpClient: HttpClient, private router: Router, private activatedRoute: ActivatedRoute) { 

    this.apiUrl = () => Constants.apiRoot + Constants.apiTourMusteriPax;
    this.editPageUrl = () => Constants.tourMusteriPaxEdit;
    this.apiBiletUrl = () => Constants.apiRoot + Constants.apiBilet;    
    this.apiPaxUrl = () => Constants.apiRoot + Constants.apiPax;    

    this.activatedRoute.paramMap.subscribe((data) => 
    {
      if(window.history.state.data){
        notify({
          message: window.history.state.data.message,
          position: {
              my: "center top",
              at: "center top",
              offset: '0 90'
          }
        }, "success", 1500)
      }
    })    

    this.dataSource = new DataSource({
      store : new CustomStore({  
        key: "id",        
        load: (loadOptions) => {
          let params: HttpParams = new HttpParams();
          [
              "skip", 
              "take", 
              "requireTotalCount", 
              "requireGroupCount", 
              "sort", 
              "filter", 
              "totalSummary", 
              "group", 
              "groupSummary"
          ].forEach(function(i) {
              if(i in loadOptions && loadOptions[i] !== "") 
                  params = params.set(i, JSON.stringify(loadOptions[i]));
          });

          return this.httpClient.get(this.apiUrl(), { params: params })
              .toPromise<any>()
              .then(result => {
                  return {
                      data: result.data,
                      totalCount: result.totalCount,
                      summary: result.summary,
                      groupCount: result.groupCount
                  };
              })
              
      },
        remove: (key):any => {
          return httpClient.delete(this.apiUrl() + '/' + encodeURIComponent(key))
              .toPromise();
        }
      }),            
    });
    
    this.biletDataSource = new CustomStore({  
      key: "id",        
      load: (loadOptions):any => {
        return this.httpClient.get(this.apiBiletUrl())
            .toPromise();
      }
    });

    this.paxDataSource = new CustomStore({  
      key: "id",        
      load: (loadOptions):any => {
        return this.httpClient.get(this.apiPaxUrl())
            .toPromise();
      }
    });    

  }

  onClickEdit = (e) => {
    this.router.navigateByUrl(this.editPageUrl() + '/' + e.row.data.id, { state: { data: e.row.data } });
  }

  onClickDelete = (e) => {

    confirm('Silmek istediginden emin misin?', "Sil").then(c=>{

        if(c){
          this.dataSource.store().remove(e.row.data.id).then(result => {

            // result REMOVE sonrasi id numarasini gonderiyor. Oysa entity gondermeli. Neticede number olup olmadiginin kontrolu boyle
            if(!isNaN(result)){
      
              this.grid.instance.refresh();
        
              setTimeout(function(){
                notify({
                  message: 'Silme Basarili',
                  position: {
                      my: "center top",
                      at: "center top",
                      offset: '0 90'
                  }
                }, "success", 1500)        
          
              }, 1)

            }          
  
          })
        }
    })

  }

  onToolbarPreparing = (e) => {
    e.toolbarOptions.items.unshift({
      location: 'before',
      widget: 'dxButton',
      options: {
          icon: 'plus',
          type:'default',
          // width: 136,
          // text: 'Collapse All',
          onClick: ()=>{
            this.router.navigateByUrl(this.editPageUrl() + '/' + 0, { state: { data: null } });
          }
      }
  })
  }

  ngOnInit() {
      this.dataSource.reload();
  }

}
