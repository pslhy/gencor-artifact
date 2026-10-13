(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
let rec sum_average (number : int) :  int * float =
    let average = 1.0 in
    let sum = 1 in
    if number = 0 then
        (sum, average)
    else
        let (new_sum, new_avg) = sum_average (number - 1) in
        (sum + new_sum, average +. new_avg)

