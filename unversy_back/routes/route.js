const { fetchDataFromDatabase, fetchDataFromDatabaseWithCondition } = require('../database/databaseFunctions');
const express = require('express');
const multer = require('multer');
const sharp = require('sharp');
const sizeOf = require('image-size');
const path = require('path');
const fs = require('fs');

const app = express();

const maxFileSize = 1 * 512 * 1024; // .5 MB
const uploadDirectory = path.join(__dirname, '../uploads');

// Ensure the 'uploads' directory exists
fs.promises.mkdir(uploadDirectory, { recursive: true });


function initializeRoutes(app) {
  // Delete image route
  app.delete('/deleteImage/:imageName', (req, res) => {
    const imagePath = path.join(__dirname, '../uploads', req.params.imageName);
    // Delete the file from the file system
    fs.unlink(imagePath, (err) => {
      if (err) {
        console.error('Error deleting image:', err);
        res.status(500).send('Internal Server Error');
      } else {
        // If the file is deleted from the file system, you can also delete its record from the database
        res.json({ success: true, message: 'Image deleted successfully' });
      }
    });
  });

  app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

  const storage = multer.memoryStorage(); // Store the file as a Buffer in memory

  const upload = multer({ storage });

  // Handle image uploads
  app.post('/upload', upload.single('image'), async (req, res) => {
    try {
      if (!req.file) {
        return res.json({ success: false, error: 'File upload failed' });
      }
      const dimensions = sizeOf(req.file.buffer);
      if (dimensions.width < 1 || dimensions.height < 1) {
        return res.json({ success: false, error: 'Invalid image dimensions' });
      }
      if (req.file.size > maxFileSize) {
        const resizedBuffer = await sharp(req.file.buffer)
          .resize({ width: 512, withoutEnlargement: true })
          .toBuffer();
        if (resizedBuffer.length > maxFileSize) {
          return res.json({ success: false, error: 'Resized image exceeds maximum file size' });
        }
        const filename = `${Date.now()}-${req.file.originalname}`;
        const imagePath = path.join(uploadDirectory, `${Date.now()}-${req.file.originalname}`);
        fs.writeFileSync(imagePath, resizedBuffer);
        return res.json({ success: true, filename, resized: true });
      }
      const filename = `${Date.now()}-${req.file.originalname}`;
      const imagePath = path.join(uploadDirectory, `${Date.now()}-${req.file.originalname}`);
      fs.writeFileSync(imagePath, req.file.buffer);
      res.json({ success: true, filename, resized: false });
    } catch (error) {
      res.json({ success: false, error: 'Image processing failed' });
    }
  });


  //**************************Employers******************************
  app.get('/emp', (req, res) => {
    fetchDataFromDatabase('emp', res);
  });
  app.get('/attend', (req, res) => {
    fetchDataFromDatabase('emp_attend', res);
  });
  app.get('/attendCondition', (req, res) => {
    const condition = req.query.condition || '';
    fetchDataFromDatabaseWithCondition('emp_attend', condition, res);
  });
  app.get('/login', (req, res) => {
    const condition = req.query.condition || '';
    fetchDataFromDatabaseWithCondition('emp', condition, res);
  });
  //**************************students******************************
  app.get('/students', (req, res) => {
    fetchDataFromDatabase('student', res);
  });

  //**************************courses******************************
  app.get('/courses', (req, res) => {
    fetchDataFromDatabase('courses', res);
  });
  //**************************departments******************************
  app.get('/departments', (req, res) => {
    fetchDataFromDatabase('departments', res);
  });
  //**************************Attendance******************************
  app.get('/attendance', (req, res) => {
    fetchDataFromDatabase('attendance', res);
  });
  //**************************Fee******************************
  app.get('/fees', (req, res) => {
    fetchDataFromDatabase('fees', res);
  });
  //**************************FinalResult******************************
  app.get('/final_result', (req, res) => {
    fetchDataFromDatabase('final_result', res);
  });
  //**************************MidResult******************************
  app.get('/mid_result', (req, res) => {
    fetchDataFromDatabase('mid_result', res);
  });
  //**************************PracticalResult******************************
  app.get('/practical_result', (req, res) => {
    fetchDataFromDatabase('practical_result', res);
  });

}

module.exports = { initializeRoutes };
