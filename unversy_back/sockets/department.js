const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketDepartment(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addDepartment', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('departments', data);
          if (!added) {
            io.emit('addDepartmentResponse', {success: true, user: user});
          } else {
            io.emit('addDepartmentResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addDepartmentResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editDepartment', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('departments', id, newData);
        if (!updated) {
          io.emit('editDepartmentResponse', {success: true, user:  user });
        } else {
          io.emit('editDepartmentResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editDepartmentResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteDepartment', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('departments', id);
        if (!deleted) {
          io.emit('deleteDepartmentResponse', {success: true, user: user });
        } else {
          io.emit('deleteDepartmentResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteDepartmentResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketDepartment: initializeSocketDepartment };
