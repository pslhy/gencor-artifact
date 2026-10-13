
let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | h::t -> (List.rev (List.tl (List.rev (List.split (List.rev t) n))) ) @ [h]
;;

let rec rotate (l : 'a list) (n : int) : 'a list =
  if n = 0 then l
  else (rotate (List.tl l @ [List.hd l]) (n - 1))
;;

let rec split_and_rotate (l : 'a list) (n : int) : 'a list =
  if n < List.length l then rotate (split_Arr l n) n
  else raise (Invalid_argument "n must be less than the length of the list")
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
