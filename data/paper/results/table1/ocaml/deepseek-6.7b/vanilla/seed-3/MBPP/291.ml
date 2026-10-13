let rec count_no_of_ways (n : int) (k : int) : int =
  if n <= 1 then k
  else if n == 2 then k * k
  else
    let res = k * (count_no_of_ways (n - 1) k + count_no_of_ways (n - 2) k) in
    res

(* This approach uses dynamic programming approach, 
where each post i is painted in k ways.
So, to calculate for post `i`, we simply take the product of 
previous ways for post i-1 and  ways for post i-2 because they are adjacent. 
In other words, for post `i`, we can choose to paint it in k ways.
Then on post `i-1`, we could have painted the `i-2` post in `k` ways too,
or we could have left the `i-1` post to be painted in the `k` ways of post `i-2`. 
So, the total ways for post `i` would be `k * [ways of painting i-1 + ways of painting using i-2]` *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
