(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
let rec amicable_numbers_sum (limit : int) : int =
  let rec divisor_sum (n : int) : int =
    (1 -- (n / 2)) |> List.filter (fun i -> n mod i = 0) |> List.sum in
  let rec amicable_numbers_seq (limit : int) : int =
    Seq.fold_left (fun acc i -> if i <> divisor_sum i && divisor_sum(divisor_sum i) = i then acc + i + divisor_sum i else acc) 0 (1 -- limit) in
  amicable_numbers_seq limit

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:61: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int =
  let divisor_sum (n : int) : int =
    List.fold_left (fun acc i -> if n mod i = 0 then acc + i else acc) 0 (List.init (n / 2 + 1) (fun i -> i + 1)) in
  let rec amicable_numbers_seq (limit : int) : int =
    Seq.fold_left (fun acc i -> if i <> divisor_sum i && divisor_sum (divisor_sum i) = i then acc + i + divisor_sum i else acc) 0 (Seq.init limit (fun i -> i + 1)) in
  amicable_numbers_seq limit

