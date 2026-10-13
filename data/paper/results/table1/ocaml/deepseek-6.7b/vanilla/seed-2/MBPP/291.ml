let rec count_no_of_ways (n : int) (k : int) : int =
  if n = 0 then 1
  else if n < 0 then 0
  else
    let rec helper (i : int) (ways : int list) : int =
      if i = n then List.hd ways
      else helper i.((i + 1) % 2) [(k - 1) * (ways.[0] + ways.[1]) % 1000000007; ways.[i % 2]]
    in
    helper 0 [1; k]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
