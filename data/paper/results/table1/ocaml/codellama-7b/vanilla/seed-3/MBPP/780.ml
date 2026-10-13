let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
  if List.length test_list = 0 then
    []
  else
    match test_list with
      | h :: t ->
          let comb_list1 = find_combinations (List.filter (fun x -> fst x <= fst h) t) in
          let comb_list2 = find_combinations (List.filter (fun x -> fst x = 0) t) in
          (h, snd h) :: (comb_list1 @ comb_list2)
      | [] -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
