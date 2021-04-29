import { render } from "@testing-library/react";
import React from "react";
import styles from "./CourseListDetails.module.css"
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'
import { Table } from 'react-bootstrap'
class CourseListDetails extends React.Component{

  render(){
    return(
      <table style = {styles.table}>
        <thead>
          <tr>
            <th>Courses</th>
            <th>Section</th>
            <th>Professors</th>
            <th>Meeting Time</th>
            <th>Ratings</th>
            </tr>
            </thead>

      <tbody>
        <tr>
          <td>CSC103</td>
          <td><Link to="/details">MM1</Link></td>
          <td>William Skeith</td>
          <td>Mon/Wed 11:00-12:30</td>
          <td>3.00</td>
          </tr>
      </tbody>
    </table>

    );

    }

}

export default CourseListDetails;