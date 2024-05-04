const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketEmp(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
      // Handle user logout
      socket.on('logout', () => {
        const userId = activeUsers.get(socket.id);
        if (userId) {
          activeUsers.delete(socket.id);
          io.emit('activeUsers', Array.from(activeUsers.values()));
        }
      });
      // Handle user disconnect
      socket.on('disconnect', () => {
        const userId = activeUsers.get(socket.id);
        if (userId) {
          activeUsers.delete(socket.id);
          io.emit('activeUsers', Array.from(activeUsers.values()));
        }
      });
    
      socket.on('addEmp', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('emp', data);
          if (!added) {
            io.emit('addEmpResponse', {success: true, user: user});
          } else {
            io.emit('addEmpResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addEmpResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editEmp', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('emp', id, newData);
        if (!updated) {
          io.emit('editEmpResponse', {success: true, user:  user });
        } else {
          io.emit('editEmpResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editEmpResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteEmp', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('emp', id);
        if (!deleted) {
          io.emit('deleteEmpResponse', {success: true, user: user });
        } else {
          io.emit('deleteEmpResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteEmpResponse', { success: false, error: 'operation failed' });
      }
      });
      
      socket.on('addAttend', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('emp_attend', data);
          if (!added) {
            io.emit('addAttendResponse', {success: true, user: user});
          } else {
            io.emit('addAttendResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addAttendResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('updateAttendWithSql', (data) => {
        try{ 
         const {condition, user } = data;      
         const updated = updateDataInDatabaseWithSql( condition  );
         if (!updated) {
           io.emit('updateAttendWithSqlResponse', {success: true, user: user });
         } else {
           io.emit('updateAttendWithSqlResponse', { success: false});
         }
       } catch (error) {
         console.error('Error deleting data:', error);
         io.emit('editItemResponse', { success: false, error: 'operation failed' });
       }
       });
  });
}

module.exports = { initializeSocketEmp: initializeSocketEmp };
