let rec count_no_of_ways (n : int) (k : int) : int = 
  if n = 0 then 0
  else if n = 1 then k
  else let same = k in
       let diff = k * (k - 1) in
       let total = same + diff in
       let rec helper (prev_diff : int) (acc : int) (remaining : int) : int =
         if remaining = 1 then acc + diff
         else let new_same = diff in
              let new_diff = total * (k - 1) in
              helper new_diff (acc + new_same) (remaining - 1)
       in helper diff 0 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
