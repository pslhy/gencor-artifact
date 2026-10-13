let rec max_sub_array_sum (a : int list) (size : int) : int =
  if size = 0 then
    0
  else if List.length a < size then
    max_sub_array_sum a (size - 1)
  else
    max (List.fold_left ( + ) 0 (List.take size a))
        (max_sub_array_sum (List.drop 1 a) size)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
