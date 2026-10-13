let rec text_match_two_three (text : string) : bool =
  match text with
  | "a" -> false
  | _ :: t -> text_match_two_three (String.sub text 1 (String.length text - 1))
  | _ -> false

let rec text_match_three_four (text : string) : bool =
  match text with
  | "aa" -> false
  | _ :: t -> text_match_three_four (String.sub text 1 (String.length text - 1))
  | _ -> false

let check_string (text : string) : bool =
  let rec apply_two_or_three (index : int) : bool = 
    if index = String.length text then false
    else if text.[index] = 'a' && text.[index + 1] = 'b' && text.[index + 2] = 'b' then true
    else if text.[index] = 'a' && text.[index + 1] = 'b' && text.[index + 2] = 'b' && text.[index + 3] = 'b' then true
    else apply_two_or_three (index + 1)
  in
  let rec apply_three_or_four (index : int) : bool = 
    if index = String.length text then false
    else if text.[index] = 'a' && text.[index + 1] = 'a' && text.[index + 2] = 'b' then true
    else if text.[index] = 'a' && text.[index + 1] = 'a' && text.[index + 2] = 'b' && text.[index + 3] = 'b' then true
    else if text.[index] = 'a' && text.[index + 1] = 'a' && text.[index + 2] = 'a' && text.[index + 3] = 'b' then true
    else apply_three_or_four (index + 1)
  in
  apply_two_or_three 0 || apply_three_four 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
