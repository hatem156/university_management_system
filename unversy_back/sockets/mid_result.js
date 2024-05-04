const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketMidResult(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addMidResult', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('mid_result', data);
          if (!added) {
            io.emit('addMidResultResponse', {success: true, user: user});
          } else {
            io.emit('addMidResultResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addMidResultResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editMidResult', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('mid_result', id, newData);
        if (!updated) {
          io.emit('editMidResultResponse', {success: true, user:  user });
        } else {
          io.emit('editMidResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editMidResultResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteMidResult', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('mid_result', id);
        if (!deleted) {
          io.emit('deleteMidResultResponse', {success: true, user: user });
        } else {
          io.emit('deleteMidResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteMidResultResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketMidResult: initializeSocketMidResult };
