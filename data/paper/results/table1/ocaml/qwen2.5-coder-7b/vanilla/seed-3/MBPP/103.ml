let rec eulerian_num (n : int) (m : int) : int = match (n, m) with
  | (0, 0) -> 1
  | (n, 0) | (n, n) -> 0
  | (n, m) -> (n - m) * eulerian_num (n - 1) (m - 1) + (m + 1) * eulerian_num (n - 1) m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
