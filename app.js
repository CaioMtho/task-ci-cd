import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send('O servidor está rodando...')
})

export default app
