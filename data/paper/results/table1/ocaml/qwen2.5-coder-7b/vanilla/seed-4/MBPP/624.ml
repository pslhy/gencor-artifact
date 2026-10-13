let rec is_upper (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | c :: cs -> 
        let new_char = if c >= 'a' && c <= 'z' then char_of_int ((int_of_char c) - 32) else c 
        in helper cs (new_char :: acc) 
  in helper (String.to_list string) []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
