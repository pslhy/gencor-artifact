(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
let rec remove_parenthesis (items : string list) : string = 
  let rec helper = function
    | [] -> []
    | '(' :: ')' :: tl -> helper tl
    | x :: tl -> x :: helper tl
    | _ -> []
  in
  String.concat "" (helper (String.to_list items))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:29: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_parenthesis (items : string list) : string = 
  let rec helper = function
    | [] -> []
    | '(' :: ')' :: tl -> helper tl
    | x :: tl -> x :: helper tl
    | _ -> []
  in
  String.concat "" (helper items)

