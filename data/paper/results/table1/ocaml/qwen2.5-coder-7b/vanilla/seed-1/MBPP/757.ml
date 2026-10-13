let rec count_reverse_pairs (test_list : string list) : int = 
  let rec check_pairs acc = function
    | [] -> acc
    | h::t ->
        let reversed = String.rev h in
        let count = if List.mem reversed t then acc + 1 else acc in
        check_pairs count t
  in check_pairs 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
