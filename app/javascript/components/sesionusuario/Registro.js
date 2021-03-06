import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import '../App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom'

class Registro extends Component {
  constructor(props) {
    super(props);

    this.state = {
      nombre: "",
      correo: "",
      clave:"",
      tipo:"Cliente",
      repetirClave:"",
      error:""
    };
    this.handleChangeName=this.handleChangeName.bind(this);
    this.handleChangeCorreo=this.handleChangeCorreo.bind(this);
    this.handleChangeClave=this.handleChangeClave.bind(this);
    this.handleChangeRClave=this.handleChangeRClave.bind(this);
    this.tipoChange = this.tipoChange.bind(this);
    this.listo=this.listo.bind(this);
    this.atras=this.atras.bind(this);
  }
handleChangeName(event){
  this.setState({nombre: event.target.value},()=>{
    console.log(this.state.nombre)
  });
}
handleChangeCorreo(event){
  this.setState({correo: event.target.value});
}
handleChangeClave(event){
  this.setState({clave: event.target.value});
}
handleChangeRClave(event){
  this.setState({repetirClave: event.target.value});
}
atras(){
    this.props.atras(true);
}

listo(){
  let {
    nombre,
    correo,
    clave,
    repetirClave,
  }=this.state;
  let msg="";
  console.log(nombre,correo,clave,repetirClave);
  if(nombre===""){
    msg="Se requiere el nombre";
    this.setState({error:msg});
    }
  else if(correo===""){
    msg=("Se requiere el correo");
    this.setState({error:msg});
    }
  else if(clave==="" || clave.length < 4){
    msg=("La contraseña debe tener al menos 4 dígitos");
    this.setState({error:msg});
    }
  else if(clave!=repetirClave){
    msg="la clave debe coincidir";
    this.setState({error:msg});
    }
  else if(!correo.includes(".com") || (!correo.includes("@") &&!corre.includes(".co"))){
    msg=("Ingrese un correo valido");
    this.setState({error:msg});
    }
  else {
    //trata de registar al usuario

    console.log(correo);
    
    let id= Math.random()* (10000-1000) + 1000 ;

    console.log(nombre);
    console.log(clave);
    console.log(correo);
    console.log(this.state.tipo);

       fetch('/users', {
        method: 'post',
        body: JSON.stringify({username: nombre, password: clave, email:correo, rol:this.state.tipo, sesionactiva:"si"}),
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': Rails.csrfToken()
        },
        credentials: 'same-origin'
      }).then(function(response) {
        return response.json();
      }).then(function(data) {
        console.log(data);
      });

  
      if(this.state.tipo === "Cliente")
      {

            fetch('/users.json', {
            method: 'get',
            headers: {
              'Content-Type': 'application/json',
              'X-CSRF-Token': Rails.csrfToken()
            },
            credentials: 'same-origin'
          }).then(response => {
            return response.json()
      })
      .then(data => {
        // Work with JSON data here
        
        data.forEach((user) => {
          

          if(user.email === correo && user.password === clave)
          {
            
            if(user.rol === "Cliente")
            {
        fetch('/users.json', {
                        method: 'get',
                        headers: {
                          'Content-Type': 'application/json',
                          'X-CSRF-Token': Rails.csrfToken()
                        },
                        credentials: 'same-origin'
                      }).then(response1 => {
                        return response1.json()
                  })
                  .then(data1 => {
                    // Work with JSON data here
                  
                    data.forEach((user1) => {

                      if(user1.id === user.id)
                      {
                          
                      }
                      else
                      {

                        console.log("Ahora no")
                            fetch('/users/'+user1.id, {
                            method: 'put',
                            body: JSON.stringify({sesionactiva:"no"}),
                            headers: {
                              'Content-Type': 'application/json',
                              'Accept': 'application/json',
                              'X-CSRF-Token': Rails.csrfToken()
                            },
                            credentials: 'same-origin'
                          }).then(function(response) {
                            return response.json();
                          }).then(function(data) {
                            console.log(data);
                          })
                      }
                      
                          
                      
                    })
                    
                  })
                }
            }

          })
        })
          window.location.replace("/seguros/new");
      }
        else
          window.location.replace("/seguros");
  /*
          this.loged(correo, id);
         this.setState({correo:""});
  */

  }
}

tipoChange(event){
    this.setState({tipo:event.target.value});
  }

renderError(error){
  let err= error;
  if(err){
    return (<h2 className="errorMsg">{err}</h2>);
  }
  else{
    return null;
  }
}

loged(correo, id1){
  this.props.loged(true,correo, id1);
}
//
  render() {
    const divStyle = {
    width: "40%",
    margin: "auto",
      borderStyle: "solid",
    borderWidth: "2px",
    borderRadius: "20px",
    borderColor: "#041527",
     boxShadow: "0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)",
};
const w = {
  width: "80%",
  margin: "auto",
}
let {
  nombre,
  correo,
  clave,
  repetirClave,
  error, 
  tipo
}=this.state;
    return (
      <div style={divStyle}>

      {this.renderError(error)}
<div style={w}>
      <br/>
        <form>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput" className="letra">Nombre y apellido: </label>
            <input type="text" className="form-control" id="formGroupExampleInput" placeholder="Nombre y Apellido" value={nombre} onChange={this.handleChangeName}/>
          </div>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput2" className="letra">Correo: </label>
            <input type="email" className="form-control" id="formGroupExampleInput2" placeholder="correo@correo.com"value={correo} onChange={this.handleChangeCorreo}/>
          </div>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput4" className="letra">Contraseña: </label>
            <input type="password" className="form-control" id="formGroupExampleInput4" placeholder="Contraseña" value={clave} onChange={this.handleChangeClave}/>
          </div>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput5" className="letra">Confirmar contraseña: </label>
            <input type="password" className="form-control" id="formGroupExampleInput5" placeholder="Confirmar contraseña" value={repetirClave} onChange={this.handleChangeRClave}/>
          </div>
          <div className="form-group">
            <label htmlFor="formControlSelect" className="letra">Tipo de usuario: </label>
            <select className="form-control" id="formControlSelect" value={tipo} onChange={this.tipoChange}>
            <option value="Cliente">Cliente</option>
            <option value="Administrador">Administrador</option>
            </select>
          </div>
        </form>
        <br/>
        
        <button type="button" className="btnLis" onClick={this.listo}>Registrarme</button>
        
        <button type="button" className="btnOut" onClick={this.atras}>Atrás</button>
        
      </div>
      <br/>
      <br/>

      </div>
    );
  }
}

export default Registro