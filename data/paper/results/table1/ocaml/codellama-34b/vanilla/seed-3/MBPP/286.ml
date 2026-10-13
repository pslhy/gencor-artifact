let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if n = 1 then max_sub_array_sum a
  else
    let cur_sum = max_sub_array_sum a in
    let rec loop index =
      if index < k then
        let new_sum = max_sub_array_sum (a @ a) in
        if new_sum > cur_sum then loop (index + 1)
        else index
      else index
    in
    loop 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
