/*
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import {BrowserRouter} from 'react-router-dom';

const express = require('express');
const session = require('express-session');
*/
const mariadb = require('mariadb');
/*
const{
  createConnection
} = require('mariadb');
*/
const connection = mariadb.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  database : 'ccny'
});

connection.connect(function(err) {
  if (err) {
    return console.error('error: ' + err.message);
  }

  console.log('Connected to the MySQL server.');
});
/*
ReactDOM.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>,
  document.getElementById('root')
);

reportWebVitals();
*/