open LIEF

let _ =
  let elf_file = ELF.elf_parse "/bin/ls" in
  let () = ELF.elf_destroy elf_file in
  ()
