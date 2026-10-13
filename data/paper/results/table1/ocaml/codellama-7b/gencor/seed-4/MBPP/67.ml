
let rec bell_number (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        bell_number (n - 1) + bell_number (n - 2)

let rec partition_ways (n : int) : int = 
    if n = 1 then
        1
    else if n = 2 then
        2
    else
        partition_ways (n - 1) * partition_ways (n - 2)

let main _ =
    partition_ways 10

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
