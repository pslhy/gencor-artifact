(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns true if the object q will fly, and false otherwise. *)
(*     The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w. *)
(*     Example: *)
(*     >>> will_it_fly [1; 2] 5 *)
(*     false *)
(*     # 1+2 is less than the maximum possible weight, but it's unbalanced. *)
(*     >>> will_it_fly [3; 2; 3] 1 *)
(*     false *)
(*     # it's balanced, but 3+2+3 is more than the maximum possible weight. *)
(*     >>> will_it_fly [3; 2; 3] 9 *)
(*     true *)
(*     # 3+2+3 is less than the maximum possible weight, and it's balanced. *)
(*     >>> will_it_fly [3] 5 *)
(*     true *)
(*     # 3 is less than the maximum possible weight, and it's balanced. *)
let rec will_it_fly (q : int list) (w : int) : bool =
  let sum = List.fold_left (fun acc x -> x + acc) 0 q in
  let balanced = is_palindromic_list q in
  if balanced then acc <= w
  else false

and is_palindromic_list (l : 'a list) : bool =
  let rec aux (l : 'a list) = function
    | [] -> true
    | h :: t -> h = List.hd (List.rev l) && aux t (List.tl (List.rev (List.tl l)))
  in
  aux l l

let () =
  let q = [3; 2; 3] in
  let w = 9 in
  let result = will_it_fly q w in
  print_endline (string_of_bool result)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound value "acc" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec will_it_fly (q : int list) (w : int) : bool =
  let sum = List.fold_left (fun acc x -> x + acc) 0 q in
  let balanced = is_palindromic_list q in
  if balanced then sum <= w
  else false

and is_palindromic_list (l : 'a list) : bool =
  let rec aux (l : 'a list) = function
    | [] -> true
    | h :: t -> h = List.hd (List.rev l) && aux t (List.tl (List.rev (List.tl l)))
  in
  aux l l

let () =
  let q = [3; 2; 3] in
  let w = 9 in
  let result = will_it_fly q w in
  print_endline (string_of_bool (result))

