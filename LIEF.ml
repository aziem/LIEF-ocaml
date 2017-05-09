open Ctypes
open Foreign

module B = Ffi_bindings.Bindings(Ffi_generated_types)(Ffi_generated)
module FT = Ffi_generated_types
module F = Ffi_generated

module ELF =
struct

  module ELFBinary =
  struct

    type t = Ffi_bindings.elf_binary_t structure ptr
    
    let elf_binary_get_name elf_binary =
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

  module ELFSegment =
  struct
    type t = Ffi_bindings.elf_segment_t structure ptr

  end
  
  module ELFSection =
  struct

    type t = Ffi_bindings.elf_section_t structure ptr
    
    let get_name elf_section =
      getf (!@ elf_section) (B.E.ElfSection.name)
        
  end

  let elf_parse : string -> ELFBinary.t = B.elf_parse_

  let elf_destroy : ELFBinary.t -> unit = B.elf_binary_destroy_

end
         
