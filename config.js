/** Shared config for application; can be req'd many places. */

require('dotenv');

const SECRET_KEY = process.env.SECRET_KEY || 'development-secret-key';

const PORT = +process.env.PORT || 5000;

const BCRYPT_WORK_FACTOR = 10;

const DB_URI = 
process.env.NODE_ENV === 'test' 
? 'postgresql:///bankly_test' 
: 'postgresql://worm:Gusanito69@localhost:5000/bankly';


if (process.env.NODE_ENV !== 'test') {
  console.log("config DB_URI:", DB_URI);
}

module.exports = {
  BCRYPT_WORK_FACTOR,
  SECRET_KEY,
  PORT,
  DB_URI
};
