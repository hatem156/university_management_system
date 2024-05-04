const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketPracticalResult(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addPracticalResult', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('practical_result', data);
          if (!added) {
            io.emit('addPracticalResultResponse', {success: true, user: user});
          } else {
            io.emit('addPracticalResultResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addPracticalResultResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editPracticalResult', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('practical_result', id, newData);
        if (!updated) {
          io.emit('editPracticalResultResponse', {success: true, user:  user });
        } else {
          io.emit('editPracticalResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editPracticalResultResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deletePracticalResult', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('practical_result', id);
        if (!deleted) {
          io.emit('deletePracticalResultResponse', {success: true, user: user });
        } else {
          io.emit('deletePracticalResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deletePracticalResultResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketPracticalResult: initializeSocketPracticalResult };
