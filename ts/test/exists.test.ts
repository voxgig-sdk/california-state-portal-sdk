
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { CaliforniaStatePortalSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await CaliforniaStatePortalSDK.test()
    equal(null !== testsdk, true)
  })

})
