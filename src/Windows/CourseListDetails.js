import { render } from "@testing-library/react";
import React from "react";
import style from "./CourseList.module.css"
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'
//import Table from 'react-bootstrap'
import { Table } from 'react-bootstrap'
class CourseListDetails extends React.Component{

    render(){
        return(
 <Table striped bordered hover>
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
        <td>
             
        <Link to="/details">MM1</Link>
            
        </td>
        <td>William Skeith</td>
        <td>Mon/Wed 11:00-12:30</td>
        <td>3/5</td>
        </tr>
    </tbody>
    </Table>
        );

    }
}
export default CourseListDetails;
