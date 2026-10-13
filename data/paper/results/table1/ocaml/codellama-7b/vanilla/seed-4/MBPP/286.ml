let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if k = 0 then
    0
  else
    let rec loop (i : int) (cur_max : int) (cur_sum : int) : int =
      if i = n then
        cur_max
      else
        let next_max = if cur_sum >= 0 then cur_max else cur_sum in
        let next_sum = cur_sum + a.(i) in
        loop (i + 1) next_max next_sum
      in
    loop 0 0 0

let rec max_sub_array_sum (a : int list) (n : int) : int =
  if n = 0 then
    0
  else
    max (a.(0)) (max_sub_array_sum (List.tl a) (n - 1))

let recursive_max_sub_array_sum (a : int list) (k : int) : int =
  max_sub_array_sum_repeated a (List.length a) k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
