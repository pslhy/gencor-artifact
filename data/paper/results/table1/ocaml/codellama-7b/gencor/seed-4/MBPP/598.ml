
let rec armstrong_number (number : int) : bool = 
    let digits = number |> string_of_int |> String.to_seq |> List.of_seq |> List.map int_of_string in
    let sum = List.fold_left ( + ) 0 digits in
    sum = number

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
