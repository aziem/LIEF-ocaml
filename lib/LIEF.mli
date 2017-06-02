module ELF :
sig

  module ELFSymbol :
  sig
    type t

    val get_name : t -> string
  end
  
  module ELFSegment :
  sig
    type t

    type segment_types = 
      | PT_NULL
      | PT_LOAD
      | PT_DYNAMIC
      | PT_INTERP
      | PT_NOTE
      | PT_SHLIB
      | PT_PHDR
      | PT_TLS
      | PT_LOOS
      | PT_HIOS
      | PT_LOPROC
      | PT_HIPROC
      | PT_GNU_EH_FRAME
      | PT_SUNW_EH_FRAME
      | PT_SUNW_UNWIND
      | PT_GNU_STACK
      | PT_GNU_RELRO
      | PT_ARM_ARCHEXT
      | PT_ARM_EXIDX
      | PT_ARM_UNWIND
      | PT_MIPS_REGINFO
      | PT_MIPS_RTPROC
      | PT_MIPS_OPTIONS
      | PT_MIPS_ABIFLAGS

    type segment_flags = 
      | PF_X
      | PF_W
      | PF_R
      | PF_MASKOS
      | PF_MASKPROC
    
    val get_type : t -> segment_types

    val get_flags : t -> Unsigned.uint32

    val get_virtual_address : t -> Unsigned.uint64

    val get_virtual_size : t -> Unsigned.uint64

    val get_offset : t -> Unsigned.uint64

    val has_flag : t -> segment_flags -> bool
    
  end

  
  module ELFSection :
  sig
    type t

    type section_types =
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

    val get_name : t -> string

  end

  module ELFBinary :
  sig
    type t

    val elf_binary_get_name : t -> string

    val elf_get_sections : t -> ELFSection.t list

    val elf_get_num_of_sections : t -> int

    val elf_get_segments : t -> ELFSegment.t list

    val elf_get_num_of_segments : t -> int

    val elf_get_dynamic_symbols : t -> ELFSymbol.t list 

    val elf_get_static_symbols : t -> ELFSymbol.t list

    val elf_get_entry_point : t -> Unsigned.uint64
    
  end



  val elf_parse : string -> ELFBinary.t
  val elf_destroy : ELFBinary.t -> unit 
end
