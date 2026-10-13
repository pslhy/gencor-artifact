
let rec count_reverse_pairs (test_list : string list) : int = 
  let rec check_pairs acc = function
    | [] -> acc
    | h::t ->
        let reversed = String.concat "" (List.rev (String.exists h)) in
        if List.mem reversed t then check_pairs (acc + 1) t else check_pairs acc t
  in
  check_pairs 0 test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
