let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let rec aux (acc : int list) (i : int) : int * int =
    match acc with
    | [] -> (0, 0)
    | h :: t ->
      if i = n then
        (h, i)
      else
        let (sum, len) = aux t (i + 1)
        let sum' = sum + h
        if sum' > h then
          (sum', len + 1)
        else
          (sum', len)
  in
  let (max_sum, max_len) = aux a 0
  max_sum * k, max_len * k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
