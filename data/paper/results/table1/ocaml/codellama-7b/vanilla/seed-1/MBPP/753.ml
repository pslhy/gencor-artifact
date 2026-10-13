let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
match k, test_list with
  | 0, x -> []
  | _, [] -> []
  | _, (hd :: tl) :: rest ->
    let min_tl = min_k tl (k - 1) in
    if Sys.compare (snd hd) (snd min_tl) = -1 then hd :: min_tl else min_tl
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
