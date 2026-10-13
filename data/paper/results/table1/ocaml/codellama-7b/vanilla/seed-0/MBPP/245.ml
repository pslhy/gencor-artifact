let rec max_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: [] -> h
  | h :: t ->
    let rec find_bitonic_subsequence (arr : int list) (prefix_sum : int) (suffix_sum : int) : int * int * int =
      match arr with
      | [] -> (prefix_sum, t, suffix_sum)
      | h :: [] -> (prefix_sum, t, suffix_sum)
      | h :: t ->
        let (prefix_sum_t, prefix_sum_t_tail, suffix_sum_t) = find_bitonic_subsequence t (prefix_sum + h) (suffix_sum + h) in
        if prefix_sum_t > prefix_sum then (prefix_sum_t, prefix_sum_t_tail, suffix_sum_t)
        else (prefix_sum, t, suffix_sum)
    in
    let (pref_sum, _, suff_sum) = find_bitonic_subsequence t 0 0 in
    max pref_sum suff_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
