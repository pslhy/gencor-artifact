let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  match n with
  | 0 -> float_of_int(max (List.hd arr1) (List.hd arr2))
  | 1 -> float_of_int((List.nth arr1 0) + (List.nth arr2 0)) /. 2.
  | _ ->
     let half_n = n / 2 in
     if (List.nth arr1 half_n) < (List.nth arr2 half_n) then
       get_median (List.tl arr1) arr2 (n / 2)
     else
       get_median arr1 (List.tl arr2) (n / 2)

let find_median_sorted_arrays (arr1 : int list) (arr2 : int list) : float =
  let len = List.length arr1 in
  if (len mod 2) = 0 then
    (get_median arr1 arr2 (len / 2) +. get_median arr1 arr2 (len / 2 - 1)) /. 2.
  else
    get_median arr1 arr2 len


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
