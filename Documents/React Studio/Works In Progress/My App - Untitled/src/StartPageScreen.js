import React, { Component } from 'react';
import './App.css';
import img_elImage from './images/StartPageScreen_elImage_94547.jpg';
import img_elRoundimage from './images/StartPageScreen_elRoundimage_173965.png';

// UI framework component imports
import Appbar from 'muicss/lib/react/appbar';

export default class StartPageScreen extends Component {

  // Properties used by this component:
  // appActions, deviceInfo

  constructor(props) {
    super(props);
    
    this.state = {
      textarea: '',
    };
  }

  componentDidMount() {
  }

  componentWillUnmount() {
  }

  componentDidUpdate() {
  }

  textAreaChanged_textarea = (event) => {
    this.setState({textarea: event.target.value});
  }
  
  render() {
    let layoutFlowStyle = {};
    let baseStyle = {};
    if (this.props.transitionId && this.props.transitionId.length > 0 && this.props.atTopOfScreenStack && this.props.transitionForward) {
      baseStyle.animation = '0.25s ease-in-out '+this.props.transitionId;
    }
    if ( !this.props.atTopOfScreenStack) {
      layoutFlowStyle.height = '100vh';
      layoutFlowStyle.overflow = 'hidden';
    }
    
    const style_elBackground = {
      width: '100%',
      height: '100%',
     };
    const style_elBackground_outer = {
      backgroundColor: '#f6f6f6',
     };
    
    const style_elTextarea = {
      display: 'block',
      backgroundColor: 'white',
      borderColor: 'lightGray',
      paddingLeft: '1rem',
      boxSizing: 'border-box', // ensures padding won't expand element's outer size
      pointerEvents: 'auto',
     };
    const style_elImage = {
      height: 'auto',
     };
    const style_elRoundimage = {
      height: 'auto',
     };
    
    return (
      <div className="AppScreen StartPageScreen" style={baseStyle}>
        <div className="background">
          <div className="containerMinHeight elBackground" style={style_elBackground_outer}>
            <div className="appBg" style={style_elBackground} />
          </div>
        </div>
        
        <div className="layoutFlow" style={layoutFlowStyle}>
          <div className="elTextarea">
            <textarea className="baseFont" style={style_elTextarea}  placeholder={this.props.locStrings.startpage_textarea_957711} onChange={this.textAreaChanged_textarea} value={this.state.textarea}  />
          </div>
        </div>
        <Appbar className="navBar">
          <div className="backBtn" onClick={ (ev)=>{ this.props.appActions.goBack() } }></div>
        </Appbar>
        
        <div className="screenFgContainer">
          <div className="foreground">
            <img className="elImage" style={style_elImage} src={img_elImage} alt=""  />
            <img className="elRoundimage" style={style_elRoundimage} src={img_elRoundimage} alt=""  />
          </div>
        </div>
      </div>
    )
  }
  
}
