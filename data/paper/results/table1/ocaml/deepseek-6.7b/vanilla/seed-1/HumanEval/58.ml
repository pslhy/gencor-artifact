let rec common (l1 : int list) (l2 : int list) : int list =
  match l1, l2 with
  | [], _ -> []
  | (x :: xs), _ -> if List.mem x l2 then  x :: common xs (List.filter ((<>) x) l2) else common xs l2
  (* (List.filter ((<>) x) l2) excludes the first occurrence of x in l2 *)

let rec sort_and_remove_duplicates (l : int list) : int list =
  match l with
  | [] -> []
  | (x :: xs) -> if List.mem x xs then sort_and_remove_duplicates xs else x :: sort_and_remove_duplicates xs

let unique_common l1 l2 = sort_and_remove_duplicates (common l1 l2)

let l1 = [1; 4; 3; 34; 653; 2; 5]
let l2 = [5; 7; 1; 5; 9; 653; 121]

let test1 = unique_common l1 l2
(* Output: [1; 5; 653] *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique common elements for two lists. *)
(*     >>> common [1; 4; 3; 34; 653; 2; 5] [5; 7; 1; 5; 9; 653; 121] *)
(*     [1; 5; 653] *)
(*     >>> common [5; 3; 2; 8] [3; 2] *)
(*     [2; 3] *)
