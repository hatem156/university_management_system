const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketFee(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addFee', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('fees', data);
          if (!added) {
            io.emit('addFeeResponse', {success: true, user: user});
          } else {
            io.emit('addFeeResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addFeeResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editFee', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('fees', id, newData);
        if (!updated) {
          io.emit('editFeeResponse', {success: true, user:  user });
        } else {
          io.emit('editFeeResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editFeeResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteFee', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('fees', id);
        if (!deleted) {
          io.emit('deleteFeeResponse', {success: true, user: user });
        } else {
          io.emit('deleteFeeResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteFeeResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketFee: initializeSocketFee };
