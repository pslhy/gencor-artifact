let rec mul_even_odd (list1 : int list) : int =
match list1 with
| [] -> 0
| x :: xs ->
  let even_list = List.filter (fun x -> x mod 2 = 0) xs in
  let odd_list = List.filter (fun x -> x mod 2 = 1) xs in
  match even_list, odd_list with
  | [], [] -> 0
  | [], _ -> List.fold_left ( * ) 1 xs
  | _, [] -> List.fold_left ( * ) 1 xs
  | es, os -> List.fold_left ( * ) 1 (List.assoc es) * List.fold_left ( * ) 1 (List.assoc os)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
