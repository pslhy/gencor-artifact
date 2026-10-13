let rec amicable_numbers_sum (limit : int) : int =
  let rec divisor_sum (n : int) : int =
    (1 -- (n / 2)) |> List.filter (fun i -> n mod i = 0) |> List.sum in
  let rec amicable_numbers_seq (limit : int) : int =
    Seq.fold_left (fun acc i -> if i <> divisor_sum i && divisor_sum(divisor_sum i) = i then acc + i + divisor_sum i else acc) 0 (1 -- limit) in
  amicable_numbers_seq limit


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
