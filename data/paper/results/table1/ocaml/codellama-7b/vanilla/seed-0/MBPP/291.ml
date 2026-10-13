let rec count_no_of_ways (n : int) (k : int) : int =
  if n = 0 then 1
  else if k = 0 then 0
  else
    let rec count_ways (i : int) (j : int) (l : int) (k : int) : int =
      if l > k then 0
      else if i = n then if l = k then 1 else 0
      else if j = i then count_ways i (j + 1) l k
      else count_ways i (j + 1) l k + count_ways i (j + 1) (l + 1) k
    in
    count_ways 0 1 0 k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
