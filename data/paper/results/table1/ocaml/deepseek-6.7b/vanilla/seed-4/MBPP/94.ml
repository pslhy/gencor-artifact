let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
  | [] -> ""
  | (hd, _) :: tl ->
      let (min_string, min_value) = List.hd (List.sort (fun x y -> (snd x) - (snd y)) test_list) in
      min_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
