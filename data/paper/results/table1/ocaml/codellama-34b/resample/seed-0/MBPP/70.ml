(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
let rec get_equal (input : int list list) : bool =
  match input with
  | [] -> true
  | hd :: tl ->
      let length = List.length hd in
      if tl |> List.fold_left (fun acc x -> acc && (List.length x = length)) true then
        get_equal tl
      else
        false

