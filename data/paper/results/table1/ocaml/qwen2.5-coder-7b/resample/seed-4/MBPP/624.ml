(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | c :: cs -> 
        let new_char = if c >= 'a' && c <= 'z' then char_of_int ((int_of_char c) - 32) else c 
        in helper cs (new_char :: acc) 
  in helper (String.to_list string) []
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> acc 
    | c :: cs -> 
        let new_char = if c >= 'a' && c <= 'z' then char_of_int ((int_of_char c) - 32) else c 
        in helper cs (new_char :: acc) 
  in helper (String.to_list string) [] |> List.rev |> String.of_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:55: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> acc 
    | c :: cs -> 
        let new_char = if c >= 'a' && c <= 'z' then char_of_int ((int_of_char c) - 32) else c 
        in helper cs (new_char :: acc) 
  in (helper (String.to_list string) [] |> List.rev)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> acc 
    | c :: cs -> 
        let new_char = if c >= 'a' && c <= 'z' then char_of_int ((int_of_char c) - 32) else c 
        in helper cs (new_char :: acc) 
  in (helper (List.of_seq (String.to_seq string)) [] |> List.rev)

