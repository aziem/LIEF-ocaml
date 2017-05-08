open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module FT = Ffi_generated_types
module F = Ffi_generated

module ELF =
struct

  let elf_parse = B.elf_parse_

  let elf_destroy = B.elf_binary_destroy_

  let elf_get_name elf_binary =
    getf (!@ elf_binary) (B.E.ElfBinary.name)

  let elf_get_sections elf_binary =
    let open B.E in
    let sections = getf (!@ elf_binary) (ElfBinary.sections) in
    let rec loop acc p =
      match FT.coerce (ptr ElfSection.elf_section_t) (FT.ptr_opt ElfSection.elf_section_t) !@p with
      | None -> List.rev acc
      | Some s -> loop (s :: acc) (p +@ 1)
    in
    loop [] sections

  module ELFSection =
  struct

    let get_name elf_section =
      getf (!@ elf_section) (B.E.ElfSection.name)

  end
end
         
