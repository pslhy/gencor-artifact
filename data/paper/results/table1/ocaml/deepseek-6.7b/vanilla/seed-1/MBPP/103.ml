let rec eulerian_num (n : int) (m : int) : int =
  match m with
  | 0 -> 1
  | _ when n < 0 || m < 0 -> 0
  | _ -> eulerian_num (n - 1) m + eulerian_num n (m - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
