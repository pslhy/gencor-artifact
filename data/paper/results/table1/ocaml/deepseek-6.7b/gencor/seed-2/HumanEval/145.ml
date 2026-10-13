
let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    abs n
    |> string_of_int
    |> String.to_seq
    |> Seq.map (String.get "0123456789")
    |> Seq.map (fun c -> int_of_char c)
    |> Seq.fold_left (+) 0 in
  nums
  |> List.sort_uniq Stdlib.compare (* sort_uniq Stdlib.compare makes sure the elements in the list are unique *)
  |> List.sort_uniq Stdlib.compare (fun a b -> compare (sum_digits a) (sum_digits b)) (* sort the list first based on the sum of their digits, and then based on their index in original list *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
