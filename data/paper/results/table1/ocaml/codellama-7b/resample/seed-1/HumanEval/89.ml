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
  let rot2 x =
    match x with
      | 'a'..'z' -> chr (ord x + 2 * 2)
      | 'A'..'Z' -> chr (ord x + 2 * 2)
      | _ -> x
  in
  match s with
    | "" -> ""
    | [c] -> [rot2 c]
    | [c1; c2] -> [rot2 c1; rot2 c2]
    | _ -> [rot2 (List.nth s (String.length s - 2)); rot2 (List.nth s (String.length s - 1))]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "chr" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
  let rot2 x =
    match x with
    |'a'..'z' -> x
    | 'A'..'Z' -> x
    | _ -> x
  in
  match s with
      | "" -> ""
      | [c] -> [chr (ord c + 2 * 2)]
      | [c1; c2] -> [chr (ord c1 + 2 * 2); chr (ord c2 + 2 * 2)]
      | _ -> [chr (ord (List.nth s (length s - 2)) + 2 * 2); chr (ord (List.nth s (length s - 1)) + 2 * 2)]

