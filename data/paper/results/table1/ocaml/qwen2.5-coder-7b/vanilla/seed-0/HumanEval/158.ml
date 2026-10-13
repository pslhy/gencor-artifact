let rec find_max (words : string list) : string = 
  let max_unique word1 word2 = 
    let unique1 = Set.(of_list (to_seq (filter_out (fun c -> contains word1 c) word2))) in
    let unique2 = Set.(of_list (to_seq (filter_out (fun c -> contains word2 c) word1))) in
    (Set.cardinal unique1 >= Set.cardinal unique2) &&
    (Set.cardinal unique1 = Set.cardinal unique2 || compare word1 word2 <= 0) in
  List.fold_left max_unique (fun _ x -> x) words


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
