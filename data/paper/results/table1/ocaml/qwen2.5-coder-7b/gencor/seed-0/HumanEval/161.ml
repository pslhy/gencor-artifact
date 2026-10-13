
let rec solve (s : string) : string = 
  let is_letter c = Char.uppercase_ascii c <> c in
  let rec helper i acc =
    if i = -1 then acc
    else 
      let c = s.[i] in
      if is_letter c then 
        helper (i - 1) (Char.lowercase_ascii c :: acc)
      else
        helper (i - 1) (c :: acc)
  in
  match s with
  | s when not (List.exists is_letter (List.of_seq (String.to_seq s))) -> 
      String.of_seq (List.to_seq (List.rev (String.to_seq s)))
  | _ -> String.of_seq (List.to_seq (helper (String.length s - 1) []))



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
