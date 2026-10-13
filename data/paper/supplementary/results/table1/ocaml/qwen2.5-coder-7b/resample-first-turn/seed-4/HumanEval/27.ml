let rec flip_case (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | c :: cs -> 
        let new_char = 
          if Char.is_uppercase_ascii c then Char.lowercase_ascii c 
          else Char.uppercase_ascii c in 
        helper cs (new_char :: acc) in 
  helper (String.to_list string) []
  
let _ = flip_case "Hello" (* "hELLO" *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
