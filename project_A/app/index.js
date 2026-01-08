const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Project A – Traditional DevOps");
});

app.listen(3000, () => {
  console.log("App running on port 3000");
});

