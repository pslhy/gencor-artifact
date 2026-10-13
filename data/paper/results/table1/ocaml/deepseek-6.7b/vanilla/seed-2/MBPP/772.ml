let rec remove_length (test_str : string) (k : int) : string =
  let rec helper (test_str : string) (k : int) (start : int) (results : string list) : string =
    if start >= String.length test_str then
      String.concat " " (List.rev results)
    else
      let len = String.length test_str - start in
      if len > k then
        helper test_str k (start + k) (String.sub test_str start k :: results)
      else if len = k then
        helper test_str k (start + k) results
      else
        helper test_str k (start + len) (String.sub test_str start len :: results)
  in
  helper test_str k 0 []
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
