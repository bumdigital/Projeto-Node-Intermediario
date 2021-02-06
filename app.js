const express = require('express')
const app = express()

const connect = require('./bd/connect')
app.use(express.json())

app.get('/postagem', (req, res)=>{
    connect.query("SELECT * FROM pedidos", (error,result)=>{
        res.json(result)
    })
})

app.post("/postagem", (req,res)=>{
    let dados = [];

    dados.push({
        nome_do_cliente: req.body.nome_do_cliente,
        nome_do_produto: req.body.nome_do_produto,
    });
    connect.query("INSERT INTO pedidos SET?", dados, ()=>{
        dados = []
        res.json({mensagem: "Dados enviados com sucesso!"})
    });

});

app.listen(3000, ()=>{
    console.log("Servidor conectado com sucesso!")
});