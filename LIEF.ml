open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)

module ELF =
struct

  let elf_parse = B.elf_parse_

  let elf_destroy = B.elf_binary_destroy_

  let elf_get_name elf_binary =
    getf (!@ elf_binary) (B.E.ElfBinary.name)

end
         
