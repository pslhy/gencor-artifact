let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if n = 0 || k = 0 then
    0
  else
    let rec repeat n = function
      | []    -> []
      | h::t  -> h :: repeat n (t @ (a @ [h]))
    in
    let rec sum_subarray (i : int) (j : int) (l : int list) : int =
      match l with
      | [] -> 0
      | h :: t ->
        if i = j then
          h
        else
          h + sum_subarray (i + 1) j t
    in
    let rec max_subarray (i : int) (j : int) (l : int list) : int =
      if j = List.length l then
        sum_subarray i j l
      else
        max (sum_subarray i j l) (max_subarray i (j + 1) l)
    in
    max_subarray 0 (List.length a) (repeat k a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
