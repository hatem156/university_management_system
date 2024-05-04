const { saveDataToDatabase, updateDataInDatabase, deleteDataFromDatabase, updateDataInDatabaseWithSql } = require('../database/databaseFunctions');
const activeUsers = new Map(); 

function initializeSocketCourses(io) {
  io.on('connection', (socket) => {
      // Handle user login
      socket.on('login', (userId) => {
        activeUsers.set(socket.id, userId);
        io.emit('activeUsers', Array.from(activeUsers.values()));
      });
     
      socket.on('addCourse', (variabls) => {
        try { 
          const { user, data } = variabls;  
          const added = saveDataToDatabase('courses', data);
          if (!added) {
            io.emit('addCourseResponse', {success: true, user: user});
          } else {
            io.emit('addCourseResponse', { success: false });
          }
        } catch (error) {
          console.error('Error adding data:', error);
          io.emit('addCourseResponse', { success: false, error: 'Operation failed' });
        }
      });
    
      socket.on('editCourse', (data) => {
      try{ 
        const { id, newData , user} = data;      
        const updated = updateDataInDatabase('courses', id, newData);
        if (!updated) {
          io.emit('editCourseResponse', {success: true, user:  user });
        } else {
          io.emit('editCourseResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('editCourseResponse', { success: false, error: 'operation failed' });
      }
      });

      socket.on('deleteCourse', (data) => {
      try{ 
        const { id , user} = data; 
        const deleted =  deleteDataFromDatabase('courses', id);
        if (!deleted) {
          io.emit('deleteCourseResponse', {success: true, user: user });
        } else {
          io.emit('deleteCourseResponse', { success: false});
        }
      } catch (error) {
        console.error('Error deleting data:', error);
        io.emit('deleteCourseResponse', { success: false, error: 'operation failed' });
      }
      });
      
      
  });
}

module.exports = { initializeSocketCourses: initializeSocketCourses };
