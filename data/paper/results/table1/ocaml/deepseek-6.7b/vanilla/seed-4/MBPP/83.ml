let rec get_Char (strr : string) : string =
  if strr = "" then ""
  else
    let ordinal = Char.code (String.get strr 0) in
    let remaining_string = String.sub strr 1 ((String.length strr) - 1) in
    let remaining_char = get_Char remaining_string in
    Char.escaped (Char.chr ((ordinal - 65 + String.length remaining_char) mod 26 + 65)) ^ remaining_char

(* Testing the function *)
let () = print_endline (get_Char "ABC")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
