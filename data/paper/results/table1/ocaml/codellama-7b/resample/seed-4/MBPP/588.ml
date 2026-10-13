(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          |[] -> head 
          | xs -> big_diff (xs)) - head)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:40: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int = 
  match nums with 
  | [] -> raise (Invalid_argument "List is empty")
  | head :: tail -> 
    (match tail with 
    | [] -> head 
    | xs -> big_diff (xs)) - head)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int = 
  match nums with 
  | [] -> raise (Invalid_argument "List is empty")
  | head :: tail -> 
    (match tail with 
    | [] -> head 
    | xs -> big_diff (xs)) - head);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
  match nums with
  | [] -> raise (Invalid_argument "List is empty")
  | head :: tail ->
    (match tail with
    | [] -> head
    | xs -> big_diff (xs)) - head)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
  match nums with
  | [] -> raise (Invalid_argument "List is empty")
  | head :: tail ->
    (match tail with
    | [] -> head
    | xs -> big_diff (xs)) - head)

