open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module FT = Ffi_generated_types
module F = Ffi_generated

module ELF = Elf.ELF

