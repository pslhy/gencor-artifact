let rec is_sublist (l : int list) (s : int list) : bool =
  match l, s with
  | [], _ -> false
  | hd :: tl, [] -> true
  | hd :: tl, hds :: hdt :: tl ->
      hd = hds && is_sublist tl hdt
      || is_sublist tl hds
   
 let main =
   let ll = [1; 2; 3; 4; 5] in
   let sl = [3; 4] in
   Printf.printf "%b\n" (is_sublist ll sl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
