let rec get_equal (input : int list list) : bool =
  if List.length input <= 1 then
    true
  else
    let first_length = List.length (List.hd input) in
    let rec check_equal rest =
      match rest with
        | [] -> true
        | head::tail ->
            if List.length head = first_length then check_equal tail
            else false
    in check_equal (List.tl input) 
   


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
