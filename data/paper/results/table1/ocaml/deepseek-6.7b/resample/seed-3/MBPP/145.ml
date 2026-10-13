(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | [] -> invalid_arg "List is empty"
  | [ _ ] -> invalid_arg "List contains only one element"
  | _ -> 
    let min_el = List.fold_left min Int.max_value arr in
    let max_el = List.fold_left max Int.min_value arr in
    max_el - min_el

(* Test cases *)
let list1 = [ 1; 2; 3; 4; 5 ]
let list2 = [ -1; -2; -3; -4; -5 ]
let list3 = [ 10; 20; 30; 40; 50 ]

let () = print_int @@ max_Abs_Diff list1
let () = print_int @@ max_Abs_Diff list2
let () = print_int @@ max_Abs_Diff list3

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:37: Unbound value "Int.max_value" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | [] -> invalid_arg "List is empty"
  | [ _ ] -> invalid_arg "List contains only one element"
  | _ -> 
    let min_el = List.fold_left (fun a b -> min a b) Int.min_value arr in
    let max_el = List.fold_left (fun a b -> max a b) Int.max_value arr in
    max_el - min_el

(* Test cases *)
let list1 = [ 1; 2; 3; 4; 5 ]
let list2 = [ -1; -2; -3; -4; -5 ]
let list3 = [ 10; 20; 30; 40; 50 ]

let () = print_int @@ max_Abs_Diff list1
let () = print_int @@ max_Abs_Diff list2
let () = print_int @@ max_Abs_Diff list3

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:54: Unbound value "Int.min_value" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | [] -> invalid_arg "List is empty"
  | [ _ ] -> invalid_arg "List contains only one element"
  | _ -> 
    let min_el = List.fold_left (fun a b -> min a b) Int.min_int arr in
    let max_el = List.fold_left (fun a b -> max a b) Int.max_int arr in
    max_el - min_el

(* Test cases *)
let list1 = [ 1; 2; 3; 4; 5 ]
let list2 = [ -1; -2; -3; -4; -5 ]
let list3 = [ 10; 20; 30; 40; 50 ]

let () = print_int @@ max_Abs_Diff list1
let () = print_int @@ max_Abs_Diff list2
let () = print_int @@ max_Abs_Diff list3

