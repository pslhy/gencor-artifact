let rec armstrong_number (number : int) : bool =
  let number_of_digits = string_of_int number |> String.length in
  let digit_sum = 
    String.to_seq number |> Seq.fold_left ( + ) 0
  in
  (digit_sum ** number_of_digits) = number

(* Returns true if the given number is an armstrong number, false otherwise *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
