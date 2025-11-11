import test from 'node:test'
import assert from 'node:assert'
import http from 'http'
import app from './app.js'

let server

test('GET / retorna mensagem esperada', async (t) => {
  server = http.createServer(app)
  await new Promise((resolve) => server.listen(3000, resolve))

  const res = await fetch('http://localhost:3000')
  const text = await res.text()

  assert.strictEqual(res.status, 200)
  assert.strictEqual(text, 'O servidor está rodando...')

  await new Promise((resolve) => server.close(resolve))
})
