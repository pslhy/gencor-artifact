let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | _ when n = 0 -> l
  | _ ->
      let first_part = List.take (n-1) l in
      let last_part = List.drop (n-1) l in
      first_part @ last_part

let l = [1;2;3;4;5;6;7;8;9];;
split_Arr l 3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
