 import React from 'react'
 import './App.css'
 import Registro from './sesionusuario/Registro.js'
 import IniciarSesion from './sesionusuario/IniciarSesion.js'
 import { BrowserRouter as Router, Switch, Route, Link } from 'react-router-dom';

 class App extends React.Component{
 	
 	constructor(props) {
    super(props);

    this.state = {
      registro: false,
      login: false,
      loggeado:false,
      correo:"",
      id:"",
      solicitarAyuda:false
    };
    this.iniciarSesion = this.iniciarSesion.bind(this);
    this.registrarse = this.registrarse.bind(this);
    this.atras= this.atras.bind(this);
    this.loged = this.loged.bind(this);
    this.cerrarSesion = this.cerrarSesion.bind(this);
  }

loged(bol,correo){
  this.setState({loggeado:true, correo:correo});
}

atras(atras){
    this.setState({registro:false, login:false});
  }

  cerrarSesion(){
  this.setState({registro:false,login:false,loggeado:false,correo:""});
}

renderBtnSesion()
{
  if(this.state.registro==false && this.state.login==false){
      return(
        <div className="useri">
        
        
        	<button type="button" className="btnReg" onClick={this.registrarse}>Registrarme</button>  
         
        
        <span> </span>
         <p></p>
        
        	<button type="button" className="btnReg" onClick={this.iniciarSesion}>Iniciar Sesión</button>
        
        <span> </span>
        
        </div>

      );
  }
  else if(this.state.loggeado) {
    return (
  <div className="useri">
    <p></p>
    <p></p>
    <button type="button" className="btnCerrarSesion" onClick={this.cerrarSesion}>Cerrar Sesión</button>
  </div>

    );
  }
  else {
    return null;
  }
}


//
registrarse()
{
  this.setState({registro:true});
}
iniciarSesion()
{
  this.setState({login:true});
}
showContent()
{

	let registro = this.state.registro;
    let login = this.state.login;
    let loggeado = this.state.loggeado;
    let nickname = this.state.nickname;
  
  if(this.state.loggeado)
  {
    return(<div>
      <br/>
      <br/>
      <br/>
      Logeado
      </div>);
  }
  else
  {
  	if(registro &&!loggeado)
    {
    	return(
        <div>
          <br/>
          <br/>

          <Registro loged={this.loged} atras={this.atras}/>
          <br/>
          <br/>
        </div>);
    }
    else if(login &&!loggeado)
    {
      return(
        <div>
        <br/>
        <br/>
        <IniciarSesion loged={this.loged} atras={this.atras}/>
          <br/>
          <br/>
        </div>
      );
    }
    else
    {
      return(
        <div>
        No loggeado
        </div>);
    }
  }
}

//
 	render(){

 		return(	 
 			<div>

 			<nav className="barra">

               <a > SOAT CNPX </a>

                     {this.renderBtnSesion()}

           </nav> 
           <br />
           <br />
           <br />
		        <div className = "App">
		          <div className="container">
		          <br/>

		          {this.showContent()}

		          <Router>
		          <Route exact path = "/users" render = {()=><div></div>}/>
					</Router>
		          </div>
		        </div>

 			</div>
 		)
 	}
 }

 export default App