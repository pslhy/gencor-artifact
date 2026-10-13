let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (number |> to_string |> String.length) in
    let digit = number % 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
