let rec armstrong_number (number : int) : bool =
  let number_of_digits = String.length (string_of_int number) in
  let number_of_digits_squared = number_of_digits ** 2 in
  let sum_of_digits =
    Array.fold_left number ~init:0 ~f:(fun acc x ->
      acc + (x ** number_of_digits))
  in
  sum_of_digits = number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
