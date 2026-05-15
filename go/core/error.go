package core

type CaliforniaStatePortalError struct {
	IsCaliforniaStatePortalError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewCaliforniaStatePortalError(code string, msg string, ctx *Context) *CaliforniaStatePortalError {
	return &CaliforniaStatePortalError{
		IsCaliforniaStatePortalError: true,
		Sdk:              "CaliforniaStatePortal",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *CaliforniaStatePortalError) Error() string {
	return e.Msg
}
