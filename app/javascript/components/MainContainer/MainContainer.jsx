import React, { PureComponent } from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import GroceryLists from '../GroceryLists';
import Home from '../Home';

export default class MainContainer extends PureComponent {


  state = {
    groceryLists: []
  }

  componentDidMount() {
    fetch('http://localhost:3000/users/show')
    .then(res => res.json())
    .then(data => this.setState({groceryLists: data.grocery_lists}))
  }

  render() {
    return (
      <BrowserRouter>
        <Switch>
          <Route exact path='/'>
            <Home/>
          </Route>
          <Route path='/grocery_lists'>
            <GroceryLists groceryLists={this.state.groceryLists}/>
          </Route>
        </Switch>
      </BrowserRouter>
    )
  }
}
