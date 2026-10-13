(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper (chars : char list) (capitalize_next : bool) : string = 
    match chars with 
    | [] -> ""
    | '_' :: rest -> if capitalize_next then 
                      let (head::tail) = rest in 
                      string_of_char (Char.uppercase head) ^ helper tail false 
                    else helper rest false 
    | char :: rest -> 
      if capitalize_next then 
        string_of_char (Char.uppercase char) ^ helper rest false 
      else string_of_char char ^ helper rest false 
  in helper (List.of_string word) false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:23: Unbound value "string_of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
  let rec helper (chars : char list) (capitalize_next : bool) : string = 
    match chars with 
    | [] -> ""
    | '_' :: rest -> if capitalize_next then 
                      let (head::tail) = rest in 
                      Char.uppercase_ascii head :: helper tail false 
                    else helper rest false 
    | char :: rest -> 
      if capitalize_next then 
        Char.uppercase_ascii char :: helper rest false 
      else char :: helper rest false 
  in String.concat "" (helper (List.of_string word) false)

