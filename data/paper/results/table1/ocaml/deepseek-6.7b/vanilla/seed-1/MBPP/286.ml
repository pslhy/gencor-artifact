let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let rec k_times_list (xs : int list) (n : int) : int list =
    if n <= 0 then [] else xs @ (k_times_list xs (n - 1)) in
  let k_times_a = k_times_list a k in
  let n = List.length k_times_a in
  let rec max_crossing_sum (xs : int list) (mid : int) (low : int) (high : int) : int =
    let rec aux (l_sum : int) (r_sum : int) (cross_sum : int) (i : int) : int =
      if i < 0 then cross_sum else
      let cross_sum' = l_sum + r_sum in
      if cross_sum' > cross_sum then aux l_sum (r_sum + xs.(i)) cross_sum' (i - 1)
      else cross_sum in
    let (l_sum, r_sum) =
      let rec loop (l_sum : int) (r_sum : int) (i : int) (j : int) : (int * int) =
        if i > mid || j < mid then (l_sum, r_sum)
        else loop (l_sum + xs.(i)) (r_sum + xs.(j)) (i - 1) (j + 1)
      in loop 0 0 (mid - 1) (mid + 1) in
    aux (l_sum + xs.(mid)) (r_sum + xs.(mid)) (l_sum + r_sum) ((min mid (n - mid - 1)) - 1) in
  let rec max_sub_array_sum (xs : int list) (low : int) (high : int) : int =
    if low == high then xs.(low) else
    let mid = (low + high) / 2 in
    max (max_sub_array_sum xs low mid) (max_sub_array_sum xs (mid + 1) high) in
  max_sub_array_sum (max_crossing_sum k_times_a n n) 0 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
