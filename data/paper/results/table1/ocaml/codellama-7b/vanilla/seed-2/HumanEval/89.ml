let rec encrypt (s : string) : string =
  match s with
  | "" -> ""
  | _ ->
    let rotated_letter : char =
      match s.[0] with
      | 'a' .. 'm' -> char_of_int (int_of_char s.[0] - 2)
      | 'A' .. 'M' -> char_of_int (int_of_char s.[0] - 2)
      | 'n' .. 'z' -> char_of_int (int_of_char s.[0] - 2 + 26)
      | 'N' .. 'Z' -> char_of_int (int_of_char s.[0] - 2 + 26)
      | _ -> s.[0]
    in
    String.make 1 rotated_letter ^ encrypt (String.sub s 1 (String.length s - 1))


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
