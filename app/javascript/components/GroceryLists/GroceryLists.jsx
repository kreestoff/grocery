import React, { PureComponent } from 'react'
import PropTypes from 'prop-types'

export default class GroceryLists extends PureComponent {
  // static propTypes = {
  //   groceryLists: PropTypes.array
  // }
  state = {
    groceryLists: []
  }

  componentDidMount() {
    fetch('http://localhost:3000/users/show')
    .then(res => res.json())
    .then(data => this.setState({groceryLists: data.grocery_lists}))
  }

  renderGroceryList = list =>
    <div key={ list.id }>
      <div>Title: { list.title }</div>
      <div>Item Count: { list.item_count }</div>
      <div>Last Updated: { list.updated_at }</div>
    </div>


  render() {
    return (
      <div>
       {
         this.state.groceryLists.map(list =>
           this.renderGroceryList(list)
         )
       }
     </div>
    )
  }
}
