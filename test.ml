open LIEF

let _ =
  let elf_file = ELF.elf_parse "/bin/ls" in
  Printf.printf "ELF Binary name: %s\n" (ELF.ELFBinary.elf_binary_get_name elf_file);
  let sec = ELF.ELFBinary.elf_get_sections elf_file in
  List.iter (fun s -> Printf.printf "Section name: %s\n" (ELF.ELFSection.get_name s)) sec;
  ELF.elf_destroy elf_file 
