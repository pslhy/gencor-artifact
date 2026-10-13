(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
let rec catalan_number (num : int) : int = 
    if(num < 2) then 1
    else let rec loop (i : int) (res : int) : int = 
         if(i < 2) then res
         else let res' = res * (4 * i - 2) / (i + 1) in
         loop (i + 1) res' in
    loop 2 1

