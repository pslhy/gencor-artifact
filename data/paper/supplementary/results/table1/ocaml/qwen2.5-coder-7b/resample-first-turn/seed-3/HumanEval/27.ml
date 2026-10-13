let rec flip_case (string : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | 'a'..'z' as c :: cs -> (Char.uppercase_ascii c) :: helper cs
    | 'A'..'Z' as c :: cs -> (Char.lowercase_ascii c) :: helper cs
    | c :: cs -> c :: helper cs
  in
  String.of_list (helper (String.to_list string))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
