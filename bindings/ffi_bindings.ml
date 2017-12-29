open Ctypes

type elf_binary_t
type elf_segment_t
type elf_section_t
type elf_symbol_t 
type elf_dynamic_entry_t

type elf_dynamic_entry_library_t
type elf_dynamic_entry_sharedobject_t
type elf_dynamic_entry_array_t
type elf_dynamic_entry_r_t
type elf_dynamic_entry_runpath_t

type elf_identity =
  | EI_MAG0
  | EI_MAG1
  | EI_MAG2
  | EI_MAG3
  | EI_CLASS
  | EI_DATA
  | EI_VERSION
  | EI_OSABI
  | EI_ABIVERSION
  | EI_PAD
  | EI_NIDENT

type elf_e_type = 
  | ET_NONE
  | ET_REL
  | ET_EXEC
  | ET_DYN
  | ET_CORE
  | ET_LOPROC
  | ET_HIPROC


type elf_version = 
  | EV_NONE
  | EV_CURRENT

type elf_arch = 
  | EM_NONE
  | EM_M32
  | EM_SPARC
  | EM_386
  | EM_68K
  | EM_88K
  | EM_IAMCU
  | EM_860
  | EM_MIPS
  | EM_S370
  | EM_MIPS_RS3_LE
  | EM_PARISC
  | EM_VPP500
  | EM_SPARC32PLUS
  | EM_960
  | EM_PPC
  | EM_PPC64
  | EM_S390
  | EM_SPU
  | EM_V800
  | EM_FR20
  | EM_RH32
  | EM_RCE
  | EM_ARM
  | EM_ALPHA
  | EM_SH
  | EM_SPARCV9
  | EM_TRICORE
  | EM_ARC
  | EM_H8_300
  | EM_H8_300H
  | EM_H8S
  | EM_H8_500
  | EM_IA_64
  | EM_MIPS_X
  | EM_COLDFIRE
  | EM_68HC12
  | EM_MMA
  | EM_PCP
  | EM_NCPU
  | EM_NDR1
  | EM_STARCORE
  | EM_ME16
  | EM_ST100
  | EM_TINYJ
  | EM_X86_64
  | EM_PDSP
  | EM_PDP10
  | EM_PDP11
  | EM_FX66
  | EM_ST9PLUS
  | EM_ST7
  | EM_68HC16
  | EM_68HC11
  | EM_68HC08
  | EM_68HC05
  | EM_SVX
  | EM_ST19
  | EM_VAX
  | EM_CRIS
  | EM_JAVELIN
  | EM_FIREPATH
  | EM_ZSP
  | EM_MMIX
  | EM_HUANY
  | EM_PRISM
  | EM_AVR
  | EM_FR30
  | EM_D10V
  | EM_D30V
  | EM_V850
  | EM_M32R
  | EM_MN10300
  | EM_MN10200
  | EM_PJ
  | EM_OPENRISC
  | EM_ARC_COMPACT
  | EM_XTENSA
  | EM_VIDEOCORE
  | EM_TMM_GPP
  | EM_NS32K
  | EM_TPC
  | EM_SNP1K
  | EM_ST200
  | EM_IP2K
  | EM_MAX
  | EM_CR
  | EM_F2MC16
  | EM_MSP430
  | EM_BLACKFIN
  | EM_SE_C33
  | EM_SEP
  | EM_ARCA
  | EM_UNICORE
  | EM_EXCESS
  | EM_DXP
  | EM_ALTERA_NIOS2
  | EM_CRX
  | EM_XGATE
  | EM_C166
  | EM_M16C
  | EM_DSPIC30F
  | EM_CE
  | EM_M32C
  | EM_TSK3000
  | EM_RS08
  | EM_SHARC
  | EM_ECOG2
  | EM_SCORE7
  | EM_DSP24
  | EM_VIDEOCORE3
  | EM_LATTICEMICO32
  | EM_SE_C17
  | EM_TI_C6000
  | EM_TI_C2000
  | EM_TI_C5500
  | EM_MMDSP_PLUS
  | EM_CYPRESS_M8C
  | EM_R32C
  | EM_TRIMEDIA
  | EM_HEXAGON
  | EM_8051
  | EM_STXP7X
  | EM_NDS32
  | EM_ECOG1
  | EM_ECOG1X
  | EM_MAXQ30
  | EM_XIMO16
  | EM_MANIK
  | EM_CRAYNV2
  | EM_RX
  | EM_METAG
  | EM_MCST_ELBRUS
  | EM_ECOG16
  | EM_CR16
  | EM_ETPU
  | EM_SLE9X
  | EM_L10M
  | EM_K10M
  | EM_AARCH64
  | EM_AVR32
  | EM_STM8
  | EM_TILE64
  | EM_TILEPRO
  | EM_CUDA
  | EM_TILEGX
  | EM_CLOUDSHIELD
  | EM_COREA_1ST
  | EM_COREA_2ND
  | EM_ARC_COMPACT2
  | EM_OPEN8
  | EM_RL78
  | EM_VIDEOCORE5
  | EM_78KOR
  | EM_56800EX
  | EM_BA1
  | EM_BA2
  | EM_XCORE
  | EM_MCHP_PIC
  | EM_INTEL205
  | EM_INTEL206
  | EM_INTEL207
  | EM_INTEL208
  | EM_INTEL209
  | EM_KM32
  | EM_KMX32
  | EM_KMX16
  | EM_KMX8
  | EM_KVARC
  | EM_CDP
  | EM_COGE
  | EM_COOL
  | EM_NORC
  | EM_CSR_KALIMBA
  | EM_AMDGPU
type elf_elf_class = 
  | ELFCLASSNONE
  | ELFCLASS32
  | ELFCLASS64

type elf_elf_data = 
  | ELFDATANONE
  | ELFDATA2LSB
  | ELFDATA2MSB


type elf_os_abi = 
  | ELFOSABI_SYSTEMV
  | ELFOSABI_HPUX
  | ELFOSABI_NETBSD
  | ELFOSABI_GNU
  | ELFOSABI_LINUX
  | ELFOSABI_HURD
  | ELFOSABI_SOLARIS
  | ELFOSABI_AIX
  | ELFOSABI_IRIX
  | ELFOSABI_FREEBSD
  | ELFOSABI_TRU64
  | ELFOSABI_MODESTO
  | ELFOSABI_OPENBSD
  | ELFOSABI_OPENVMS
  | ELFOSABI_NSK
  | ELFOSABI_AROS
  | ELFOSABI_FENIXOS
  | ELFOSABI_CLOUDABI
  | ELFOSABI_C6000_ELFABI
  | ELFOSABI_AMDGPU_HSA
  | ELFOSABI_C6000_LINUX
  | ELFOSABI_ARM
  | ELFOSABI_STANDALONE

type elf_reloc_x86_64 = 
  | R_X86_64_NONE
  | R_X86_64_64
  | R_X86_64_PC32
  | R_X86_64_GOT32
  | R_X86_64_PLT32
  | R_X86_64_COPY
  | R_X86_64_GLOB_DAT
  | R_X86_64_JUMP_SLOT
  | R_X86_64_RELATIVE
  | R_X86_64_GOTPCREL
  | R_X86_64_32
  | R_X86_64_32S
  | R_X86_64_16
  | R_X86_64_PC16
  | R_X86_64_8
  | R_X86_64_PC8
  | R_X86_64_DTPMOD64
  | R_X86_64_DTPOFF64
  | R_X86_64_TPOFF64
  | R_X86_64_TLSGD
  | R_X86_64_TLSLD
  | R_X86_64_DTPOFF32
  | R_X86_64_GOTTPOFF
  | R_X86_64_TPOFF32
  | R_X86_64_PC64
  | R_X86_64_GOTOFF64
  | R_X86_64_GOTPC32
  | R_X86_64_GOT64
  | R_X86_64_GOTPCREL64
  | R_X86_64_GOTPC64
  | R_X86_64_GOTPLT64
  | R_X86_64_PLTOFF64
  | R_X86_64_SIZE32
  | R_X86_64_SIZE64
  | R_X86_64_GOTPC32_TLSDESC
  | R_X86_64_TLSDESC_CALL
  | R_X86_64_TLSDESC
  | R_X86_64_IRELATIVE



type elf_reloc_i386 =
  | R_386_NONE
  | R_386_32
  | R_386_PC32
  | R_386_GOT32
  | R_386_PLT32
  | R_386_COPY
  | R_386_GLOB_DAT
  | R_386_JUMP_SLOT
  | R_386_RELATIVE
  | R_386_GOTOFF
  | R_386_GOTPC
  | R_386_32PLT
  | R_386_TLS_TPOFF
  | R_386_TLS_IE
  | R_386_TLS_GOTIE
  | R_386_TLS_LE
  | R_386_TLS_GD
  | R_386_TLS_LDM
  | R_386_16
  | R_386_PC16
  | R_386_8
  | R_386_PC8
  | R_386_TLS_GD_32
  | R_386_TLS_GD_PUSH
  | R_386_TLS_GD_CALL
  | R_386_TLS_GD_POP
  | R_386_TLS_LDM_32
  | R_386_TLS_LDM_PUSH
  | R_386_TLS_LDM_CALL
  | R_386_TLS_LDM_POP
  | R_386_TLS_LDO_32
  | R_386_TLS_IE_32
  | R_386_TLS_LE_32
  | R_386_TLS_DTPMOD32
  | R_386_TLS_DTPOFF32
  | R_386_TLS_TPOFF32
  | R_386_TLS_GOTDESC
  | R_386_TLS_DESC_CALL
  | R_386_TLS_DESC
  | R_386_IRELATIVE
  | R_386_NUM

type elf_section_types = 
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

type elf_segment_types = 
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

type elf_segment_flags = 
  | PF_X
  | PF_W
  | PF_R
  | PF_MASKOS
  | PF_MASKPROC



type elf_dynamic_tags = 
  | DT_NULL
  | DT_NEEDED
  | DT_PLTRELSZ
  | DT_PLTGOT
  | DT_HASH
  | DT_STRTAB
  | DT_SYMTAB
  | DT_RELA
  | DT_RELASZ
  | DT_RELAENT
  | DT_STRSZ
  | DT_SYMENT
  | DT_INIT
  | DT_FINI
  | DT_SONAME
  | DT_RPATH
  | DT_SYMBOLIC
  | DT_REL
  | DT_RELSZ
  | DT_RELENT
  | DT_PLTREL
  | DT_DEBUG
  | DT_TEXTREL
  | DT_JMPREL
  | DT_BIND_NOW
  | DT_INIT_ARRAY
  | DT_FINI_ARRAY
  | DT_INIT_ARRAYSZ
  | DT_FINI_ARRAYSZ
  | DT_RUNPATH
  | DT_FLAGS
  | DT_ENCODING
  | DT_PREINIT_ARRAY
  | DT_PREINIT_ARRAYSZ
  | DT_LOOS
  | DT_HIOS
  | DT_LOPROC
  | DT_HIPROC
  | DT_GNU_HASH
  | DT_RELACOUNT
  | DT_RELCOUNT
  | DT_FLAGS_1
  | DT_VERSYM
  | DT_VERDEF
  | DT_VERDEFNUM
  | DT_VERNEED
  | DT_VERNEEDNUM
  | DT_MIPS_RLD_VERSION
  | DT_MIPS_TIME_STAMP
  | DT_MIPS_ICHECKSUM
  | DT_MIPS_IVERSION
  | DT_MIPS_FLAGS
  | DT_MIPS_BASE_ADDRESS
  | DT_MIPS_MSYM
  | DT_MIPS_CONFLICT
  | DT_MIPS_LIBLIST
  | DT_MIPS_LOCAL_GOTNO
  | DT_MIPS_CONFLICTNO
  | DT_MIPS_LIBLISTNO
  | DT_MIPS_SYMTABNO
  | DT_MIPS_UNREFEXTNO
  | DT_MIPS_GOTSYM
  | DT_MIPS_HIPAGENO
  | DT_MIPS_RLD_MAP
  | DT_MIPS_DELTA_CLASS
  | DT_MIPS_DELTA_CLASS_NO
  | DT_MIPS_DELTA_INSTANCE
  | DT_MIPS_DELTA_INSTANCE_NO
  | DT_MIPS_DELTA_RELOC
  | DT_MIPS_DELTA_RELOC_NO
  | DT_MIPS_DELTA_SYM
  | DT_MIPS_DELTA_SYM_NO
  | DT_MIPS_DELTA_CLASSSYM
  | DT_MIPS_DELTA_CLASSSYM_NO
  | DT_MIPS_CXX_FLAGS
  | DT_MIPS_PIXIE_INIT
  | DT_MIPS_SYMBOL_LIB
  | DT_MIPS_LOCALPAGE_GOTIDX
  | DT_MIPS_LOCAL_GOTIDX
  | DT_MIPS_HIDDEN_GOTIDX
  | DT_MIPS_PROTECTED_GOTIDX
  | DT_MIPS_OPTIONS
  | DT_MIPS_INTERFACE
  | DT_MIPS_DYNSTR_ALIGN
  | DT_MIPS_INTERFACE_SIZE
  | DT_MIPS_RLD_TEXT_RESOLVE_ADDR
  | DT_MIPS_PERF_SUFFIX
  | DT_MIPS_COMPACT_SIZE
  | DT_MIPS_GP_VALUE
  | DT_MIPS_AUX_DYNAMIC
  | DT_MIPS_PLTGOT
  | DT_MIPS_RWPLT

type elf_dynamic_flags = 
  | DF_ORIGIN
  | DF_SYMBOLIC
  | DF_TEXTREL
  | DF_BIND_NOW
  | DF_STATIC_TLS

type elf_symbol_types = 
  | STT_NOTYPE
  | STT_OBJECT
  | STT_FUNC
  | STT_SECTION
  | STT_FILE
  | STT_COMMON
  | STT_TLS
  | STT_GNU_IFUNC
  | STT_LOOS
  | STT_HIOS
  | STT_LOPROC
  | STT_HIPROC

type elf_symbol_bindings = 
  | STB_LOCAL
  | STB_GLOBAL
  | STB_WEAK
  | STB_GNU_UNIQUE
  | STB_LOOS
  | STB_HIOS
  | STB_LOPROC
  | STB_HIPROC


module Enums (T : Cstubs_structs.TYPE) =
struct

  module ElfEnums =
  struct
    let ei_mag0 = T.constant "EI_MAG0" T.int64_t
    let ei_mag1 = T.constant "EI_MAG1" T.int64_t
    let ei_mag2 = T.constant "EI_MAG2" T.int64_t
    let ei_mag3 = T.constant "EI_MAG3" T.int64_t
    let ei_class = T.constant "EI_CLASS" T.int64_t
    let ei_data = T.constant "EI_DATA" T.int64_t
    let ei_version = T.constant "EI_VERSION" T.int64_t
    let ei_osabi = T.constant "EI_OSABI" T.int64_t
    let ei_abiversion = T.constant "EI_ABIVERSION" T.int64_t
    let ei_pad = T.constant "EI_PAD" T.int64_t
    let ei_nident = T.constant "EI_NIDENT" T.int64_t

    let elf_identity = T.enum "IDENTITY" [
        EI_MAG0, ei_mag0;
        EI_MAG1, ei_mag1;
        EI_MAG2, ei_mag2;
        EI_MAG3, ei_mag3;
        EI_CLASS, ei_class;
        EI_DATA, ei_data;
        EI_VERSION, ei_version;
        EI_OSABI, ei_osabi;
        EI_ABIVERSION, ei_abiversion;
        EI_PAD, ei_pad;
        EI_NIDENT, ei_nident;
      ]

    let et_none = T.constant "ET_NONE" T.int64_t
    let et_rel = T.constant "ET_REL" T.int64_t
    let et_exec = T.constant "ET_EXEC" T.int64_t
    let et_dyn = T.constant "ET_DYN" T.int64_t
    let et_core = T.constant "ET_CORE" T.int64_t
    let et_loproc = T.constant "ET_LOPROC" T.int64_t
    let et_hiproc = T.constant "ET_HIPROC" T.int64_t
    let elf_e_type = T.enum "E_TYPE" [
        ET_NONE, et_none;
        ET_REL, et_rel;
        ET_EXEC, et_exec;
        ET_DYN, et_dyn;
        ET_CORE, et_core;
        ET_LOPROC, et_loproc;
        ET_HIPROC, et_hiproc;
      ]
    let ev_none = T.constant "EV_NONE" T.int64_t
    let ev_current = T.constant "EV_CURRENT" T.int64_t
    let elf_version = T.enum "VERSION" [
        EV_NONE, ev_none;
        EV_CURRENT, ev_current;
      ]

    let em_none = T.constant "EM_NONE" T.int64_t
    let em_m32 = T.constant "EM_M32" T.int64_t
    let em_sparc = T.constant "EM_SPARC" T.int64_t
    let em_386 = T.constant "EM_386" T.int64_t
    let em_68k = T.constant "EM_68K" T.int64_t
    let em_88k = T.constant "EM_88K" T.int64_t
    let em_iamcu = T.constant "EM_IAMCU" T.int64_t
    let em_860 = T.constant "EM_860" T.int64_t
    let em_mips = T.constant "EM_MIPS" T.int64_t
    let em_s370 = T.constant "EM_S370" T.int64_t
    let em_mips_rs3_le = T.constant "EM_MIPS_RS3_LE" T.int64_t
    let em_parisc = T.constant "EM_PARISC" T.int64_t
    let em_vpp500 = T.constant "EM_VPP500" T.int64_t
    let em_sparc32plus = T.constant "EM_SPARC32PLUS" T.int64_t
    let em_960 = T.constant "EM_960" T.int64_t
    let em_ppc = T.constant "EM_PPC" T.int64_t
    let em_ppc64 = T.constant "EM_PPC64" T.int64_t
    let em_s390 = T.constant "EM_S390" T.int64_t
    let em_spu = T.constant "EM_SPU" T.int64_t
    let em_v800 = T.constant "EM_V800" T.int64_t
    let em_fr20 = T.constant "EM_FR20" T.int64_t
    let em_rh32 = T.constant "EM_RH32" T.int64_t
    let em_rce = T.constant "EM_RCE" T.int64_t
    let em_arm = T.constant "EM_ARM" T.int64_t
    let em_alpha = T.constant "EM_ALPHA" T.int64_t
    let em_sh = T.constant "EM_SH" T.int64_t
    let em_sparcv9 = T.constant "EM_SPARCV9" T.int64_t
    let em_tricore = T.constant "EM_TRICORE" T.int64_t
    let em_arc = T.constant "EM_ARC" T.int64_t
    let em_h8_300 = T.constant "EM_H8_300" T.int64_t
    let em_h8_300h = T.constant "EM_H8_300H" T.int64_t
    let em_h8s = T.constant "EM_H8S" T.int64_t
    let em_h8_500 = T.constant "EM_H8_500" T.int64_t
    let em_ia_64 = T.constant "EM_IA_64" T.int64_t
    let em_mips_x = T.constant "EM_MIPS_X" T.int64_t
    let em_coldfire = T.constant "EM_COLDFIRE" T.int64_t
    let em_68hc12 = T.constant "EM_68HC12" T.int64_t
    let em_mma = T.constant "EM_MMA" T.int64_t
    let em_pcp = T.constant "EM_PCP" T.int64_t
    let em_ncpu = T.constant "EM_NCPU" T.int64_t
    let em_ndr1 = T.constant "EM_NDR1" T.int64_t
    let em_starcore = T.constant "EM_STARCORE" T.int64_t
    let em_me16 = T.constant "EM_ME16" T.int64_t
    let em_st100 = T.constant "EM_ST100" T.int64_t
    let em_tinyj = T.constant "EM_TINYJ" T.int64_t
    let em_x86_64 = T.constant "EM_X86_64" T.int64_t
    let em_pdsp = T.constant "EM_PDSP" T.int64_t
    let em_pdp10 = T.constant "EM_PDP10" T.int64_t
    let em_pdp11 = T.constant "EM_PDP11" T.int64_t
    let em_fx66 = T.constant "EM_FX66" T.int64_t
    let em_st9plus = T.constant "EM_ST9PLUS" T.int64_t
    let em_st7 = T.constant "EM_ST7" T.int64_t
    let em_68hc16 = T.constant "EM_68HC16" T.int64_t
    let em_68hc11 = T.constant "EM_68HC11" T.int64_t
    let em_68hc08 = T.constant "EM_68HC08" T.int64_t
    let em_68hc05 = T.constant "EM_68HC05" T.int64_t
    let em_svx = T.constant "EM_SVX" T.int64_t
    let em_st19 = T.constant "EM_ST19" T.int64_t
    let em_vax = T.constant "EM_VAX" T.int64_t
    let em_cris = T.constant "EM_CRIS" T.int64_t
    let em_javelin = T.constant "EM_JAVELIN" T.int64_t
    let em_firepath = T.constant "EM_FIREPATH" T.int64_t
    let em_zsp = T.constant "EM_ZSP" T.int64_t
    let em_mmix = T.constant "EM_MMIX" T.int64_t
    let em_huany = T.constant "EM_HUANY" T.int64_t
    let em_prism = T.constant "EM_PRISM" T.int64_t
    let em_avr = T.constant "EM_AVR" T.int64_t
    let em_fr30 = T.constant "EM_FR30" T.int64_t
    let em_d10v = T.constant "EM_D10V" T.int64_t
    let em_d30v = T.constant "EM_D30V" T.int64_t
    let em_v850 = T.constant "EM_V850" T.int64_t
    let em_m32r = T.constant "EM_M32R" T.int64_t
    let em_mn10300 = T.constant "EM_MN10300" T.int64_t
    let em_mn10200 = T.constant "EM_MN10200" T.int64_t
    let em_pj = T.constant "EM_PJ" T.int64_t
    let em_openrisc = T.constant "EM_OPENRISC" T.int64_t
    let em_arc_compact = T.constant "EM_ARC_COMPACT" T.int64_t
    let em_xtensa = T.constant "EM_XTENSA" T.int64_t
    let em_videocore = T.constant "EM_VIDEOCORE" T.int64_t
    let em_tmm_gpp = T.constant "EM_TMM_GPP" T.int64_t
    let em_ns32k = T.constant "EM_NS32K" T.int64_t
    let em_tpc = T.constant "EM_TPC" T.int64_t
    let em_snp1k = T.constant "EM_SNP1K" T.int64_t
    let em_st200 = T.constant "EM_ST200" T.int64_t
    let em_ip2k = T.constant "EM_IP2K" T.int64_t
    let em_max = T.constant "EM_MAX" T.int64_t
    let em_cr = T.constant "EM_CR" T.int64_t
    let em_f2mc16 = T.constant "EM_F2MC16" T.int64_t
    let em_msp430 = T.constant "EM_MSP430" T.int64_t
    let em_blackfin = T.constant "EM_BLACKFIN" T.int64_t
    let em_se_c33 = T.constant "EM_SE_C33" T.int64_t
    let em_sep = T.constant "EM_SEP" T.int64_t
    let em_arca = T.constant "EM_ARCA" T.int64_t
    let em_unicore = T.constant "EM_UNICORE" T.int64_t
    let em_excess = T.constant "EM_EXCESS" T.int64_t
    let em_dxp = T.constant "EM_DXP" T.int64_t
    let em_altera_nios2 = T.constant "EM_ALTERA_NIOS2" T.int64_t
    let em_crx = T.constant "EM_CRX" T.int64_t
    let em_xgate = T.constant "EM_XGATE" T.int64_t
    let em_c166 = T.constant "EM_C166" T.int64_t
    let em_m16c = T.constant "EM_M16C" T.int64_t
    let em_dspic30f = T.constant "EM_DSPIC30F" T.int64_t
    let em_ce = T.constant "EM_CE" T.int64_t
    let em_m32c = T.constant "EM_M32C" T.int64_t
    let em_tsk3000 = T.constant "EM_TSK3000" T.int64_t
    let em_rs08 = T.constant "EM_RS08" T.int64_t
    let em_sharc = T.constant "EM_SHARC" T.int64_t
    let em_ecog2 = T.constant "EM_ECOG2" T.int64_t
    let em_score7 = T.constant "EM_SCORE7" T.int64_t
    let em_dsp24 = T.constant "EM_DSP24" T.int64_t
    let em_videocore3 = T.constant "EM_VIDEOCORE3" T.int64_t
    let em_latticemico32 = T.constant "EM_LATTICEMICO32" T.int64_t
    let em_se_c17 = T.constant "EM_SE_C17" T.int64_t
    let em_ti_c6000 = T.constant "EM_TI_C6000" T.int64_t
    let em_ti_c2000 = T.constant "EM_TI_C2000" T.int64_t
    let em_ti_c5500 = T.constant "EM_TI_C5500" T.int64_t
    let em_mmdsp_plus = T.constant "EM_MMDSP_PLUS" T.int64_t
    let em_cypress_m8c = T.constant "EM_CYPRESS_M8C" T.int64_t
    let em_r32c = T.constant "EM_R32C" T.int64_t
    let em_trimedia = T.constant "EM_TRIMEDIA" T.int64_t
    let em_hexagon = T.constant "EM_HEXAGON" T.int64_t
    let em_8051 = T.constant "EM_8051" T.int64_t
    let em_stxp7x = T.constant "EM_STXP7X" T.int64_t
    let em_nds32 = T.constant "EM_NDS32" T.int64_t
    let em_ecog1 = T.constant "EM_ECOG1" T.int64_t
    let em_ecog1x = T.constant "EM_ECOG1X" T.int64_t
    let em_maxq30 = T.constant "EM_MAXQ30" T.int64_t
    let em_ximo16 = T.constant "EM_XIMO16" T.int64_t
    let em_manik = T.constant "EM_MANIK" T.int64_t
    let em_craynv2 = T.constant "EM_CRAYNV2" T.int64_t
    let em_rx = T.constant "EM_RX" T.int64_t
    let em_metag = T.constant "EM_METAG" T.int64_t
    let em_mcst_elbrus = T.constant "EM_MCST_ELBRUS" T.int64_t
    let em_ecog16 = T.constant "EM_ECOG16" T.int64_t
    let em_cr16 = T.constant "EM_CR16" T.int64_t
    let em_etpu = T.constant "EM_ETPU" T.int64_t
    let em_sle9x = T.constant "EM_SLE9X" T.int64_t
    let em_l10m = T.constant "EM_L10M" T.int64_t
    let em_k10m = T.constant "EM_K10M" T.int64_t
    let em_aarch64 = T.constant "EM_AARCH64" T.int64_t
    let em_avr32 = T.constant "EM_AVR32" T.int64_t
    let em_stm8 = T.constant "EM_STM8" T.int64_t
    let em_tile64 = T.constant "EM_TILE64" T.int64_t
    let em_tilepro = T.constant "EM_TILEPRO" T.int64_t
    let em_cuda = T.constant "EM_CUDA" T.int64_t
    let em_tilegx = T.constant "EM_TILEGX" T.int64_t
    let em_cloudshield = T.constant "EM_CLOUDSHIELD" T.int64_t
    let em_corea_1st = T.constant "EM_COREA_1ST" T.int64_t
    let em_corea_2nd = T.constant "EM_COREA_2ND" T.int64_t
    let em_arc_compact2 = T.constant "EM_ARC_COMPACT2" T.int64_t
    let em_open8 = T.constant "EM_OPEN8" T.int64_t
    let em_rl78 = T.constant "EM_RL78" T.int64_t
    let em_videocore5 = T.constant "EM_VIDEOCORE5" T.int64_t
    let em_78kor = T.constant "EM_78KOR" T.int64_t
    let em_56800ex = T.constant "EM_56800EX" T.int64_t
    let em_ba1 = T.constant "EM_BA1" T.int64_t
    let em_ba2 = T.constant "EM_BA2" T.int64_t
    let em_xcore = T.constant "EM_XCORE" T.int64_t
    let em_mchp_pic = T.constant "EM_MCHP_PIC" T.int64_t
    let em_intel205 = T.constant "EM_INTEL205" T.int64_t
    let em_intel206 = T.constant "EM_INTEL206" T.int64_t
    let em_intel207 = T.constant "EM_INTEL207" T.int64_t
    let em_intel208 = T.constant "EM_INTEL208" T.int64_t
    let em_intel209 = T.constant "EM_INTEL209" T.int64_t
    let em_km32 = T.constant "EM_KM32" T.int64_t
    let em_kmx32 = T.constant "EM_KMX32" T.int64_t
    let em_kmx16 = T.constant "EM_KMX16" T.int64_t
    let em_kmx8 = T.constant "EM_KMX8" T.int64_t
    let em_kvarc = T.constant "EM_KVARC" T.int64_t
    let em_cdp = T.constant "EM_CDP" T.int64_t
    let em_coge = T.constant "EM_COGE" T.int64_t
    let em_cool = T.constant "EM_COOL" T.int64_t
    let em_norc = T.constant "EM_NORC" T.int64_t
    let em_csr_kalimba = T.constant "EM_CSR_KALIMBA" T.int64_t
    let em_amdgpu = T.constant "EM_AMDGPU" T.int64_t

    let elf_arch = T.enum "ARCH" [
        EM_NONE, em_none;
        EM_M32, em_m32;
        EM_SPARC, em_sparc;
        EM_386, em_386;
        EM_68K, em_68k;
        EM_88K, em_88k;
        EM_IAMCU, em_iamcu;
        EM_860, em_860;
        EM_MIPS, em_mips;
        EM_S370, em_s370;
        EM_MIPS_RS3_LE, em_mips_rs3_le;
        EM_PARISC, em_parisc;
        EM_VPP500, em_vpp500;
        EM_SPARC32PLUS, em_sparc32plus;
        EM_960, em_960;
        EM_PPC, em_ppc;
        EM_PPC64, em_ppc64;
        EM_S390, em_s390;
        EM_SPU, em_spu;
        EM_V800, em_v800;
        EM_FR20, em_fr20;
        EM_RH32, em_rh32;
        EM_RCE, em_rce;
        EM_ARM, em_arm;
        EM_ALPHA, em_alpha;
        EM_SH, em_sh;
        EM_SPARCV9, em_sparcv9;
        EM_TRICORE, em_tricore;
        EM_ARC, em_arc;
        EM_H8_300, em_h8_300;
        EM_H8_300H, em_h8_300h;
        EM_H8S, em_h8s;
        EM_H8_500, em_h8_500;
        EM_IA_64, em_ia_64;
        EM_MIPS_X, em_mips_x;
        EM_COLDFIRE, em_coldfire;
        EM_68HC12, em_68hc12;
        EM_MMA, em_mma;
        EM_PCP, em_pcp;
        EM_NCPU, em_ncpu;
        EM_NDR1, em_ndr1;
        EM_STARCORE, em_starcore;
        EM_ME16, em_me16;
        EM_ST100, em_st100;
        EM_TINYJ, em_tinyj;
        EM_X86_64, em_x86_64;
        EM_PDSP, em_pdsp;
        EM_PDP10, em_pdp10;
        EM_PDP11, em_pdp11;
        EM_FX66, em_fx66;
        EM_ST9PLUS, em_st9plus;
        EM_ST7, em_st7;
        EM_68HC16, em_68hc16;
        EM_68HC11, em_68hc11;
        EM_68HC08, em_68hc08;
        EM_68HC05, em_68hc05;
        EM_SVX, em_svx;
        EM_ST19, em_st19;
        EM_VAX, em_vax;
        EM_CRIS, em_cris;
        EM_JAVELIN, em_javelin;
        EM_FIREPATH, em_firepath;
        EM_ZSP, em_zsp;
        EM_MMIX, em_mmix;
        EM_HUANY, em_huany;
        EM_PRISM, em_prism;
        EM_AVR, em_avr;
        EM_FR30, em_fr30;
        EM_D10V, em_d10v;
        EM_D30V, em_d30v;
        EM_V850, em_v850;
        EM_M32R, em_m32r;
        EM_MN10300, em_mn10300;
        EM_MN10200, em_mn10200;
        EM_PJ, em_pj;
        EM_OPENRISC, em_openrisc;
        EM_ARC_COMPACT, em_arc_compact;
        EM_XTENSA, em_xtensa;
        EM_VIDEOCORE, em_videocore;
        EM_TMM_GPP, em_tmm_gpp;
        EM_NS32K, em_ns32k;
        EM_TPC, em_tpc;
        EM_SNP1K, em_snp1k;
        EM_ST200, em_st200;
        EM_IP2K, em_ip2k;
        EM_MAX, em_max;
        EM_CR, em_cr;
        EM_F2MC16, em_f2mc16;
        EM_MSP430, em_msp430;
        EM_BLACKFIN, em_blackfin;
        EM_SE_C33, em_se_c33;
        EM_SEP, em_sep;
        EM_ARCA, em_arca;
        EM_UNICORE, em_unicore;
        EM_EXCESS, em_excess;
        EM_DXP, em_dxp;
        EM_ALTERA_NIOS2, em_altera_nios2;
        EM_CRX, em_crx;
        EM_XGATE, em_xgate;
        EM_C166, em_c166;
        EM_M16C, em_m16c;
        EM_DSPIC30F, em_dspic30f;
        EM_CE, em_ce;
        EM_M32C, em_m32c;
        EM_TSK3000, em_tsk3000;
        EM_RS08, em_rs08;
        EM_SHARC, em_sharc;
        EM_ECOG2, em_ecog2;
        EM_SCORE7, em_score7;
        EM_DSP24, em_dsp24;
        EM_VIDEOCORE3, em_videocore3;
        EM_LATTICEMICO32, em_latticemico32;
        EM_SE_C17, em_se_c17;
        EM_TI_C6000, em_ti_c6000;
        EM_TI_C2000, em_ti_c2000;
        EM_TI_C5500, em_ti_c5500;
        EM_MMDSP_PLUS, em_mmdsp_plus;
        EM_CYPRESS_M8C, em_cypress_m8c;
        EM_R32C, em_r32c;
        EM_TRIMEDIA, em_trimedia;
        EM_HEXAGON, em_hexagon;
        EM_8051, em_8051;
        EM_STXP7X, em_stxp7x;
        EM_NDS32, em_nds32;
        EM_ECOG1, em_ecog1;
        EM_ECOG1X, em_ecog1x;
        EM_MAXQ30, em_maxq30;
        EM_XIMO16, em_ximo16;
        EM_MANIK, em_manik;
        EM_CRAYNV2, em_craynv2;
        EM_RX, em_rx;
        EM_METAG, em_metag;
        EM_MCST_ELBRUS, em_mcst_elbrus;
        EM_ECOG16, em_ecog16;
        EM_CR16, em_cr16;
        EM_ETPU, em_etpu;
        EM_SLE9X, em_sle9x;
        EM_L10M, em_l10m;
        EM_K10M, em_k10m;
        EM_AARCH64, em_aarch64;
        EM_AVR32, em_avr32;
        EM_STM8, em_stm8;
        EM_TILE64, em_tile64;
        EM_TILEPRO, em_tilepro;
        EM_CUDA, em_cuda;
        EM_TILEGX, em_tilegx;
        EM_CLOUDSHIELD, em_cloudshield;
        EM_COREA_1ST, em_corea_1st;
        EM_COREA_2ND, em_corea_2nd;
        EM_ARC_COMPACT2, em_arc_compact2;
        EM_OPEN8, em_open8;
        EM_RL78, em_rl78;
        EM_VIDEOCORE5, em_videocore5;
        EM_78KOR, em_78kor;
        EM_56800EX, em_56800ex;
        EM_BA1, em_ba1;
        EM_BA2, em_ba2;
        EM_XCORE, em_xcore;
        EM_MCHP_PIC, em_mchp_pic;
        EM_INTEL205, em_intel205;
        EM_INTEL206, em_intel206;
        EM_INTEL207, em_intel207;
        EM_INTEL208, em_intel208;
        EM_INTEL209, em_intel209;
        EM_KM32, em_km32;
        EM_KMX32, em_kmx32;
        EM_KMX16, em_kmx16;
        EM_KMX8, em_kmx8;
        EM_KVARC, em_kvarc;
        EM_CDP, em_cdp;
        EM_COGE, em_coge;
        EM_COOL, em_cool;
        EM_NORC, em_norc;
        EM_CSR_KALIMBA, em_csr_kalimba;
        EM_AMDGPU, em_amdgpu;
      ]

    let elfclassnone = T.constant "ELFCLASSNONE" T.int64_t
    let elfclass32 = T.constant "ELFCLASS32" T.int64_t
    let elfclass64 = T.constant "ELFCLASS64" T.int64_t

    let elf_elf_class = T.enum "ELF_CLASS" [
        ELFCLASSNONE, elfclassnone;
        ELFCLASS32, elfclass32;
        ELFCLASS64, elfclass64;
      ]

    let elfdatanone = T.constant "ELFDATANONE" T.int64_t
    let elfdata2lsb = T.constant "ELFDATA2LSB" T.int64_t
    let elfdata2msb = T.constant "ELFDATA2MSB" T.int64_t

    let elf_elf_data = T.enum "ELF_DATA" [
        ELFDATANONE, elfdatanone;
        ELFDATA2LSB, elfdata2lsb;
        ELFDATA2MSB, elfdata2msb;
      ]

    let elfosabi_systemv = T.constant "ELFOSABI_SYSTEMV" T.int64_t
    let elfosabi_hpux = T.constant "ELFOSABI_HPUX" T.int64_t
    let elfosabi_netbsd = T.constant "ELFOSABI_NETBSD" T.int64_t
    let elfosabi_gnu = T.constant "ELFOSABI_GNU" T.int64_t
    let elfosabi_linux = T.constant "ELFOSABI_LINUX" T.int64_t
    let elfosabi_hurd = T.constant "ELFOSABI_HURD" T.int64_t
    let elfosabi_solaris = T.constant "ELFOSABI_SOLARIS" T.int64_t
    let elfosabi_aix = T.constant "ELFOSABI_AIX" T.int64_t
    let elfosabi_irix = T.constant "ELFOSABI_IRIX" T.int64_t
    let elfosabi_freebsd = T.constant "ELFOSABI_FREEBSD" T.int64_t
    let elfosabi_tru64 = T.constant "ELFOSABI_TRU64" T.int64_t
    let elfosabi_modesto = T.constant "ELFOSABI_MODESTO" T.int64_t
    let elfosabi_openbsd = T.constant "ELFOSABI_OPENBSD" T.int64_t
    let elfosabi_openvms = T.constant "ELFOSABI_OPENVMS" T.int64_t
    let elfosabi_nsk = T.constant "ELFOSABI_NSK" T.int64_t
    let elfosabi_aros = T.constant "ELFOSABI_AROS" T.int64_t
    let elfosabi_fenixos = T.constant "ELFOSABI_FENIXOS" T.int64_t
    let elfosabi_cloudabi = T.constant "ELFOSABI_CLOUDABI" T.int64_t
    let elfosabi_c6000_elfabi = T.constant "ELFOSABI_C6000_ELFABI" T.int64_t
    let elfosabi_amdgpu_hsa = T.constant "ELFOSABI_AMDGPU_HSA" T.int64_t
    let elfosabi_c6000_linux = T.constant "ELFOSABI_C6000_LINUX" T.int64_t
    let elfosabi_arm = T.constant "ELFOSABI_ARM" T.int64_t
    let elfosabi_standalone = T.constant "ELFOSABI_STANDALONE" T.int64_t

    let elf_os_abi = T.enum "OS_ABI" [
        ELFOSABI_SYSTEMV, elfosabi_systemv;
        ELFOSABI_HPUX, elfosabi_hpux;
        ELFOSABI_NETBSD, elfosabi_netbsd;
        ELFOSABI_GNU, elfosabi_gnu;
        ELFOSABI_LINUX, elfosabi_linux;
        ELFOSABI_HURD, elfosabi_hurd;
        ELFOSABI_SOLARIS, elfosabi_solaris;
        ELFOSABI_AIX, elfosabi_aix;
        ELFOSABI_IRIX, elfosabi_irix;
        ELFOSABI_FREEBSD, elfosabi_freebsd;
        ELFOSABI_TRU64, elfosabi_tru64;
        ELFOSABI_MODESTO, elfosabi_modesto;
        ELFOSABI_OPENBSD, elfosabi_openbsd;
        ELFOSABI_OPENVMS, elfosabi_openvms;
        ELFOSABI_NSK, elfosabi_nsk;
        ELFOSABI_AROS, elfosabi_aros;
        ELFOSABI_FENIXOS, elfosabi_fenixos;
        ELFOSABI_CLOUDABI, elfosabi_cloudabi;
        ELFOSABI_C6000_ELFABI, elfosabi_c6000_elfabi;
        ELFOSABI_AMDGPU_HSA, elfosabi_amdgpu_hsa;
        ELFOSABI_C6000_LINUX, elfosabi_c6000_linux;
        ELFOSABI_ARM, elfosabi_arm;
        ELFOSABI_STANDALONE, elfosabi_standalone;
      ]

    let r_x86_64_none = T.constant "R_X86_64_NONE" T.int64_t
    let r_x86_64_64 = T.constant "R_X86_64_64" T.int64_t
    let r_x86_64_pc32 = T.constant "R_X86_64_PC32" T.int64_t
    let r_x86_64_got32 = T.constant "R_X86_64_GOT32" T.int64_t
    let r_x86_64_plt32 = T.constant "R_X86_64_PLT32" T.int64_t
    let r_x86_64_copy = T.constant "R_X86_64_COPY" T.int64_t
    let r_x86_64_glob_dat = T.constant "R_X86_64_GLOB_DAT" T.int64_t
    let r_x86_64_jump_slot = T.constant "R_X86_64_JUMP_SLOT" T.int64_t
    let r_x86_64_relative = T.constant "R_X86_64_RELATIVE" T.int64_t
    let r_x86_64_gotpcrel = T.constant "R_X86_64_GOTPCREL" T.int64_t
    let r_x86_64_32 = T.constant "R_X86_64_32" T.int64_t
    let r_x86_64_32s = T.constant "R_X86_64_32S" T.int64_t
    let r_x86_64_16 = T.constant "R_X86_64_16" T.int64_t
    let r_x86_64_pc16 = T.constant "R_X86_64_PC16" T.int64_t
    let r_x86_64_8 = T.constant "R_X86_64_8" T.int64_t
    let r_x86_64_pc8 = T.constant "R_X86_64_PC8" T.int64_t
    let r_x86_64_dtpmod64 = T.constant "R_X86_64_DTPMOD64" T.int64_t
    let r_x86_64_dtpoff64 = T.constant "R_X86_64_DTPOFF64" T.int64_t
    let r_x86_64_tpoff64 = T.constant "R_X86_64_TPOFF64" T.int64_t
    let r_x86_64_tlsgd = T.constant "R_X86_64_TLSGD" T.int64_t
    let r_x86_64_tlsld = T.constant "R_X86_64_TLSLD" T.int64_t
    let r_x86_64_dtpoff32 = T.constant "R_X86_64_DTPOFF32" T.int64_t
    let r_x86_64_gottpoff = T.constant "R_X86_64_GOTTPOFF" T.int64_t
    let r_x86_64_tpoff32 = T.constant "R_X86_64_TPOFF32" T.int64_t
    let r_x86_64_pc64 = T.constant "R_X86_64_PC64" T.int64_t
    let r_x86_64_gotoff64 = T.constant "R_X86_64_GOTOFF64" T.int64_t
    let r_x86_64_gotpc32 = T.constant "R_X86_64_GOTPC32" T.int64_t
    let r_x86_64_got64 = T.constant "R_X86_64_GOT64" T.int64_t
    let r_x86_64_gotpcrel64 = T.constant "R_X86_64_GOTPCREL64" T.int64_t
    let r_x86_64_gotpc64 = T.constant "R_X86_64_GOTPC64" T.int64_t
    let r_x86_64_gotplt64 = T.constant "R_X86_64_GOTPLT64" T.int64_t
    let r_x86_64_pltoff64 = T.constant "R_X86_64_PLTOFF64" T.int64_t
    let r_x86_64_size32 = T.constant "R_X86_64_SIZE32" T.int64_t
    let r_x86_64_size64 = T.constant "R_X86_64_SIZE64" T.int64_t
    let r_x86_64_gotpc32_tlsdesc = T.constant "R_X86_64_GOTPC32_TLSDESC" T.int64_t
    let r_x86_64_tlsdesc_call = T.constant "R_X86_64_TLSDESC_CALL" T.int64_t
    let r_x86_64_tlsdesc = T.constant "R_X86_64_TLSDESC" T.int64_t
    let r_x86_64_irelative = T.constant "R_X86_64_IRELATIVE" T.int64_t

    let elf_reloc_x86_64 = T.enum "RELOC_x86_64" [
        R_X86_64_NONE, r_x86_64_none;
        R_X86_64_64, r_x86_64_64;
        R_X86_64_PC32, r_x86_64_pc32;
        R_X86_64_GOT32, r_x86_64_got32;
        R_X86_64_PLT32, r_x86_64_plt32;
        R_X86_64_COPY, r_x86_64_copy;
        R_X86_64_GLOB_DAT, r_x86_64_glob_dat;
        R_X86_64_JUMP_SLOT, r_x86_64_jump_slot;
        R_X86_64_RELATIVE, r_x86_64_relative;
        R_X86_64_GOTPCREL, r_x86_64_gotpcrel;
        R_X86_64_32, r_x86_64_32;
        R_X86_64_32S, r_x86_64_32s;
        R_X86_64_16, r_x86_64_16;
        R_X86_64_PC16, r_x86_64_pc16;
        R_X86_64_8, r_x86_64_8;
        R_X86_64_PC8, r_x86_64_pc8;
        R_X86_64_DTPMOD64, r_x86_64_dtpmod64;
        R_X86_64_DTPOFF64, r_x86_64_dtpoff64;
        R_X86_64_TPOFF64, r_x86_64_tpoff64;
        R_X86_64_TLSGD, r_x86_64_tlsgd;
        R_X86_64_TLSLD, r_x86_64_tlsld;
        R_X86_64_DTPOFF32, r_x86_64_dtpoff32;
        R_X86_64_GOTTPOFF, r_x86_64_gottpoff;
        R_X86_64_TPOFF32, r_x86_64_tpoff32;
        R_X86_64_PC64, r_x86_64_pc64;
        R_X86_64_GOTOFF64, r_x86_64_gotoff64;
        R_X86_64_GOTPC32, r_x86_64_gotpc32;
        R_X86_64_GOT64, r_x86_64_got64;
        R_X86_64_GOTPCREL64, r_x86_64_gotpcrel64;
        R_X86_64_GOTPC64, r_x86_64_gotpc64;
        R_X86_64_GOTPLT64, r_x86_64_gotplt64;
        R_X86_64_PLTOFF64, r_x86_64_pltoff64;
        R_X86_64_SIZE32, r_x86_64_size32;
        R_X86_64_SIZE64, r_x86_64_size64;
        R_X86_64_GOTPC32_TLSDESC, r_x86_64_gotpc32_tlsdesc;
        R_X86_64_TLSDESC_CALL, r_x86_64_tlsdesc_call;
        R_X86_64_TLSDESC, r_x86_64_tlsdesc;
        R_X86_64_IRELATIVE, r_x86_64_irelative;
      ]
    let r_386_none = T.constant "R_386_NONE" T.int64_t
    let r_386_32 = T.constant "R_386_32" T.int64_t
    let r_386_pc32 = T.constant "R_386_PC32" T.int64_t
    let r_386_got32 = T.constant "R_386_GOT32" T.int64_t
    let r_386_plt32 = T.constant "R_386_PLT32" T.int64_t
    let r_386_copy = T.constant "R_386_COPY" T.int64_t
    let r_386_glob_dat = T.constant "R_386_GLOB_DAT" T.int64_t
    let r_386_jump_slot = T.constant "R_386_JUMP_SLOT" T.int64_t
    let r_386_relative = T.constant "R_386_RELATIVE" T.int64_t
    let r_386_gotoff = T.constant "R_386_GOTOFF" T.int64_t
    let r_386_gotpc = T.constant "R_386_GOTPC" T.int64_t
    let r_386_32plt = T.constant "R_386_32PLT" T.int64_t
    let r_386_tls_tpoff = T.constant "R_386_TLS_TPOFF" T.int64_t
    let r_386_tls_ie = T.constant "R_386_TLS_IE" T.int64_t
    let r_386_tls_gotie = T.constant "R_386_TLS_GOTIE" T.int64_t
    let r_386_tls_le = T.constant "R_386_TLS_LE" T.int64_t
    let r_386_tls_gd = T.constant "R_386_TLS_GD" T.int64_t
    let r_386_tls_ldm = T.constant "R_386_TLS_LDM" T.int64_t
    let r_386_16 = T.constant "R_386_16" T.int64_t
    let r_386_pc16 = T.constant "R_386_PC16" T.int64_t
    let r_386_8 = T.constant "R_386_8" T.int64_t
    let r_386_pc8 = T.constant "R_386_PC8" T.int64_t
    let r_386_tls_gd_32 = T.constant "R_386_TLS_GD_32" T.int64_t
    let r_386_tls_gd_push = T.constant "R_386_TLS_GD_PUSH" T.int64_t
    let r_386_tls_gd_call = T.constant "R_386_TLS_GD_CALL" T.int64_t
    let r_386_tls_gd_pop = T.constant "R_386_TLS_GD_POP" T.int64_t
    let r_386_tls_ldm_32 = T.constant "R_386_TLS_LDM_32" T.int64_t
    let r_386_tls_ldm_push = T.constant "R_386_TLS_LDM_PUSH" T.int64_t
    let r_386_tls_ldm_call = T.constant "R_386_TLS_LDM_CALL" T.int64_t
    let r_386_tls_ldm_pop = T.constant "R_386_TLS_LDM_POP" T.int64_t
    let r_386_tls_ldo_32 = T.constant "R_386_TLS_LDO_32" T.int64_t
    let r_386_tls_ie_32 = T.constant "R_386_TLS_IE_32" T.int64_t
    let r_386_tls_le_32 = T.constant "R_386_TLS_LE_32" T.int64_t
    let r_386_tls_dtpmod32 = T.constant "R_386_TLS_DTPMOD32" T.int64_t
    let r_386_tls_dtpoff32 = T.constant "R_386_TLS_DTPOFF32" T.int64_t
    let r_386_tls_tpoff32 = T.constant "R_386_TLS_TPOFF32" T.int64_t
    let r_386_tls_gotdesc = T.constant "R_386_TLS_GOTDESC" T.int64_t
    let r_386_tls_desc_call = T.constant "R_386_TLS_DESC_CALL" T.int64_t
    let r_386_tls_desc = T.constant "R_386_TLS_DESC" T.int64_t
    let r_386_irelative = T.constant "R_386_IRELATIVE" T.int64_t
    let r_386_num = T.constant "R_386_NUM" T.int64_t

    let elf_reloc_i386 = T.enum "RELOC_i386" [
        R_386_NONE, r_386_none;
        R_386_32, r_386_32;
        R_386_PC32, r_386_pc32;
        R_386_GOT32, r_386_got32;
        R_386_PLT32, r_386_plt32;
        R_386_COPY, r_386_copy;
        R_386_GLOB_DAT, r_386_glob_dat;
        R_386_JUMP_SLOT, r_386_jump_slot;
        R_386_RELATIVE, r_386_relative;
        R_386_GOTOFF, r_386_gotoff;
        R_386_GOTPC, r_386_gotpc;
        R_386_32PLT, r_386_32plt;
        R_386_TLS_TPOFF, r_386_tls_tpoff;
        R_386_TLS_IE, r_386_tls_ie;
        R_386_TLS_GOTIE, r_386_tls_gotie;
        R_386_TLS_LE, r_386_tls_le;
        R_386_TLS_GD, r_386_tls_gd;
        R_386_TLS_LDM, r_386_tls_ldm;
        R_386_16, r_386_16;
        R_386_PC16, r_386_pc16;
        R_386_8, r_386_8;
        R_386_PC8, r_386_pc8;
        R_386_TLS_GD_32, r_386_tls_gd_32;
        R_386_TLS_GD_PUSH, r_386_tls_gd_push;
        R_386_TLS_GD_CALL, r_386_tls_gd_call;
        R_386_TLS_GD_POP, r_386_tls_gd_pop;
        R_386_TLS_LDM_32, r_386_tls_ldm_32;
        R_386_TLS_LDM_PUSH, r_386_tls_ldm_push;
        R_386_TLS_LDM_CALL, r_386_tls_ldm_call;
        R_386_TLS_LDM_POP, r_386_tls_ldm_pop;
        R_386_TLS_LDO_32, r_386_tls_ldo_32;
        R_386_TLS_IE_32, r_386_tls_ie_32;
        R_386_TLS_LE_32, r_386_tls_le_32;
        R_386_TLS_DTPMOD32, r_386_tls_dtpmod32;
        R_386_TLS_DTPOFF32, r_386_tls_dtpoff32;
        R_386_TLS_TPOFF32, r_386_tls_tpoff32;
        R_386_TLS_GOTDESC, r_386_tls_gotdesc;
        R_386_TLS_DESC_CALL, r_386_tls_desc_call;
        R_386_TLS_DESC, r_386_tls_desc;
        R_386_IRELATIVE, r_386_irelative;
        R_386_NUM, r_386_num;
      ]

    let sht_null = T.constant "SHT_NULL" T.int64_t
    let sht_progbits = T.constant "SHT_PROGBITS" T.int64_t
    let sht_symtab = T.constant "SHT_SYMTAB" T.int64_t
    let sht_strtab = T.constant "SHT_STRTAB" T.int64_t
    let sht_rela = T.constant "SHT_RELA" T.int64_t
    let sht_hash = T.constant "SHT_HASH" T.int64_t
    let sht_dynamic = T.constant "SHT_DYNAMIC" T.int64_t
    let sht_note = T.constant "SHT_NOTE" T.int64_t
    let sht_nobits = T.constant "SHT_NOBITS" T.int64_t
    let sht_rel = T.constant "SHT_REL" T.int64_t
    let sht_shlib = T.constant "SHT_SHLIB" T.int64_t
    let sht_dynsym = T.constant "SHT_DYNSYM" T.int64_t
    let sht_init_array = T.constant "SHT_INIT_ARRAY" T.int64_t
    let sht_fini_array = T.constant "SHT_FINI_ARRAY" T.int64_t
    let sht_preinit_array = T.constant "SHT_PREINIT_ARRAY" T.int64_t
    let sht_group = T.constant "SHT_GROUP" T.int64_t
    let sht_symtab_shndx = T.constant "SHT_SYMTAB_SHNDX" T.int64_t
    let sht_loos = T.constant "SHT_LOOS" T.int64_t
    let sht_gnu_attributes = T.constant "SHT_GNU_ATTRIBUTES" T.int64_t
    let sht_gnu_hash = T.constant "SHT_GNU_HASH" T.int64_t
    let sht_gnu_verdef = T.constant "SHT_GNU_verdef" T.int64_t
    let sht_gnu_verneed = T.constant "SHT_GNU_verneed" T.int64_t
    let sht_gnu_versym = T.constant "SHT_GNU_versym" T.int64_t
    let sht_hios = T.constant "SHT_HIOS" T.int64_t
    let sht_loproc = T.constant "SHT_LOPROC" T.int64_t
    let sht_arm_exidx = T.constant "SHT_ARM_EXIDX" T.int64_t
    let sht_arm_preemptmap = T.constant "SHT_ARM_PREEMPTMAP" T.int64_t
    let sht_arm_attributes = T.constant "SHT_ARM_ATTRIBUTES" T.int64_t
    let sht_arm_debugoverlay = T.constant "SHT_ARM_DEBUGOVERLAY" T.int64_t
    let sht_arm_overlaysection = T.constant "SHT_ARM_OVERLAYSECTION" T.int64_t
    let sht_hex_ordered = T.constant "SHT_HEX_ORDERED" T.int64_t
    let sht_x86_64_unwind = T.constant "SHT_X86_64_UNWIND" T.int64_t
    let sht_mips_reginfo = T.constant "SHT_MIPS_REGINFO" T.int64_t
    let sht_mips_options = T.constant "SHT_MIPS_OPTIONS" T.int64_t
    let sht_mips_abiflags = T.constant "SHT_MIPS_ABIFLAGS" T.int64_t
    let sht_hiproc = T.constant "SHT_HIPROC" T.int64_t
    let sht_louser = T.constant "SHT_LOUSER" T.int64_t
    let sht_hiuser = T.constant "SHT_HIUSER" T.int64_t
    let elf_section_types = T.enum "ELF_SECTION_TYPES" [
	SHT_NULL, sht_null;
	SHT_PROGBITS, sht_progbits;
	SHT_SYMTAB, sht_symtab;
	SHT_STRTAB, sht_strtab;
	SHT_RELA, sht_rela;
	SHT_HASH, sht_hash;
	SHT_DYNAMIC, sht_dynamic;
	SHT_NOTE, sht_note;
	SHT_NOBITS, sht_nobits;
	SHT_REL, sht_rel;
	SHT_SHLIB, sht_shlib;
	SHT_DYNSYM, sht_dynsym;
	SHT_INIT_ARRAY, sht_init_array;
	SHT_FINI_ARRAY, sht_fini_array;
	SHT_PREINIT_ARRAY, sht_preinit_array;
	SHT_GROUP, sht_group;
	SHT_SYMTAB_SHNDX, sht_symtab_shndx;
	SHT_LOOS, sht_loos;
	SHT_GNU_ATTRIBUTES, sht_gnu_attributes;
	SHT_GNU_HASH, sht_gnu_hash;
	SHT_GNU_verdef, sht_gnu_verdef;
	SHT_GNU_verneed, sht_gnu_verneed;
	SHT_GNU_versym, sht_gnu_versym;
	SHT_HIOS, sht_hios;
	SHT_LOPROC, sht_loproc;
	SHT_ARM_EXIDX, sht_arm_exidx;
	SHT_ARM_PREEMPTMAP, sht_arm_preemptmap;
	SHT_ARM_ATTRIBUTES, sht_arm_attributes;
	SHT_ARM_DEBUGOVERLAY, sht_arm_debugoverlay;
	SHT_ARM_OVERLAYSECTION, sht_arm_overlaysection;
	SHT_HEX_ORDERED, sht_hex_ordered;
	SHT_X86_64_UNWIND, sht_x86_64_unwind;
	SHT_MIPS_REGINFO, sht_mips_reginfo;
	SHT_MIPS_OPTIONS, sht_mips_options;
	SHT_MIPS_ABIFLAGS, sht_mips_abiflags;
	SHT_HIPROC, sht_hiproc;
	SHT_LOUSER, sht_louser;
	SHT_HIUSER, sht_hiuser;
      ]

    let pt_null = T.constant "PT_NULL" T.int64_t
    let pt_load = T.constant "PT_LOAD" T.int64_t
    let pt_dynamic = T.constant "PT_DYNAMIC" T.int64_t
    let pt_interp = T.constant "PT_INTERP" T.int64_t
    let pt_note = T.constant "PT_NOTE" T.int64_t
    let pt_shlib = T.constant "PT_SHLIB" T.int64_t
    let pt_phdr = T.constant "PT_PHDR" T.int64_t
    let pt_tls = T.constant "PT_TLS" T.int64_t
    let pt_loos = T.constant "PT_LOOS" T.int64_t
    let pt_hios = T.constant "PT_HIOS" T.int64_t
    let pt_loproc = T.constant "PT_LOPROC" T.int64_t
    let pt_hiproc = T.constant "PT_HIPROC" T.int64_t
    let pt_gnu_eh_frame = T.constant "PT_GNU_EH_FRAME" T.int64_t
    let pt_sunw_eh_frame = T.constant "PT_SUNW_EH_FRAME" T.int64_t
    let pt_sunw_unwind = T.constant "PT_SUNW_UNWIND" T.int64_t
    let pt_gnu_stack = T.constant "PT_GNU_STACK" T.int64_t
    let pt_gnu_relro = T.constant "PT_GNU_RELRO" T.int64_t
    let pt_arm_archext = T.constant "PT_ARM_ARCHEXT" T.int64_t
    let pt_arm_exidx = T.constant "PT_ARM_EXIDX" T.int64_t
    let pt_arm_unwind = T.constant "PT_ARM_UNWIND" T.int64_t
    let pt_mips_reginfo = T.constant "PT_MIPS_REGINFO" T.int64_t
    let pt_mips_rtproc = T.constant "PT_MIPS_RTPROC" T.int64_t
    let pt_mips_options = T.constant "PT_MIPS_OPTIONS" T.int64_t
    let pt_mips_abiflags = T.constant "PT_MIPS_ABIFLAGS" T.int64_t

    let elf_segment_types = T.enum "SEGMENT_TYPES" [
	PT_NULL, pt_null;
	PT_LOAD, pt_load;
	PT_DYNAMIC, pt_dynamic;
	PT_INTERP, pt_interp;
	PT_NOTE, pt_note;
	PT_SHLIB, pt_shlib;
	PT_PHDR, pt_phdr;
	PT_TLS, pt_tls;
	PT_LOOS, pt_loos;
	PT_HIOS, pt_hios;
	PT_LOPROC, pt_loproc;
	PT_HIPROC, pt_hiproc;
	PT_GNU_EH_FRAME, pt_gnu_eh_frame;
	PT_SUNW_EH_FRAME, pt_sunw_eh_frame;
	PT_SUNW_UNWIND, pt_sunw_unwind;
	PT_GNU_STACK, pt_gnu_stack;
	PT_GNU_RELRO, pt_gnu_relro;
	PT_ARM_ARCHEXT, pt_arm_archext;
	PT_ARM_EXIDX, pt_arm_exidx;
	PT_ARM_UNWIND, pt_arm_unwind;
	PT_MIPS_REGINFO, pt_mips_reginfo;
	PT_MIPS_RTPROC, pt_mips_rtproc;
	PT_MIPS_OPTIONS, pt_mips_options;
	PT_MIPS_ABIFLAGS, pt_mips_abiflags;
      ]

    let pf_x = T.constant "PF_X" T.int64_t
    let pf_w = T.constant "PF_W" T.int64_t
    let pf_r = T.constant "PF_R" T.int64_t
    let pf_maskos = T.constant "PF_MASKOS" T.int64_t
    let pf_maskproc = T.constant "PF_MASKPROC" T.int64_t

    let elf_segment_flags = T.enum "ELF_SEGMENT_FLAGS" [
	PF_X, pf_x;
	PF_W, pf_w;
	PF_R, pf_r;
	PF_MASKOS, pf_maskos;
	PF_MASKPROC, pf_maskproc;
      ]

    let dt_null = T.constant "DT_NULL" T.int64_t
    let dt_needed = T.constant "DT_NEEDED" T.int64_t
    let dt_pltrelsz = T.constant "DT_PLTRELSZ" T.int64_t
    let dt_pltgot = T.constant "DT_PLTGOT" T.int64_t
    let dt_hash = T.constant "DT_HASH" T.int64_t
    let dt_strtab = T.constant "DT_STRTAB" T.int64_t
    let dt_symtab = T.constant "DT_SYMTAB" T.int64_t
    let dt_rela = T.constant "DT_RELA" T.int64_t
    let dt_relasz = T.constant "DT_RELASZ" T.int64_t
    let dt_relaent = T.constant "DT_RELAENT" T.int64_t
    let dt_strsz = T.constant "DT_STRSZ" T.int64_t
    let dt_syment = T.constant "DT_SYMENT" T.int64_t
    let dt_init = T.constant "DT_INIT" T.int64_t
    let dt_fini = T.constant "DT_FINI" T.int64_t
    let dt_soname = T.constant "DT_SONAME" T.int64_t
    let dt_rpath = T.constant "DT_RPATH" T.int64_t
    let dt_symbolic = T.constant "DT_SYMBOLIC" T.int64_t
    let dt_rel = T.constant "DT_REL" T.int64_t
    let dt_relsz = T.constant "DT_RELSZ" T.int64_t
    let dt_relent = T.constant "DT_RELENT" T.int64_t
    let dt_pltrel = T.constant "DT_PLTREL" T.int64_t
    let dt_debug = T.constant "DT_DEBUG" T.int64_t
    let dt_textrel = T.constant "DT_TEXTREL" T.int64_t
    let dt_jmprel = T.constant "DT_JMPREL" T.int64_t
    let dt_bind_now = T.constant "DT_BIND_NOW" T.int64_t
    let dt_init_array = T.constant "DT_INIT_ARRAY" T.int64_t
    let dt_fini_array = T.constant "DT_FINI_ARRAY" T.int64_t
    let dt_init_arraysz = T.constant "DT_INIT_ARRAYSZ" T.int64_t
    let dt_fini_arraysz = T.constant "DT_FINI_ARRAYSZ" T.int64_t
    let dt_runpath = T.constant "DT_RUNPATH" T.int64_t
    let dt_flags = T.constant "DT_FLAGS" T.int64_t
    let dt_encoding = T.constant "DT_ENCODING" T.int64_t
    let dt_preinit_array = T.constant "DT_PREINIT_ARRAY" T.int64_t
    let dt_preinit_arraysz = T.constant "DT_PREINIT_ARRAYSZ" T.int64_t
    let dt_loos = T.constant "DT_LOOS" T.int64_t
    let dt_hios = T.constant "DT_HIOS" T.int64_t
    let dt_loproc = T.constant "DT_LOPROC" T.int64_t
    let dt_hiproc = T.constant "DT_HIPROC" T.int64_t
    let dt_gnu_hash = T.constant "DT_GNU_HASH" T.int64_t
    let dt_relacount = T.constant "DT_RELACOUNT" T.int64_t
    let dt_relcount = T.constant "DT_RELCOUNT" T.int64_t
    let dt_flags_1 = T.constant "DT_FLAGS_1" T.int64_t
    let dt_versym = T.constant "DT_VERSYM" T.int64_t
    let dt_verdef = T.constant "DT_VERDEF" T.int64_t
    let dt_verdefnum = T.constant "DT_VERDEFNUM" T.int64_t
    let dt_verneed = T.constant "DT_VERNEED" T.int64_t
    let dt_verneednum = T.constant "DT_VERNEEDNUM" T.int64_t
    let dt_mips_rld_version = T.constant "DT_MIPS_RLD_VERSION" T.int64_t
    let dt_mips_time_stamp = T.constant "DT_MIPS_TIME_STAMP" T.int64_t
    let dt_mips_ichecksum = T.constant "DT_MIPS_ICHECKSUM" T.int64_t
    let dt_mips_iversion = T.constant "DT_MIPS_IVERSION" T.int64_t
    let dt_mips_flags = T.constant "DT_MIPS_FLAGS" T.int64_t
    let dt_mips_base_address = T.constant "DT_MIPS_BASE_ADDRESS" T.int64_t
    let dt_mips_msym = T.constant "DT_MIPS_MSYM" T.int64_t
    let dt_mips_conflict = T.constant "DT_MIPS_CONFLICT" T.int64_t
    let dt_mips_liblist = T.constant "DT_MIPS_LIBLIST" T.int64_t
    let dt_mips_local_gotno = T.constant "DT_MIPS_LOCAL_GOTNO" T.int64_t
    let dt_mips_conflictno = T.constant "DT_MIPS_CONFLICTNO" T.int64_t
    let dt_mips_liblistno = T.constant "DT_MIPS_LIBLISTNO" T.int64_t
    let dt_mips_symtabno = T.constant "DT_MIPS_SYMTABNO" T.int64_t
    let dt_mips_unrefextno = T.constant "DT_MIPS_UNREFEXTNO" T.int64_t
    let dt_mips_gotsym = T.constant "DT_MIPS_GOTSYM" T.int64_t
    let dt_mips_hipageno = T.constant "DT_MIPS_HIPAGENO" T.int64_t
    let dt_mips_rld_map = T.constant "DT_MIPS_RLD_MAP" T.int64_t
    let dt_mips_delta_class = T.constant "DT_MIPS_DELTA_CLASS" T.int64_t
    let dt_mips_delta_class_no = T.constant "DT_MIPS_DELTA_CLASS_NO" T.int64_t
    let dt_mips_delta_instance = T.constant "DT_MIPS_DELTA_INSTANCE" T.int64_t
    let dt_mips_delta_instance_no = T.constant "DT_MIPS_DELTA_INSTANCE_NO" T.int64_t
    let dt_mips_delta_reloc = T.constant "DT_MIPS_DELTA_RELOC" T.int64_t
    let dt_mips_delta_reloc_no = T.constant "DT_MIPS_DELTA_RELOC_NO" T.int64_t
    let dt_mips_delta_sym = T.constant "DT_MIPS_DELTA_SYM" T.int64_t
    let dt_mips_delta_sym_no = T.constant "DT_MIPS_DELTA_SYM_NO" T.int64_t
    let dt_mips_delta_classsym = T.constant "DT_MIPS_DELTA_CLASSSYM" T.int64_t
    let dt_mips_delta_classsym_no = T.constant "DT_MIPS_DELTA_CLASSSYM_NO" T.int64_t
    let dt_mips_cxx_flags = T.constant "DT_MIPS_CXX_FLAGS" T.int64_t
    let dt_mips_pixie_init = T.constant "DT_MIPS_PIXIE_INIT" T.int64_t
    let dt_mips_symbol_lib = T.constant "DT_MIPS_SYMBOL_LIB" T.int64_t
    let dt_mips_localpage_gotidx = T.constant "DT_MIPS_LOCALPAGE_GOTIDX" T.int64_t
    let dt_mips_local_gotidx = T.constant "DT_MIPS_LOCAL_GOTIDX" T.int64_t
    let dt_mips_hidden_gotidx = T.constant "DT_MIPS_HIDDEN_GOTIDX" T.int64_t
    let dt_mips_protected_gotidx = T.constant "DT_MIPS_PROTECTED_GOTIDX" T.int64_t
    let dt_mips_options = T.constant "DT_MIPS_OPTIONS" T.int64_t
    let dt_mips_interface = T.constant "DT_MIPS_INTERFACE" T.int64_t
    let dt_mips_dynstr_align = T.constant "DT_MIPS_DYNSTR_ALIGN" T.int64_t
    let dt_mips_interface_size = T.constant "DT_MIPS_INTERFACE_SIZE" T.int64_t
    let dt_mips_rld_text_resolve_addr = T.constant "DT_MIPS_RLD_TEXT_RESOLVE_ADDR" T.int64_t
    let dt_mips_perf_suffix = T.constant "DT_MIPS_PERF_SUFFIX" T.int64_t
    let dt_mips_compact_size = T.constant "DT_MIPS_COMPACT_SIZE" T.int64_t
    let dt_mips_gp_value = T.constant "DT_MIPS_GP_VALUE" T.int64_t
    let dt_mips_aux_dynamic = T.constant "DT_MIPS_AUX_DYNAMIC" T.int64_t
    let dt_mips_pltgot = T.constant "DT_MIPS_PLTGOT" T.int64_t
    let dt_mips_rwplt = T.constant "DT_MIPS_RWPLT" T.int64_t
    let elf_dynamic_tags = T.enum "DYNAMIC_TAGS" [
	DT_NULL, dt_null;
	DT_NEEDED, dt_needed;
	DT_PLTRELSZ, dt_pltrelsz;
	DT_PLTGOT, dt_pltgot;
	DT_HASH, dt_hash;
	DT_STRTAB, dt_strtab;
	DT_SYMTAB, dt_symtab;
	DT_RELA, dt_rela;
	DT_RELASZ, dt_relasz;
	DT_RELAENT, dt_relaent;
	DT_STRSZ, dt_strsz;
	DT_SYMENT, dt_syment;
	DT_INIT, dt_init;
	DT_FINI, dt_fini;
	DT_SONAME, dt_soname;
	DT_RPATH, dt_rpath;
	DT_SYMBOLIC, dt_symbolic;
	DT_REL, dt_rel;
	DT_RELSZ, dt_relsz;
	DT_RELENT, dt_relent;
	DT_PLTREL, dt_pltrel;
	DT_DEBUG, dt_debug;
	DT_TEXTREL, dt_textrel;
	DT_JMPREL, dt_jmprel;
	DT_BIND_NOW, dt_bind_now;
	DT_INIT_ARRAY, dt_init_array;
	DT_FINI_ARRAY, dt_fini_array;
	DT_INIT_ARRAYSZ, dt_init_arraysz;
	DT_FINI_ARRAYSZ, dt_fini_arraysz;
	DT_RUNPATH, dt_runpath;
	DT_FLAGS, dt_flags;
	DT_ENCODING, dt_encoding;
	DT_PREINIT_ARRAY, dt_preinit_array;
	DT_PREINIT_ARRAYSZ, dt_preinit_arraysz;
	DT_LOOS, dt_loos;
	DT_HIOS, dt_hios;
	DT_LOPROC, dt_loproc;
	DT_HIPROC, dt_hiproc;
	DT_GNU_HASH, dt_gnu_hash;
	DT_RELACOUNT, dt_relacount;
	DT_RELCOUNT, dt_relcount;
	DT_FLAGS_1, dt_flags_1;
	DT_VERSYM, dt_versym;
	DT_VERDEF, dt_verdef;
	DT_VERDEFNUM, dt_verdefnum;
	DT_VERNEED, dt_verneed;
	DT_VERNEEDNUM, dt_verneednum;
	DT_MIPS_RLD_VERSION, dt_mips_rld_version;
	DT_MIPS_TIME_STAMP, dt_mips_time_stamp;
	DT_MIPS_ICHECKSUM, dt_mips_ichecksum;
	DT_MIPS_IVERSION, dt_mips_iversion;
	DT_MIPS_FLAGS, dt_mips_flags;
	DT_MIPS_BASE_ADDRESS, dt_mips_base_address;
	DT_MIPS_MSYM, dt_mips_msym;
	DT_MIPS_CONFLICT, dt_mips_conflict;
	DT_MIPS_LIBLIST, dt_mips_liblist;
	DT_MIPS_LOCAL_GOTNO, dt_mips_local_gotno;
	DT_MIPS_CONFLICTNO, dt_mips_conflictno;
	DT_MIPS_LIBLISTNO, dt_mips_liblistno;
	DT_MIPS_SYMTABNO, dt_mips_symtabno;
	DT_MIPS_UNREFEXTNO, dt_mips_unrefextno;
	DT_MIPS_GOTSYM, dt_mips_gotsym;
	DT_MIPS_HIPAGENO, dt_mips_hipageno;
	DT_MIPS_RLD_MAP, dt_mips_rld_map;
	DT_MIPS_DELTA_CLASS, dt_mips_delta_class;
	DT_MIPS_DELTA_CLASS_NO, dt_mips_delta_class_no;
	DT_MIPS_DELTA_INSTANCE, dt_mips_delta_instance;
	DT_MIPS_DELTA_INSTANCE_NO, dt_mips_delta_instance_no;
	DT_MIPS_DELTA_RELOC, dt_mips_delta_reloc;
	DT_MIPS_DELTA_RELOC_NO, dt_mips_delta_reloc_no;
	DT_MIPS_DELTA_SYM, dt_mips_delta_sym;
	DT_MIPS_DELTA_SYM_NO, dt_mips_delta_sym_no;
	DT_MIPS_DELTA_CLASSSYM, dt_mips_delta_classsym;
	DT_MIPS_DELTA_CLASSSYM_NO, dt_mips_delta_classsym_no;
	DT_MIPS_CXX_FLAGS, dt_mips_cxx_flags;
	DT_MIPS_PIXIE_INIT, dt_mips_pixie_init;
	DT_MIPS_SYMBOL_LIB, dt_mips_symbol_lib;
	DT_MIPS_LOCALPAGE_GOTIDX, dt_mips_localpage_gotidx;
	DT_MIPS_LOCAL_GOTIDX, dt_mips_local_gotidx;
	DT_MIPS_HIDDEN_GOTIDX, dt_mips_hidden_gotidx;
	DT_MIPS_PROTECTED_GOTIDX, dt_mips_protected_gotidx;
	DT_MIPS_OPTIONS, dt_mips_options;
	DT_MIPS_INTERFACE, dt_mips_interface;
	DT_MIPS_DYNSTR_ALIGN, dt_mips_dynstr_align;
	DT_MIPS_INTERFACE_SIZE, dt_mips_interface_size;
	DT_MIPS_RLD_TEXT_RESOLVE_ADDR, dt_mips_rld_text_resolve_addr;
	DT_MIPS_PERF_SUFFIX, dt_mips_perf_suffix;
	DT_MIPS_COMPACT_SIZE, dt_mips_compact_size;
	DT_MIPS_GP_VALUE, dt_mips_gp_value;
	DT_MIPS_AUX_DYNAMIC, dt_mips_aux_dynamic;
	DT_MIPS_PLTGOT, dt_mips_pltgot;
	DT_MIPS_RWPLT, dt_mips_rwplt;
      ]

    let stt_notype = T.constant "STT_NOTYPE" T.int64_t
    let stt_object = T.constant "STT_OBJECT" T.int64_t
    let stt_func = T.constant "STT_FUNC" T.int64_t
    let stt_section = T.constant "STT_SECTION" T.int64_t
    let stt_file = T.constant "STT_FILE" T.int64_t
    let stt_common = T.constant "STT_COMMON" T.int64_t
    let stt_tls = T.constant "STT_TLS" T.int64_t
    let stt_gnu_ifunc = T.constant "STT_GNU_IFUNC" T.int64_t
    let stt_loos = T.constant "STT_LOOS" T.int64_t
    let stt_hios = T.constant "STT_HIOS" T.int64_t
    let stt_loproc = T.constant "STT_LOPROC" T.int64_t
    let stt_hiproc = T.constant "STT_HIPROC" T.int64_t
    let elf_symbol_types = T.enum "ELF_SYMBOL_TYPES" [
	STT_NOTYPE, stt_notype;
	STT_OBJECT, stt_object;
	STT_FUNC, stt_func;
	STT_SECTION, stt_section;
	STT_FILE, stt_file;
	STT_COMMON, stt_common;
	STT_TLS, stt_tls;
	STT_GNU_IFUNC, stt_gnu_ifunc;
	STT_LOOS, stt_loos;
	STT_HIOS, stt_hios;
	STT_LOPROC, stt_loproc;
	STT_HIPROC, stt_hiproc;
      ]

    let stb_local = T.constant "STB_LOCAL" T.int64_t
    let stb_global = T.constant "STB_GLOBAL" T.int64_t
    let stb_weak = T.constant "STB_WEAK" T.int64_t
    let stb_gnu_unique = T.constant "STB_GNU_UNIQUE" T.int64_t
    let stb_loos = T.constant "STB_LOOS" T.int64_t
    let stb_hios = T.constant "STB_HIOS" T.int64_t
    let stb_loproc = T.constant "STB_LOPROC" T.int64_t
    let stb_hiproc = T.constant "STB_HIPROC" T.int64_t
    let elf_symbol_bindings = T.enum "SYMBOL_BINDINGS" [
	STB_LOCAL, stb_local;
	STB_GLOBAL, stb_global;
	STB_WEAK, stb_weak;
	STB_GNU_UNIQUE, stb_gnu_unique;
	STB_LOOS, stb_loos;
	STB_HIOS, stb_hios;
	STB_LOPROC, stb_loproc;
	STB_HIPROC, stb_hiproc;
      ]

  end

  module ElfHeader =
  struct
    type elf_header_t

    let elf_header_t : elf_header_t Ctypes.structure T.typ = T.structure "Elf_Header_t"

    (* let identity        = Array.init 16 (fun i -> T.field elf_header_t "identity" (T.uint8_t)) *)
    let identity = T.field elf_header_t "identity" (T.ptr T.void)
    let file_type       = T.field elf_header_t "file_type" (ElfEnums.elf_e_type)
    let machine_type    = T.field elf_header_t "machine_type" (ElfEnums.elf_arch)
    let obj_file_ver    = T.field elf_header_t "object_file_version" (ElfEnums.elf_version)
    let entrypoint      = T.field elf_header_t "entrypoint" (T.uint64_t)
    let prog_hdr_offset = T.field elf_header_t "program_headers_offset" (T.uint64_t)
    let sec_hdr_offset  = T.field elf_header_t "section_headers_offset" (T.uint64_t)
    let proc_flags      = T.field elf_header_t "processor_flags" (T.uint32_t)
    let hdr_sz          = T.field elf_header_t "header_size" (T.uint32_t)
    let prog_hdr_sz     = T.field elf_header_t "program_header_size" (T.uint32_t)
    let num_seg         = T.field elf_header_t "numberof_segments" (T.uint32_t)
    let size_sec_hdr    = T.field elf_header_t "section_header_size" (T.uint32_t)
    let num_secs        = T.field elf_header_t "numberof_sections" (T.uint32_t)
    let nm_str_tbl_idx  = T.field elf_header_t "name_string_table_idx" (T.uint32_t)
    let ()              = T.seal elf_header_t 
  end


  module ElfSection =
  struct
    let elf_section_t : elf_section_t Ctypes.structure T.typ = T.structure "Elf_Section_t"
    let name = T.field elf_section_t "name" (T.string)
    let flags = T.field elf_section_t "flags" (T.uint32_t)
    let type_ = T.field elf_section_t "type" (ElfEnums.elf_section_types)
    let virtual_addr = T.field elf_section_t "virtual_address" (T.uint64_t) 
    let offset = T.field elf_section_t "offset" (T.uint64_t) 
    let original_size = T.field elf_section_t "original_size" (T.uint64_t) 
    let link = T.field elf_section_t "link" (T.uint32_t) 
    let info = T.field elf_section_t "info" (T.uint32_t) 
    let alignment = T.field elf_section_t "alignment" (T.uint64_t) 
    let entry_size = T.field elf_section_t "entry_size" (T.uint64_t) 
    let size = T.field elf_section_t "size" (T.uint64_t) 
    let content = T.field elf_section_t "content" (T.ptr T.uint8_t)
    let entropy = T.field elf_section_t "entropy" (T.double)
    let () = T.seal elf_section_t 
  end

  module ElfSegment =
  struct
    let elf_segment_t : elf_segment_t Ctypes.structure T.typ = T.structure "Elf_Segment_t"
    let type_ = T.field elf_segment_t "type" (ElfEnums.elf_segment_types)
    let flags = T.field elf_segment_t "flags" (T.uint32_t)
    let virtual_address = T.field elf_segment_t "virtual_address" (T.uint64_t)
    let virtual_size = T.field elf_segment_t "virtual_size" (T.uint64_t)
    let offset = T.field elf_segment_t "offset" (T.uint64_t)
    let alignment = T.field elf_segment_t "alignment" (T.uint64_t)
    let size = T.field elf_segment_t "size" (T.uint64_t)
    let content = T.field elf_segment_t "content" (T.ptr T.uint8_t)
    let () = T.seal elf_segment_t 
  end

  module ElfDynamicEntry =
  struct
    let elf_dynamic_entry_t : elf_dynamic_entry_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_t"
    let tag = T.field elf_dynamic_entry_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_t "value" (T.uint64_t)
    let () = T.seal elf_dynamic_entry_t

    let elf_dynamic_entry_library_t : elf_dynamic_entry_library_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_Library_t"
    let tag = T.field elf_dynamic_entry_library_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_library_t "value" (T.uint64_t)
    let name = T.field elf_dynamic_entry_library_t "name" (T.string)
    let () = T.seal elf_dynamic_entry_library_t

    let elf_dynamic_entry_sharedobject_t : elf_dynamic_entry_sharedobject_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_SharedObject_t"
    let tag = T.field elf_dynamic_entry_sharedobject_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_sharedobject_t "value" (T.uint64_t)
    let name = T.field elf_dynamic_entry_sharedobject_t "name" (T.string)
    let () = T.seal elf_dynamic_entry_sharedobject_t

    let elf_dynamic_entry_array_t : elf_dynamic_entry_array_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_Array_t"
    let tag = T.field elf_dynamic_entry_array_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_array_t "value" (T.uint64_t)
    let array = T.field elf_dynamic_entry_array_t "array" (T.uint64_t)
    let () = T.seal elf_dynamic_entry_array_t

    let elf_dynamic_entry_r_t : elf_dynamic_entry_r_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_Rpath_t"
    let tag = T.field elf_dynamic_entry_r_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_r_t "value" (T.uint64_t)
    let rpath = T.field elf_dynamic_entry_r_t "rpath" (T.string)
    let () = T.seal elf_dynamic_entry_r_t


    let elf_dynamic_entry_runpath_t : elf_dynamic_entry_runpath_t Ctypes.structure T.typ = T.structure "Elf_DynamicEntry_RunPath_t"
    let tag = T.field elf_dynamic_entry_runpath_t "tag" (ElfEnums.elf_dynamic_tags)
    let value = T.field elf_dynamic_entry_runpath_t "value" (T.uint64_t)
    let runpath = T.field elf_dynamic_entry_runpath_t "runpath" (T.string)
    let () = T.seal elf_dynamic_entry_runpath_t

  end

  module ElfSymbol =
  struct
    let elf_symbol_t : elf_symbol_t Ctypes.structure T.typ = T.structure "Elf_Symbol_t"
    let name = T.field elf_symbol_t "name" (T.string)
    let type_ = T.field elf_symbol_t "type" (ElfEnums.elf_symbol_types)
    let binding = T.field elf_symbol_t "binding" (ElfEnums.elf_symbol_bindings)
    let info = T.field elf_symbol_t "information" (T.uint8_t)
    let other = T.field elf_symbol_t "other" (T.uint8_t)
    let shndx = T.field elf_symbol_t "shndx" (T.uint16_t)
    let value = T.field elf_symbol_t "value" (T.uint64_t)
    let size = T.field elf_symbol_t "size" (T.uint64_t)
    let () = T.seal elf_symbol_t 

  end


  module ElfBinary =
  struct
    let elf_binary_t : elf_binary_t Ctypes.structure T.typ = T.structure "Elf_Binary_t"
    let handler = T.field elf_binary_t "handler" (T.ptr T.void)
    let name = T.field elf_binary_t "name" (T.string)
    let interpreter = T.field elf_binary_t "interpreter" (T.string)
    let type_ = T.field elf_binary_t "type" ElfEnums.elf_elf_class
    let header = T.field elf_binary_t "header" ElfHeader.elf_header_t
    let sections = T.field elf_binary_t "sections" (T.ptr (T.ptr ElfSection.elf_section_t))
    let segments = T.field elf_binary_t "segments" (T.ptr (T.ptr ElfSegment.elf_segment_t))
    let dyn_entries = T.field elf_binary_t "dynamic_entries" (T.ptr (T.ptr ElfDynamicEntry.elf_dynamic_entry_t))
    let dyn_symbols = T.field elf_binary_t "dynamic_symbols" (T.ptr (T.ptr ElfSymbol.elf_symbol_t))
    let static_symbols = T.field elf_binary_t "static_symbols" (T.ptr (T.ptr ElfSymbol.elf_symbol_t))
    let () = T.seal elf_binary_t

  end

end   

module Bindings(T : Cstubs_structs.TYPE with type 'a typ = 'a typ) (F : Cstubs.FOREIGN) =
struct
  module E = Enums(T)

  let elf_parse_ = F.foreign "elf_parse" F.(T.string @-> returning (T.ptr E.ElfBinary.elf_binary_t))

  let elf_binary_destroy_ = F.foreign "elf_binary_destroy" F.(T.ptr E.ElfBinary.elf_binary_t @-> returning T.void)


end


