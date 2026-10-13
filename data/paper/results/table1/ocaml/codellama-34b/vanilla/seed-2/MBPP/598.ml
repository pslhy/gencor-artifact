let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) ** num_digits)
    in
    number = helper number 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
