let rec find_Max_Num (arr : int list) : int =
  let rec rank arr cur maxi =
    match arr with
    | [] -> cur
    | h::t -> if (h > maxi) then rank t (cur*10+h) h else rank t (cur*10+h) maxi
  in
  let max_val = List.fold_left (fun a b -> if a<b then b else a) (List.hd arr) arr in
  rank arr 0 max_val;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
