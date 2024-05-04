const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketAttendance(io) {
  io.on('connection', (socket) => {
      // Handle user login
      
     
      socket.on('addAttendance', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('attendance', data);
          if (!added) {
            io.emit('addAttendanceResponse', {success: true, user: user});
          } else {
            io.emit('addAttendanceResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addAttendanceResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editAttendance', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('attendance', id, newData);
        if (!updated) {
          io.emit('editAttendanceResponse', {success: true, user:  user });
        } else {
          io.emit('editAttendanceResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editAttendanceResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteAttendance', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('attendance', id);
        if (!deleted) {
          io.emit('deleteAttendanceResponse', {success: true, user: user });
        } else {
          io.emit('deleteAttendanceResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteAttendanceResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketAttendance: initializeSocketAttendance };
