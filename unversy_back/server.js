const express = require('express');
const http = require('http');
const socketIO = require('socket.io');
const app = express();
const server = http.createServer(app);
const io = socketIO(server);
io.setMaxListeners(15);


const { initializeRoutes } = require('./routes/route');
const { initializeSocketEmp } = require('./sockets/emp');
const { initializeSocketStudent } = require('./sockets/students');
const { initializeSocketCourses } = require('./sockets/courses');
const { initializeSocketDepartment } = require('./sockets/department');
const { initializeSocketAttendance } = require('./sockets/attendence');
const { initializeSocketFee } = require('./sockets/fees');
const { initializeSocketFinalResult } = require('./sockets/final_result');
const { initializeSocketMidResult } = require('./sockets/mid_result');
const { initializeSocketPracticalResult } = require('./sockets/practical_result');

initializeSocketStudent(io);
initializeSocketCourses(io);
initializeSocketDepartment(io);
initializeSocketAttendance(io);
initializeSocketFee(io);
initializeSocketFinalResult(io);
initializeSocketMidResult(io);
initializeSocketPracticalResult(io);
initializeSocketEmp(io);
initializeRoutes(app);


const PORT = process.env.PORT || 8000;
server.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
