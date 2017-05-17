open LIEF

let _ =
  let elf_file = ELF.elf_parse "/bin/ls" in
  Printf.printf "ELF Binary name: %s\n" (ELF.ELFBinary.elf_binary_get_name elf_file);
  let sec = ELF.ELFBinary.elf_get_sections elf_file in
  List.iter (fun s -> Printf.printf "Section name: %s\n" (ELF.ELFSection.get_name s)) sec;
  let dynsym = ELF.ELFBinary.elf_get_dynamic_symbols elf_file in
  List.iter (fun s -> Printf.printf "Dynamic Symbol: %s\n" (ELF.ELFSymbol.get_name s)) dynsym;

  let staticsym = ELF.ELFBinary.elf_get_static_symbols elf_file in
  List.iter (fun s -> Printf.printf "Static Symbol: %s\n" (ELF.ELFSymbol.get_name s)) staticsym;
  
  ELF.elf_destroy elf_file 
