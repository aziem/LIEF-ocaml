


let elfheader = "/usr/include/LIEF/ELF.h"

let peheader = "/usr/include/LIEF/PE.h"

let lief_header_loc =
  Printf.sprintf "#include \"%s\" \n #include \"%s\"" elfheader peheader

