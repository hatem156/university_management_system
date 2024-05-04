const mysql = require('mysql');
const http = require('http');
const socketIO = require('socket.io');
const express = require('express');
const app = express();
const server = http.createServer(app);
const io = socketIO(server);

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'university',
    timezone: 'Africa/Cairo', // Set the time zone
});

db.connect((err) => {
  if (err) {
    console.error('MySQL connection failed: ' + err.stack);
    return;
  }
  console.log('Connected to MySQL database');
});

function saveDataToDatabase(table, data, callback) {
  const columns = Object.keys(data).join(', ');
  const placeholders = Object.values(data).map(() => '?').join(', ');
  const sql = `INSERT INTO ${table} (${columns}) VALUES (${placeholders})`;

  db.query(sql, Object.values(data), (err) => {
    if (err) {
      console.error(`Error saving data to ${table} table: ${err.stack}`);
    }  
  });
}

function fetchDataFromDatabase(table, res) {
  const sql = `SELECT * FROM ${table}`;
  db.query(sql, (err, result) => {
    if (err) {
      console.error(`Error fetching data from ${table} table: ${err.stack}`);
      res.status(500).send('Internal Server Error');
      return;
    }
    res.json(result);
  });
}

// Create a new function to fetch data with a condition
function fetchDataFromDatabaseWithCondition(table, condition, res) {
  const sql = `SELECT * FROM ${table} ${condition ? `WHERE ${condition}` : ''}`;
  db.query(sql, (err, result) => {
    if (err) {
      console.error(`Error fetching data from ${table} table with condition: ${err.stack}`);
      res.status(500).send('Internal Server Error');
      return;
    }
    res.json(result);
  });
}


function updateDataInDatabase(table, id, newData) {
  const updateColumns = Object.keys(newData)
    .map((column) => `${column} = ?`)
    .join(', ');

  const sql = `UPDATE ${table} SET ${updateColumns} WHERE id = ?`;

  db.query(sql, [...Object.values(newData), id], (err) => {
    if (err) {
      console.error(`Error updating data in ${table} table: ${err.stack}`);
    }
  });
}

 

function updateDataInDatabaseWithSql(sqlCommand) {
  try {
    db.query(sqlCommand, (err) => {
      if (err) {
        console.error(`Error updating data: ${err.stack}`);
      } else {
       }
    });
   } catch (error) {
    console.error('Error updating data:', error);
   }
};

 
function updateDataInDatabaseWhitCondtion(table, condition, newData) {
  let updateColumns = Object.keys(newData)
    .map((column) => `${column} = ?`)
    .join(', ');

  const sql = `UPDATE ${table} SET ${updateColumns} WHERE ${condition}`;

  db.query(sql, [...Object.values(newData)], (err) => {
    if (err) {
      console.error(`Error updating data in ${table} table: ${err.stack}`);
    }
  });
}


function deleteDataFromDatabase(table, id) {
  const sql = `DELETE FROM ${table} WHERE id = ?`;

  db.query(sql, [id], (err) => {
    if (err) {
      console.error(`Error deleting data from ${table} table: ${err.stack}`);
      // io.emit('itemDeleted', {success: false});
    } else {
      // io.emit('itemDeleted', {success: true });
    }
  });
}

// In your databaseFunctions.js file
function deleteDataFromDatabaseWithCondition(table, condition = '') {
  let sql = `DELETE FROM ${table}`;

  // Append the custom condition if provided
  if (condition.trim() !== '') {
    sql += ` WHERE ${condition}`;
  }
  db.query(sql, (err) => {
    if (err) {
      // console.error(`Error deleting data from ${table} table: ${err.stack}`);
    } else {
      // console.log(`Items deleted successfully with condition: ${condition}`);
    }
  });
}


module.exports = {
  saveDataToDatabase,
  fetchDataFromDatabase,
  fetchDataFromDatabaseWithCondition,
  updateDataInDatabase,
  updateDataInDatabaseWhitCondtion,
  updateDataInDatabaseWithSql,
  deleteDataFromDatabase,
  deleteDataFromDatabaseWithCondition,
 };
