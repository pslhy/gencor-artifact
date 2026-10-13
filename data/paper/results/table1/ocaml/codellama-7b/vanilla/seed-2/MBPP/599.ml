let rec sum_average (number : int) :  int * float =
    match number with
    | 0 -> (0, 0.)
    | n ->
        let sum, average = sum_average (n - 1) in
        (sum + n, (sum + n) / (float_of_int n))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
