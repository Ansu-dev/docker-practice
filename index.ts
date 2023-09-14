import express, { Express, Response } from "express";
const app: Express = express();
const PORT = 3000;

app.get("/", (_, res: Response) => {
  res.send("Docker Start");
});

app.listen(PORT, () => {
  console.log(`SERVER - ${PORT}PORT CONNECTED`);
});
