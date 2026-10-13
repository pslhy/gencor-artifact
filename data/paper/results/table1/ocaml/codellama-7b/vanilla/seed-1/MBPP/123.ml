let rec amicable_numbers_sum (limit : int) : int =
  let rec sum_of_factors n =
    let rec sum_of_factors_aux (i : int) (acc : int) =
      if i = n then acc
      else sum_of_factors_aux (i + 1) (acc + i)
    in
    sum_of_factors_aux 1 0
  in
  let rec amicable_numbers n =
    if n = limit then []
    else if sum_of_factors (n + 1) = n then (n, n + 1) :: amicable_numbers (n + 1)
    else amicable_numbers (n + 1)
  in
  List.fold_left amicable_numbers [] 1 |> List.fold_left (fun acc (n, m) -> acc + n + m) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
