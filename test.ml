open LIEF

let _ =
  let elf_file = ELF.elf_parse "/bin/ls" in
  Printf.printf "ELF Binary name: %s\n" (ELF.elf_get_name elf_file);
  ELF.elf_destroy elf_file 
