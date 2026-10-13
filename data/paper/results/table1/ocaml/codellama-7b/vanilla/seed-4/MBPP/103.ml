let rec eulerian_num (n : int) (m : int) : int = 
    (* base case: n = 1 and m = 1 *)
    if (n = 1 && m = 1) then 1 
    (* base case: n = 1 or m = 1 *)
    else if (n = 1 || m = 1) then 0 
    (* recursive case *)
    else eulerian_num (n-1, m-1) mod (n-1) * eulerian_num (n-1, m-1) mod m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
