import React, { PureComponent } from 'react';
import { Link } from 'react-router-dom';

export default class Nav extends PureComponent {
  render() {
    return (
      <ul>
        <li>
          <Link to='/'>Home</Link>
        </li>
        <li>
          <Link to='/grocery_lists'>My Grocery Lists</Link>
        </li>
      </ul>
    )
  }
}
