open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)

module ELF =
  struct
    let elf_parse = B.elf_parse_

    let elf_destroy = B.elf_binary_destroy_
  end
         
