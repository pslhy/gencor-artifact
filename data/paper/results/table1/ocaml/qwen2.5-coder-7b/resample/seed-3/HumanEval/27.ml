(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
let rec flip_case (string : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | 'a'..'z' as c :: cs -> (Char.uppercase_ascii c) :: helper cs
    | 'A'..'Z' as c :: cs -> (Char.lowercase_ascii c) :: helper cs
    | c :: cs -> c :: helper cs
  in
  String.of_list (helper (String.to_list string))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:3: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | 'a'..'z' as c :: cs -> (Char.uppercase_ascii c) :: helper cs
    | 'A'..'Z' as c :: cs -> (Char.lowercase_ascii c) :: helper cs
    | c :: cs -> c :: helper cs
  in
  List.map Char.of_int (List.map (fun c -> if c >= 'a' && c <= 'z' then c - 32 else if c >= 'A' && c <= 'Z' then c + 32 else c) (List.map Char.code (String.to_list string)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:12: Unbound value "Char.of_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec flip_case (string : string) : string = 
  let rec helper (chars : char list) : int list = 
    match chars with 
    | [] -> []
    | 'a'..'z' as c :: cs -> Char.code (Char.uppercase_ascii c) :: helper cs
    | 'A'..'Z' as c :: cs -> Char.code (Char.lowercase_ascii c) :: helper cs
    | c :: cs -> Char.code c :: helper cs
  in
  String.of_seq (List.to_seq (helper (String.to_seq string)))

