package stdlib

// Generated by 'goexports crypto/aes'. Do not edit!

import (
	"crypto/aes"
	"reflect"
)

func init() {
	Value["crypto/aes"] = map[string]reflect.Value{
		"BlockSize": reflect.ValueOf(aes.BlockSize),
		"NewCipher": reflect.ValueOf(aes.NewCipher),
	}
	Type["crypto/aes"] = map[string]reflect.Type{
		"KeySizeError": reflect.TypeOf((*aes.KeySizeError)(nil)).Elem(),
	}
}