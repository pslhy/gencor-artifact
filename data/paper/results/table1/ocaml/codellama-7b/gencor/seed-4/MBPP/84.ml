
let rec sequence (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        let a = sequence (n - 1) in
        let b = sequence (n - 2) in
        a + b + 1

let nth_number (n : int) : int =
    if n <= 0 then
        failwith "n must be positive"
    else
        sequence n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
