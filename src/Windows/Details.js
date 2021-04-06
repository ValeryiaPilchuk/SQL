import { render } from "@testing-library/react";
import React from "react";
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'

class Details extends React.Component{

    render(){
        return(
            <div>
                Course Name: Introduction to Computer Science
                <br/>
                Professor: Willaim Skeith
                <br/>
                Meeting Date and Time: Mon/Wed 11:00 - 12:30
                <br/>
                Prerequisits: None
                <br/>
                Related Courses: idk
                <br/>
                Link to Syllabus Page
            </div>
        );

    }
}
export default Details;
