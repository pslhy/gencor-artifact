let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t ->
    let sublist_sum = odd_length_sum t in
    if List.length t mod 2 = 0 then
      sublist_sum
    else
      h + sublist_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
