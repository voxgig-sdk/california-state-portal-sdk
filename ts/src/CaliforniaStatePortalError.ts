
import { Context } from './Context'


class CaliforniaStatePortalError extends Error {

  isCaliforniaStatePortalError = true

  sdk = 'CaliforniaStatePortal'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  CaliforniaStatePortalError
}

