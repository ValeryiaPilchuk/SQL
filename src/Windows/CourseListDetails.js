import { render } from "@testing-library/react";
import React from "react";
import style from "./CourseList.module.css"
import { BrowserRouter as Router, Link, Route} from 'react-router-dom'
class CourseListDetails extends React.Component{

    render(){
        return(

            <div>
                Courses
         {//       <br></br>
          //          CSC 10300 - Introduction To Computer Science
          //      <br></br>
          //          3 sections: Skeith Skeith Akira
          //      <button>
          //          CSC 10400 - Discrete Mathematics
           //     </button>
    }
            </div>
        );

    }
}
export default CourseListDetails;
