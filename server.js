/** Server for bank.ly. */


const app = require("./app");

app.listen(5000, () => {
  console.log(`Server starting on port 5000`);
  console.log("server DB_URI:", process.env.DB_URI);

});
