let rec swap_List (newList : int list) : int list =
  match newList with
  | [] -> []
  | h :: t ->
    match t with
    | h2 :: t2 ->
      begin
        let first = h in
        let last = List.nth t2 (List.length t2 - 1) in
        first :: List.nth t2 (List.length t2 - 1) :: List.rev(List.tl newList ))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
