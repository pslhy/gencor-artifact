let rec eulerian_num (n : int) (m : int) : int =
  match m, n with
  | 0, _ -> 1
  | _, 0 -> 0
  | _ , _ -> (eulerian_num (n - 1) m) + (eulerian_num (n - 1) (m - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
