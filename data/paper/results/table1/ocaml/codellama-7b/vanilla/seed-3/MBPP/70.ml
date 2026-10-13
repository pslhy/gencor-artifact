let rec get_equal (input : int list list) : bool =
  if List.length input > 1 then
    let len = List.length (List.hd input) in
    List.iter (fun l -> if List.length l <> len then raise (Failure "Not all lists have equal length") ) input
  else
    true


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
