let rec count_upper (s : string) : int =
  let len = String.length s in
  let rec helper (i : int) (count : int) : int =
    if i < len then
      if i mod 2 = 0 && Char.uppercase_ascii (String.get s i) = 'A' ||
         i mod 2 = 0 && Char.uppercase_ascii (String.get s i) = 'E' ||
         i mod 2 = 0 && Char.uppercase_ascii (String.get s i) = 'I' ||
         i mod 2 = 0 && Char.uppercase_ascii (String.get s i) = 'O' ||
         i mod 2 = 0 && Char.uppercase_ascii (String.get s i) = 'U'
      then helper (i+1) (count+1)
      else helper (i+1) count
    else count
  in
  helper 0 0

let () =
  print_int (count_upper "aBCdEf") ;
  print_newline () ;
  print_int (count_upper "abcdefg") ;
  print_newline () ;
  print_int (count_upper "dBBE") ;
  print_newline ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
