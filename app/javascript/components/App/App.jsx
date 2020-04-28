import React, { PureComponent } from 'react'
import { BrowserRouter } from 'react-router-dom';

import Nav from '../Nav';
import MainContainer from '../MainContainer';

export default class App extends PureComponent {
  render() {
    return (
      <BrowserRouter>
        <Nav/>
        <MainContainer/>
      </BrowserRouter>
    )
  }
}
