var express = require('express');
var router = express.Router();
const { Pool, Client } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'sanpham',
  password: 'phuchieu',
  port: 5432,
})

// /* GET home page. */
router.get('/', function(req, res, next) {});

// api get dât from postgresSql
router.get('/getData01', function (req, res, next) {
  // Website you wish to allow to connect
  // res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');

  // // Request methods you wish to allow
  // res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

  // // Request headers you wish to allow
  // res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

  // // Set to true if you need the website to include cookies in the requests sent
  // // to the API (e.g. in case you use sessions)
  // res.setHeader('Access-Control-Allow-Credentials', true);


  pool.query("SELECT * FROM product_info", (error, response) => {
    if(error){
      console.log(error);      
    }else
    {
      res.send(response.rows);
      
    }   
    // pool.end();
  })
});

router.get('/add', function (req, res, next) { 
  res.render('add',{})
});

router.post('/add', function (req, res, next) {
  var product_name = req.body.product_name,
    product_price = req.body.product_price,
    image = req.body.image;
  pool.query("insert into product_info (product_name, product_price, image) values ($1, $2, $3)", [product_name, product_price, image],(err, response) => {
    if(err) { res.send(err); }
    else { res.send('Đã thêm sản phẩm thành công rồi!!!\nTên sản phẩm: ' + product_name + '\nGiá sản phẩm: ' +product_price + '\nLink ảnh là:' + image) + '\n' }
  })
  
});
module.exports = router;
