let rec get_pairs_count (arr : int list) (sum : int) : int =
  if List.length arr = 0 then
    0
  else if List.hd arr + List.nth arr ((List.length arr) - 1) >= sum then
    get_pairs_count (List.tl arr) sum
  else if List.hd arr + List.nth arr ((List.length arr) - 1) < sum then
    get_pairs_count (List.tl arr) sum + get_pairs_count (List.tl arr) ((sum - List.hd arr) - 1)
  else
    raise (Failure "Error: sum not found!")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
