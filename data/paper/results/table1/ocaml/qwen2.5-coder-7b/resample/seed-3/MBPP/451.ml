(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
let rec remove_whitespaces (text1 : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | _ :: rest -> chars @ helper rest
  in 
  String.trim (List.fold_left (fun acc c -> acc ^ String.make 1 c) "" (helper (String.to_list text1)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_whitespaces (text1 : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | _ :: rest -> chars @ helper rest
  in 
  let cleaned_chars = helper (List.filter (fun c -> c <> ' ') (String.to_list text1)) in
  String.concat "" cleaned_chars

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:64: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_whitespaces (text1 : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | _ :: rest -> chars @ helper rest
  in 
  String.concat "" (helper (String.to_list text1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:29: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_whitespaces (text1 : string) : string = 
  let rec helper (chars : char array) : char array = 
    match chars with 
    | [||] -> [||]
    | ' ' :: rest -> helper rest
    | _ :: rest -> chars @ helper rest
  in 
  let cleaned_chars = helper (String.to_array text1) in
  String.of_array removed_whitespace

