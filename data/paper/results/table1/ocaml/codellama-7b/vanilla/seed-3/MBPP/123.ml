let rec amicable_numbers_sum (limit : int) : int =
  let d1 (n : int) : int =
    List.reduce ( + ) (List.map (fun i -> i * i) (factors_of n)) in
  let d2 (n : int) : int =
    List.reduce ( + ) (List.map (fun i -> i * i) (factors_of n)) in
  let filtered_numbers : int list =
    List.filter (fun (n : int) -> d2 n = n) (range 1 limit) in
  List.fold_left ( + ) 0 filtered_numbers
and factors_of (n : int) : int list =
  let rec fac_aux (n : int) (i : int) : int list =
    if n < i * i then
      []
    else if n mod i = 0 then
      i :: fac_aux n (i + 1)
    else
      fac_aux n (i + 1) in
  fac_aux n 2
and range (start : int) (end_ : int) : int list =
  let rec range_aux (start : int) (end_ : int) : int list =
    if start > end_ then
      []
    else
      start :: range_aux (start + 1) end_ in
  range_aux start end_


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
