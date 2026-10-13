let rec odd_length_sum (arr : int list) : int =
match arr with
| [] -> 0
| _ -> (List.nth arr (List.length arr - 1)) + odd_length_sum (List.drop (arr) (List.length arr - 1))
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
