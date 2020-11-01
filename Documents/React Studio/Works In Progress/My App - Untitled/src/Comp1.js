import React, { Component } from 'react';
import './App.css';
import img_elImage from './images/Comp1_elImage_854542.jpg';

export default class Comp1 extends Component {

  // This component doesn't use any properties

  constructor(props) {
    super(props);
    
    this.state = {
    };
  }

  componentDidMount() {
  }

  componentWillUnmount() {
  }

  componentDidUpdate() {
  }

  render() {
    const style_elImage = {
      height: 'auto',
     };
    
    return (
      <div className="Comp1">
        <div className="layoutFlow">
          <div className="flowRow flowRow_Comp1_elImage_854542">
          <div className="elImage">
            <img style={style_elImage} src={img_elImage} alt=""  />
          </div>
          
          </div>
        </div>
        
      </div>
    )
  }
  
}
