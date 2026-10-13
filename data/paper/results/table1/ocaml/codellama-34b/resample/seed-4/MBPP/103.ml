(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
let rec eulerian_num (n : int) (m : int) : int =
    if n <= 0 && m <= 0 then
        1
    else if n <= 0 then
        eulerian_num 1 (m-1)
    else if m <= 0 then
        eulerian_num (n-1) 1
    else
        eulerian_num (n-1) (m-1) + eulerian_num n (m-1)

