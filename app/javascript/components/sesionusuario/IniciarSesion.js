import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import '../App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom'
import {withRouter} from 'react-router-dom';

class IniciarSesion extends Component {
  constructor(props) {
    super(props);

    this.state = {
      correo: "",
      clave:"",
    };
    this.handleChangeCorreo=this.handleChangeCorreo.bind(this);
    this.handleChangeClave=this.handleChangeClave.bind(this);
    this.listo=this.listo.bind(this);
    this.atras=this.atras.bind(this);
  }

 atras(){
    this.props.atras(true);
  }
handleChangeCorreo(event){
  this.setState({correo: event.target.value});
}
handleChangeClave(event){
  this.setState({clave: event.target.value});
}


listo(){




  let {
    correo,
    clave,
  }=this.state;
  if(correo===""){
    alert("Se requiere el correo");
  }
  else if(clave===""){
    alert("Se requiere clave");
  }
  else {

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
    
    console.log(data);
    let x = 0;
    data.forEach((user) => {
      
      console.log(user.email);
      console.log(user.password);

      if(user.email === correo && user.password === clave)
      {
        x = 1;
        
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
                          fetch('/users/'+user1.id, {
                            method: 'put',
                            body: JSON.stringify({sesionactiva:"si"}),
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
                      else
                      {
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
          window.location.replace("/seguros/new");
        }
        else
          window.location.replace("/seguros");
        
      }

       
      
    });

    if(x == 0)
    {
       alert("Usuario o contraseña incorrecta");
    }
    
  });

   
    
        

  }
}
loged(correo, id1){
  this.props.loged(true,correo);
}

  render() {
    const divStyle = {
    width: "35%",
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
  correo,
  clave,
}=this.state;
    return (
      <div style={divStyle}>
<div style={w}>
      <br/>
        <form>
          <br/>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput2" className="letra">Correo: </label>
            <input type="text" className="form-control" id="formGroupExampleInput2" placeholder="correo@correo.com"value={correo} onChange={this.handleChangeCorreo}/>
          </div>
          <div className="form-group">
            <label htmlFor="formGroupExampleInput4" className="letra">Contraseña: </label>
            <input type="password" className="form-control" id="formGroupExampleInput4" placeholder="Contraseña" value={clave} onChange={this.handleChangeClave}/>
          </div>
        </form>
        <br/>
        <div className="btnFor">
        
          <button type="button" className="btnLis" onClick={this.listo}>Entrar</button>
         <span> </span>
         
        <button type="button" className="btnOut" onClick={this.atras}>Atrás</button>
        
        <span> </span>
        </div>
      </div>
      <br/>
      </div>
    );
  }
}

export default IniciarSesion
