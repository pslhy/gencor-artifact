let rec index_minimum (test_list :  (string * int) list) : string =
  match test_list with
  | [] -> failwith "Empty list"
  | [(head, _)] -> head
  | (head, head_value) :: tail ->
     let tail_min = index_minimum tail in
     if head_value < (snd (List.assoc tail_min tail)) then head else tail_min


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
