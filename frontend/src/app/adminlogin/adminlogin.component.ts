import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormControl,FormGroup, Validators } from '@angular/forms';
import { AdminserviceService } from '../adminservice.service';
import { Iadmin } from '../iadmin';

import { ActivatedRoute } from '@angular/router';
import { Adminstore } from '../adminstore';
@Component({
  selector: 'app-adminlogin',
  templateUrl: './adminlogin.component.html',
  styleUrls: ['./adminlogin.component.css']
})
export class AdminloginComponent implements OnInit {
  logindata:Iadmin={
    email:'' ,
    password: '', 
    firstName: ''
  }
constructor(private adminservice:AdminserviceService,private router:Router) { }

  ngOnInit(): void {
  
  }
  login() {

   this.adminservice.loginAdmin(this.logindata).subscribe(
    data=> {   
      if(data) {
        Adminstore.email = data.email
        Adminstore.password = data.password
        Adminstore.firstName = data.firstName
        alert("Welcome Admin")
        this.router.navigate(['/nav'])
      }
    })
  }
}
