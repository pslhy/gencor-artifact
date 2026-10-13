
let rec count_reverse_pairs (test_list : string list) : int =
  let module SS = Set.Make (String) in
    match test_list with
    | [] ->
      0
    | h :: tl ->
      let reversable = SS.of_list (List.map String.sub (List.rev tl), (String.length h)) in
      SS.cardinal (SS.diff (List.map String.sub (List.rev test_list), (String.length h))) + count_reverse_pairs tl

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
