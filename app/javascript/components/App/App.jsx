import React, { PureComponent } from 'react'

import Nav from '../Nav';

export default class App extends PureComponent {
  render() {
    return (
      <div>
        <div>I'm the App</div>
        <Nav/>
      </div>
    )
  }
}
