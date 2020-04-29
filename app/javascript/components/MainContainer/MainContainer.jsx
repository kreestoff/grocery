import React from 'react';
import { BrowserRouter as Router, Route, Switch, Link } from 'react-router-dom';

import Nav from '../Nav';
import GroceryLists from '../GroceryLists';
import Home from '../Home';

export default function MainContainer() {


    return (
      <Router>
        <Nav/>
        <Switch>
          <Route exact path='/' component={Home}/>
          <Route path='/grocery_lists' component={GroceryLists}/>
        </Switch>
      </Router>
    )

}
