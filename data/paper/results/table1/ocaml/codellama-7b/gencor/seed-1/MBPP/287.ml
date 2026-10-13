
let rec square_Sum (n : int) : int =
    match n with
    | 0 -> 0
    | _ -> n * (n + 1)

let sum_of_squares (n : int) : int =
    List.fold_left (fun acc x -> acc + (square_Sum x)) 0 (List.init n (fun x -> x * 2))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer n and returns the sum of squares of first n even natural numbers. *)
