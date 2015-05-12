/** @jsx element */
import {element, tree, render} from 'deku';

document.addEventListener('DOMContentLoaded', function () {
  render(tree(<h1>Hello World</h1>), document.body);
});
