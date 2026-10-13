(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> raise Not_found
  | x :: xs ->
     let (c, _) = List.fold_left (fun (c, x') n -> if n = x' then (c+1, x') else if c > List.hd(c, x')) (1, x) xs in
     c;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:103: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> raise Not_found
  | x :: xs ->
     let (c, _) = List.fold_left (fun (c, x') n -> if n = x' then (c+1, x') else if c > List.hd(c, x')) (1, x) xs in
     c;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:103: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int =
  match nums with
  | [] -> raise Not_found
  | x :: xs ->
     let (c, _) = List.fold_left (fun (c, x') n -> if n = x' then (c+1, x') else if c > List.hd(c, x') then (c, x') else (1, n)) (1, x) xs in
     c;;

