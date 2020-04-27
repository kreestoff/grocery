import React, { PureComponent } from 'react'

import Nav from '../Nav';
import Placeholder from '../Placeholder';

export default class App extends PureComponent {
  render() {
    return (
      <div>
        <div>I'm the App</div>
        <Nav/>
        <Placeholder/>
      </div>
    )
  }
}
