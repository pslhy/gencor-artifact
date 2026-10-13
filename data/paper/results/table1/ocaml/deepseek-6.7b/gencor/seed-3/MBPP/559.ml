
let rec max_sub_array_sum (a : int list) (size : int) : int =
  match size with
    | 0 -> if List.hd a > 0 then List.hd a else 0
    | _ -> max (max_sub_array_sum a (size - 1)) (List.fold_left (+) 0 (List.rev (List.rev_append (List.rev (List.rev (List.tl (List.rev (List.rev_append (List.rev (List.rev_append (List.rev (List.tl a)) (List.hd a))))))) (List.rev (List.tl a))))))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
