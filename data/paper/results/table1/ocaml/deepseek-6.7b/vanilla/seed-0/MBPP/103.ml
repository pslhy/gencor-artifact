let rec eulerian_num (n : int) (m : int) : int =
    if m = 0 || n = m then
        1
    else if m > n then
        0
    else
        eulerian_num (n - 1) m + eulerian_num (n - 1) (m - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
