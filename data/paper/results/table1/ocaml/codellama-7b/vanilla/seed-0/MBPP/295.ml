let rec sum_div (number : int) : int =
  if number = 0 then 0
  else number :: (sum_div (number - 1) : int)

let divisors (number : int) : int list =
  let rec aux (number : int) (divisors : int list) : int list =
    if number = 0 then divisors
    else aux (number / (number : int)) (number :: divisors)
  in
  aux number []

let sum_divisors (number : int) : int =
  List.fold_left ( * ) 1 (divisors number)

let () =
  let n = read_int () in
  Printf.printf "%d" (sum_divisors n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
