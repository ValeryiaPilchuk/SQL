import { render } from "@testing-library/react";
import React from "react";
import style from "./CourseList.module.css";
import { BrowserRouter as Router, Link, Route} from 'react-router-dom';
class CourseList extends React.Component{

    render(){
        return(
            <ul>
                <Link to="/more">CSC 10300 - Introduction To Computer Science</Link>
            </ul>
            //
            //    <div>
            //    Courses
            //    <br></br>
            //    <button>
            //        CSC 10300 - Introduction To Computer Science
            //    </button>
            //    <br></br>
            //    <button>
            //        CSC 10400 - Discrete Mathematics
            //    </button>
            //</div>
        
        );

    }
}
export default CourseList;
