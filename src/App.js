import logo from './logo.svg';
import './App.css';
import CourseList from './Windows/CourseList';
import CourseListDetails from './Windows/CourseListDetails';
import Details from './Windows/Details';
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'

//import Details from './Windows/Details';
//import CourseListDetails from './Windows/CourseListDetails';
 
//import { BrowserRouter as Router, Route, Link } from "react-router-dom";

function App() {
  return(
    <Router>
    <div className="App">

      <Route exact path="/" component = {CourseList} />
      <Route exact path="/more" component = {CourseListDetails} />
      <Route exact path="/details" component = {Details} />
    </div>
    </Router>
  );
}
 


export default App;
