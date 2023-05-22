import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import adminRouter from './router/admin.js';
import userRouter from  "./router/user.js"
import { config } from './config.js';
import morgan from 'morgan';
import { db } from './db/database.js'

const app = express();

app.use(bodyParser.json());
app.use(cors());
app.use(morgan("tiny")); // 요청온거 확인하게 
app.use(adminRouter);
app.use("/user", userRouter);



app.get('/count', (req, res) => {
    db.execute('SELECT COUNT(*) AS count FROM user', (error, results) => {
        if (error) {
            res.status(500).json({ error });
            return;
        }
        res.json({ user_count: results[0].count });
        console.log('확인좀')
    });
});


app.listen(config.host.port, () => {
    console.log(`Server is running on port ${config.host.port}`);
});

