let rec encrypt (s : string) : string =
  if s = "" then ""
  else
    let enc_char (c : char) : char =
      match c with
      | 'a' .. 'z' ->
        let offset = (c - 'a') * 2 in
        char_of_int (('z' - offset + 1) % 26 + 'a')
      | 'A' .. 'Z' ->
        let offset = (c - 'A') * 2 in
        char_of_int (('Z' - offset + 1) % 26 + 'A')
      | _ -> c
    in
    enc_char (String.get s 0) ^ encrypt (String.sub s 1 (String.length s - 1))
;;

let () =
  print_endline (encrypt "hi");
  print_endline (encrypt "asdfghjkl");
  print_endline (encrypt "gf");
  print_endline (encrypt "et");
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
