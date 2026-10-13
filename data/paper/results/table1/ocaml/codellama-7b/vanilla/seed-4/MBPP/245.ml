let rec max_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | [x] -> x
  | _ ->
      let rec max_sum_bitonic (arr : int list) (i : int) (j : int) : int =
        match j - i with
        | 0 -> arr.(i)
        | 1 -> max arr.(i) (arr.(i) + arr.(j))
        | _ ->
            let sum_inc = max_sum_bitonic arr i (i + (j - i) / 2) in
            let sum_dec = max_sum_bitonic arr (i + (j - i) / 2) j in
            max sum_inc sum_dec
      in
      max_sum_bitonic arr 0 (List.length arr - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
