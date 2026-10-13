(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function encrypt that takes a string as an argument and *)
(*     returns a string encrypted with the alphabet being rotated. *)
(*     The alphabet should be rotated in a manner such that the letters *)
(*     shift down by two multiplied to two places. *)
(*     For example: *)
(*     >>> encrypt "hi" *)
(*     "lm" *)
(*     >>> encrypt "asdfghjkl" *)
(*     "ewhjklnop" *)
(*     >>> encrypt "gf" *)
(*     "kj" *)
(*     >>> encrypt "et" *)
(*     "ix" *)
let rec encrypt (s : string) : string =
  if String.length s = 0 then
    ""
  else
    let c = s.[0] in
    let rot2 =
      if c >= 'a' && c <= 'z' then
        char_of_int (((int_of_char c - int_of_char 'a' + 2) * 2) % 26 + int_of_char 'a')
      else
        char_of_int (((int_of_char c - int_of_char 'A' + 2) * 2) % 26 + int_of_char 'A')
    in
    String.make 1 rot2 ^ encrypt (String.sub s 1 (String.length s - 1))
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:66: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
  if String.length s = 0 then
    ""
  else
    let c = s.[0] in
    let rot2 =
      if c >= 'a' && c <= 'z' then
        char_of_int (((int_of_char c - int_of_char 'a' + 2) * 2) % 26 + int_of_char 'a')
      else
        char_of_int (((int_of_char c - int_of_char 'A' + 2) * 2) % 26 + int_of_char 'A')
    in
    String.make 1 rot2 ^ encrypt (String.sub s 1 (String.length s - 1))

let test ciphertext =
  if String.length ciphertext = 0 then
    Printf.printf "empty ciphertext\n"
  else
    Printf.printf "string\n" 

let () = test (encrypt "Hello world!")

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:66: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
  if String.length s = 0 then
    ""
  else
    let c = s.[0] in
    let rot2 =
      if c >= 'a' && c <= 'z' then
        char_of_int (((int_of_char c - int_of_char 'a' + 2) * 2) % 26 + int_of_char 'a')
      else
        char_of_int (((int_of_char c - int_of_char 'A' + 2) * 2) % 26 + int_of_char 'A')
    in
    String.make 1 rot2 ^ encrypt (String.sub s 1 (String.length s - 1))

let test ciphertext =
  if String.length ciphertext = 0 then
    Printf.printf "empty ciphertext\n"
  else
    Printf.printf "string\n" 

let () = test (encrypt "Hello world!")

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:66: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
  if String.length s = 0 then
    ""
  else
    let c = s.[0] in
    let rot2 =
      if c >= 'a' && c <= 'z' then
        Char.chr (c + 2)
      else if c >= 'A' && c <= 'Z' then
        Char.chr (c - 2)
      else
        c
    in
    String.make 1 rot2 ^ encrypt (String.sub s 1 (String.length s - 1))

let test ciphertext =
  if String.length ciphertext = 0 then
    Printf.printf "empty ciphertext\n"
  else
    Printf.printf "string\n" 

let () = test (encrypt "Hello world!")

