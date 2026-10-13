(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | x :: rest -> x :: helper rest
  in
  String.trim (List.fold_left (fun acc x -> acc ^ String.make 1 x) "" (helper (String.to_list text)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | x :: rest -> x :: helper rest
  in
  String.trim (List.fold_left (fun acc x -> acc ^ String.make 1 x) "" (helper (Char.list_of_string text)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:80: Unbound value "Char.list_of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | x :: rest -> x :: helper rest
  in
  String.trim (List.fold_left (fun acc x -> acc ^ String.make 1 x) "" (helper (List.of_seq (String.to_seq text))))

