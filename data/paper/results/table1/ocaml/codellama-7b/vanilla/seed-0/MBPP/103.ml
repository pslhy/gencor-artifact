let rec eulerian_num (n : int) (m : int) : int =
  if n = 0 then 1
  else if m = 0 then 0
  else
    let rec sum_n (i : int) : int =
      if i = 1 then 1
      else
        let rec sum_m (j : int) : int =
          if j = 1 then 1
          else sum_m (j - 1) + sum_n (i - j)
        in
        sum_m m
    in
    sum_n n

let rec a (n : int) (m : int) : int =
  if n = 0 || m = 0 then 1
  else a (n - 1) (m - 1) + a (n - 1) m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the Eulerian number a(n, m). *)
