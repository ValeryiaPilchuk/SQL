import { render } from "@testing-library/react";
import React from "react";
import ReactDOM from 'react-dom';
import styles from "./Details.module.css";
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'

class Details extends React.Component{

    render(){
        return(
            <ul style = {styles.ul}>
                <li>Course Name: Introduction to Computer Science</li>
                <li>Professor: William Skeith</li>
                <li>Meeting Date and Time: Mon/Wed 11:00 - 12:30</li>
                <li>Prerequisite: None</li>
                <li>Corequisite: None</li>
                <li>Related Courses:</li>
                <li>Link to Syallbus Page:</li>
                <li2 style = {styles.li2}>Would Take Again:</li2>
                <li2 style = {styles.li2}>Difficulty Level:</li2>
                <li>Most Helpful Rating:</li>
                <li>Resources:</li>
            </ul>
        );

    }
}

export default Details;