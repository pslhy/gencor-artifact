let rec bell_number (n : int) : int =
    if n = 0 then 1
    else if n = 1 then 1
    else bell_number (n - 1) + bell_number (n - 2)

let partition_count (n : int) : int =
    let rec aux (n : int) (k : int) : int =
        if k = 0 then 1
        else if n < 0 then 0
        else if k = 1 then 1
        else aux (n - k) (k - 1) + aux (n - k) k
    in aux n (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
