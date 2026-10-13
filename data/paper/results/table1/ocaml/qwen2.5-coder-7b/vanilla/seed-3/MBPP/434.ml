let rec text_match_one (text : string) : bool = 
    let rec helper (chars : char list) : bool = 
      match chars with
      | 'a' :: 'b' :: rest -> helper rest
      | 'a' :: rest -> false
      | [] -> false
    in helper (List.of_seq (String.to_seq text))

let rec text_match_two (text : string) : bool =
    match text with
    | 'a' :: 'b' :: rest -> text_match_two rest
    | 'a' -> false
    | [] -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
