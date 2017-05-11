open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module FT = Ffi_generated_types
module F = Ffi_generated

module ELF =
struct
  module ELFSegment =
  struct
    type t = Ffi_bindings.elf_segment_t structure ptr

  end
  
  module ELFSection =
  struct

    type t = Ffi_bindings.elf_section_t structure ptr

    type section_types = Ffi_bindings.elf_section_types = 
      | SHT_NULL
      | SHT_PROGBITS
      | SHT_SYMTAB
      | SHT_STRTAB
      | SHT_RELA
      | SHT_HASH
      | SHT_DYNAMIC
      | SHT_NOTE
      | SHT_NOBITS
      | SHT_REL
      | SHT_SHLIB
      | SHT_DYNSYM
      | SHT_INIT_ARRAY
      | SHT_FINI_ARRAY
      | SHT_PREINIT_ARRAY
      | SHT_GROUP
      | SHT_SYMTAB_SHNDX
      | SHT_LOOS
      | SHT_GNU_ATTRIBUTES
      | SHT_GNU_HASH
      | SHT_GNU_verdef
      | SHT_GNU_verneed
      | SHT_GNU_versym
      | SHT_HIOS
      | SHT_LOPROC
      | SHT_ARM_EXIDX
      | SHT_ARM_PREEMPTMAP
      | SHT_ARM_ATTRIBUTES
      | SHT_ARM_DEBUGOVERLAY
      | SHT_ARM_OVERLAYSECTION
      | SHT_HEX_ORDERED
      | SHT_X86_64_UNWIND
      | SHT_MIPS_REGINFO
      | SHT_MIPS_OPTIONS
      | SHT_MIPS_ABIFLAGS
      | SHT_HIPROC
      | SHT_LOUSER
      | SHT_HIUSER

    
    let get_name elf_section =
      getf (!@ elf_section) (B.E.ElfSection.name)

    let get_flags elf_section =
      getf (!@ elf_section) (B.E.ElfSection.flags)

    let get_type elf_section =
      getf (!@ elf_section) (B.E.ElfSection.type_)
        
  end


  module ELFBinary =
  struct

    type t = Ffi_bindings.elf_binary_t structure ptr
    
    let elf_binary_get_name elf_binary =
      getf (!@ elf_binary) (B.E.ElfBinary.name)


    let elf_binary_get_header elf_binary =
      getf (!@ elf_binary) (B.E.ElfBinary.handler)

    let elf_binary_get_entry_point elf_binary =
      let hdr = getf (!@ elf_binary) (B.E.ElfBinary.header) in
      getf hdr (B.E.ElfHeader.entrypoint)
        
    let elf_get_sections elf_binary =
      let open B.E in
      let sections = getf (!@ elf_binary) (ElfBinary.sections) in
      let rec loop acc p =
        match FT.coerce (ptr ElfSection.elf_section_t) (FT.ptr_opt ElfSection.elf_section_t) !@p with
        | None -> List.rev acc
        | Some s -> loop (s :: acc) (p +@ 1)
      in
      loop [] sections
        
    let elf_get_num_of_sections elf_binary =
      let open B.E in
      let sections = getf (!@ elf_binary) (ElfBinary.sections) in
      let rec loop i p =
        match FT.coerce (ptr ElfSection.elf_section_t) (FT.ptr_opt ElfSection.elf_section_t) !@p with
        | None -> i
        | Some s -> loop (i+1) (p +@ 1)
      in
      loop 0 sections

    let elf_get_segments elf_binary =
      let open B.E in
      let segs = getf (!@ elf_binary) (ElfBinary.segments) in
      let rec loop acc p =
        match FT.coerce (ptr ElfSegment.elf_segment_t) (FT.ptr_opt ElfSegment.elf_segment_t) !@p with
        | None -> List.rev acc
        | Some s -> loop (s :: acc) (p +@ 1)
      in
      loop [] segs

    let elf_get_num_of_segments elf_binary = 
      let open B.E in
      let segs = getf (!@ elf_binary) (ElfBinary.segments) in
      let rec loop i p =
        match FT.coerce (ptr ElfSegment.elf_segment_t) (FT.ptr_opt ElfSegment.elf_segment_t) !@p with
        | None -> i
        | Some s -> loop (i+1) (p +@ 1)
      in
      loop 0 segs

  end

  let elf_parse : string -> ELFBinary.t = B.elf_parse_

  let elf_destroy : ELFBinary.t -> unit = B.elf_binary_destroy_

end
         
