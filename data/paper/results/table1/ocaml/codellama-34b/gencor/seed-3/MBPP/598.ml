
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (number |> string_of_int |> String.length) in
    let sum_of_digits = number |> string_of_int |> String.to_seq |> Seq.fold_left (fun acc x -> acc + (int_of_string x)) 0 in
    sum_of_digits ** num_digits = number

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
