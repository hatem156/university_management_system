const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketFinalResult(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addFinalResult', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('final_result', data);
          if (!added) {
            io.emit('addFinalResultResponse', {success: true, user: user});
          } else {
            io.emit('addFinalResultResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addFinalResultResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editFinalResult', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('final_result', id, newData);
        if (!updated) {
          io.emit('editFinalResultResponse', {success: true, user:  user });
        } else {
          io.emit('editFinalResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editFinalResultResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteFinalResult', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('final_result', id);
        if (!deleted) {
          io.emit('deleteFinalResultResponse', {success: true, user: user });
        } else {
          io.emit('deleteFinalResultResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteFinalResultResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketFinalResult: initializeSocketFinalResult };
