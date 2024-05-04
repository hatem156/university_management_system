const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketStudent(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addStudent', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('student', data);
          if (!added) {
            io.emit('addStudentResponse', {success: true, user: user});
          } else {
            io.emit('addStudentResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addStudentResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editStudent', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('student', id, newData);
        if (!updated) {
          io.emit('editStudentResponse', {success: true, user:  user });
        } else {
          io.emit('editStudentResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editStudentResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteStudent', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('student', id);
        if (!deleted) {
          io.emit('deleteStudentResponse', {success: true, user: user });
        } else {
          io.emit('deleteStudentResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteStudentResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketStudent: initializeSocketStudent };
